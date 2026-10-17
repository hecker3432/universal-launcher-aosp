local WatchSkin = class("WatchSkin", cc.load("mvc").ViewBase)
local path = cc.exports.SDpath .. "/WatchTmp/"
local pathZIP = cc.exports.SDpath .. "/ClockSkin/"
cc.FileUtils:getInstance():addSearchPath(pathZIP)
local skinZIP
require "app.views.WatchSkinUtils"
local WatchSkinTextAnim = require "app.views.WatchSkinTextAnim"
require 'socket'
utf8 = require 'utf8'

local TTFSIZE = 40
local oldday = os.date("%w")
local oldday = os.date("%w")
local olddisplay=0
local previousAbright=false  -- Track previous bright state for restart_on_bright
local calendar = os.date("*t")
local oldsecond = calendar.sec
local oldminute = calendar.min
local oldhour = os.date("%I") + 0
local funcschedule = {}
local counterschedule = {}
local luaj = require "cocos.cocos2d.luaj"
local xmlParser = require "app.views.XmlParser"
drawable = {}  -- Make global so restartAllTextAnimations() can access it
local myscale = 1
local isSWstarted = false
local istartTime = 0
local istopTime = 0
local script
local lastDrawTime=os.time()
local lastFrameTime=0  -- Track frame time for delta time calculation
local isAccel=false
local accelLayer=nil
-- Gyroscope values (rate of change - angular velocity in degrees/frame)
sgx = 0
sgy = 0
sgz = 0
-- Internal smoothing values (before swap/negate)
local smooth_pitch = 0
local smooth_roll = 0
-- Previous rotation angles for calculating rate of change
local prev_roll = 0
local prev_pitch = 0
-- Accelerometer raw values (m/s²)
sax = 0
say = 0
saz = 0
local beenTouched=0
local _backToForegroundListener
local c_elapsed_start=0
local colBackground=cc.c4f(0,0,0,1.0)
local custom_light=false

-- ============================================================================
-- UNIFIED OFFSET CALCULATION SYSTEM
-- ============================================================================
-- These functions centralize all fullscreen mode offset calculations.
-- ============================================================================

-- Calculate the X offset for fullscreen mode 0 (FIXED_HEIGHT - vertical displays, FIXED)
-- This is the FIXED version without the /2 bug - content is perfectly centered
local function getFullscreenMode0_XOffset()
    return round(256*(display.sizeInPixels.width/display.sizeInPixels.height)-256)+1
end

-- Calculate the Y offset for fullscreen mode 2 (FIXED_WIDTH - horizontal displays, CENTERED)
-- This centers the content vertically instead of aligning to top
local function getFullscreenMode2_YOffset()
    return round((512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)/2)+1
end

-- Calculate the X offset for fullscreen mode 3 (FIXED_HEIGHT - vertical displays, COMPATIBILITY)
-- This is the OLD buggy version with /2 for backward compatibility with existing watch faces
local function getFullscreenMode3_XOffset()
    return round(256*(display.sizeInPixels.width/display.sizeInPixels.height)-256)/2+1
end

-- Calculate the Y offset for fullscreen mode 4 (FIXED_WIDTH - horizontal displays, COMPATIBILITY)
-- This aligns to the top like the old mode 2 behavior
local function getFullscreenMode4_YOffset()
    return round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)+1
end

-- Calculate the 3D scale factor based on fullscreen mode
-- Used to scale 3D objects and their positions to match 2D scene scaling
local function get3DScaleFactor()
    if (cc.exports.fullscreen == 2 or cc.exports.fullscreen == 4) then
        return display.sizeInPixels.width/display.sizeInPixels.height
    else
        return 1
    end
end

-- Calculate adjusted 3D X position with fullscreen offset compensation
-- For fullscreen modes 0 and 3, 3D objects need to compensate for scene offset
-- tempX: original X coordinate from watch face definition
-- scale3d: scaling factor for 3D objects
local function get3D_X_Position(tempX, scale3d)
    local baseX = (tempX * scale3d) + (512 * (1-scale3d)/2)

    -- Apply fullscreen mode 0 offset correction for 3D objects
    -- Mode 0: Fixed version - NO compensation needed
    -- 3D objects already align correctly with centered 2D content
    -- if (cc.exports.fullscreen == 0) then
    --     baseX = baseX + getFullscreenMode0_XOffset()
    -- end

    -- Apply fullscreen mode 3 offset correction for 3D objects
    -- Mode 3: Compatibility version - has /2 bug like old mode 0
    if (cc.exports.fullscreen == 3) then
        baseX = baseX - getFullscreenMode3_XOffset()
    end

    return baseX
end

-- Calculate adjusted 3D Y position
-- temp.y: original Y coordinate from watch face definition
-- scale3d: scaling factor for 3D objects
--
-- NOTE: 2D elements after 3D (cameraMask > 2) must use the same transformation
-- to ensure proper alignment in modes 2 and 4
local function get3D_Y_Position(tempY, scale3d)
    if (cc.exports.fullscreen == 2) then
        return (tempY * scale3d) + (512 * (1-scale3d)) - (getFullscreenMode2_YOffset() / 2 )
    else
        return (tempY * scale3d) + (512 * (1-scale3d))
    end
end

-- Calculate adjusted 2D X position with fullscreen offset compensation
-- For fullscreen modes 0 and 3, 2D elements that come AFTER 3D objects need special handling
-- tempX: calculated X coordinate (already processed from XML)
-- element: the drawable element with cameraMask information
local function get2D_X_Position(tempX, element)
    -- Elements that come after 3D objects have a different camera (depth > 1)
    -- These elements don't inherit the scene offset properly, so we need to compensate
    -- The offset must be divided by displayscale because the scene scaling amplifies the offset
    if element and element.cameraMask and (element.cameraMask > 2) then
        local displayscale = cc.exports.displayscale or 1
        if (cc.exports.fullscreen == 0) then
            -- Mode 0: Fixed centered version
            return tempX + (getFullscreenMode0_XOffset() / displayscale)
        elseif (cc.exports.fullscreen == 3) then
            -- Mode 3: Compatibility version (old buggy mode 0)
            return tempX + (getFullscreenMode3_XOffset() / displayscale)
        end
    end
    return tempX
end

-- Calculate adjusted 2D Y position with fullscreen offset compensation
-- For fullscreen modes 2 and 4, 2D elements that come AFTER 3D objects need special handling
-- tempY: calculated Y coordinate (already processed from XML)
-- element: the drawable element with cameraMask information
local function get2D_Y_Position(tempY, element)
    -- Elements that come after 3D objects have a different camera (depth > 1)
    -- These elements don't inherit the scene offset properly, so we need to compensate
    -- The offset must be divided by displayscale because the scene scaling amplifies the offset
    if element and element.cameraMask and (element.cameraMask > 2) then
        local displayscale = cc.exports.displayscale or 1
        if (cc.exports.fullscreen == 2) then
            -- Mode 2: Centered version
            return tempY + (getFullscreenMode2_YOffset() / displayscale)
        elseif (cc.exports.fullscreen == 4) then
            -- Mode 4: Compatibility version (top-aligned)
            return tempY + (getFullscreenMode4_YOffset() / displayscale)
        end
    end
    return tempY
end

-- ============================================================================
-- END UNIFIED OFFSET CALCULATION SYSTEM
-- ============================================================================

-- ============================================================================
-- SQUARIFY HELPER FUNCTION
-- ============================================================================
-- Adjusts radius based on angle to transform circular positioning into square
-- squarify = 100 means fully square, squarify = 0 means fully circular
-- ============================================================================
local function getSquarifyRadius(radius, angle, squarify)
    if not squarify or squarify == 0 then
        return radius
    end
    local squarify_factor = squarify / 100
    local cos_a = math.abs(math.cos(angle))
    local sin_a = math.abs(math.sin(angle))
    local max_cs = math.max(cos_a, sin_a)
    if max_cs < 0.0001 then max_cs = 0.0001 end  -- Avoid division by zero
    local scale = 1 / max_cs
    return radius * ((1 - squarify_factor) + squarify_factor * scale)
end

function WatchSkin:onExit()
    print("WatchSkin:onExit - cleaning up scene")

    -- Stop the update loop to prevent crashes during scene destruction
    if self.updateLayer then
        pcall(function()
            self.updateLayer:unscheduleUpdate()
            print("Update loop stopped cleanly")
        end)
        self.updateLayer = nil
    end

    -- Clear all schedules to prevent callbacks on destroyed objects
    pcall(function()
        funcschedule = {}
        counterschedule = {}
        print("Cleared funcschedule and counterschedule")
    end)

    -- Disable compass sensor if enabled
    if self.isCompass then
        pcall(function()
            local className = "org/cocos2dx/lib/Cocos2dxHelper"
            luaj.callStaticMethod(className, "disableCompass", nil, "()V")
            print("Compass sensor disabled")
        end)
    end

    print("WatchSkin:onExit complete")
end

function WatchSkin:onEnter()
    print("WatchSkin:onEnter", self.isAccel)
    if self.onCreate then self:onCreate() end

    -- Clear reload flag and check for pending reload
    if cc.exports.isReloading then
        print("WatchSkin loaded, clearing reload flag")
        cc.exports.isReloading = false

        -- Check if there's a pending reload request
        if cc.exports.pendingReload then
            print("Pending reload detected, scheduling delayed reload")
            cc.exports.pendingReload = false

            -- Schedule reload after 0.5 seconds to ensure current scene is fully loaded
            local function performPendingReload()
                print("Executing pending reload")
                cc.exports.__G__FORCERELOAD__("")
            end
            performWithDelay(self, performPendingReload, 0.5)
        end
    end
end

function WatchSkin:forceReload()
    print("WatchSkin:forceReload - forcing watch face reload")
    -- This method forces a complete reload by calling myApp:run()
    -- This is exactly what happens when switching watch faces via __G__SETSKIN__
    -- It recreates the entire scene with proper initialization

    if cc.exports.myApp and cc.exports.skin then
        cc.exports.myApp:run("WatchSkin", cc.exports.skin)
    else
        print("WatchSkin:forceReload - ERROR: myApp or skin not available")
    end
end

function WatchSkin:addShader(node, temp)
 --   if true then return end
    print ("mali creating shader:" .. temp.shader)
    local vertex = "shaders/vertex.vsh"
    if temp.type == "text" then vertex = "shaders/vertex_label.vsh" end
    local program = cc.GLProgram:create(vertex, "shaders/" .. temp.shader .. ".fsh")
    local state=cc.GLProgramState:create(program)
 --   print ("mali", program:getVertexShaderLog())
    print ("mali", program:getFragmentShaderLog())
    program:link()
  --  program:setUniformsForBuiltins()
    program:retain()
    node.shader=temp.shader
    node:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA , gl.ONE_MINUS_SRC_ALPHA))
    program:updateUniforms()
    --node:setGLProgram(program)
    node:setGLProgramState(state)
    -- Always get uniform locations so they can be updated later when values become available
    node.u_opacity = gl.getUniformLocation( program:getProgram(), "u_opacity")
    node.u_1 = gl.getUniformLocation( program:getProgram(), "u_1")
    node.u_2 = gl.getUniformLocation( program:getProgram(), "u_2")
    node.u_3 = gl.getUniformLocation( program:getProgram(), "u_3")
    node.u_4 = gl.getUniformLocation( program:getProgram(), "u_4")
    node.u_5 = gl.getUniformLocation( program:getProgram(), "u_5")
    node.u_6 = gl.getUniformLocation( program:getProgram(), "u_6")
    node.u_7 = gl.getUniformLocation( program:getProgram(), "u_7")
    node.u_8 = gl.getUniformLocation( program:getProgram(), "u_8")
    node.u_9 = gl.getUniformLocation( program:getProgram(), "u_9")
    node.u_color = gl.getUniformLocation( program:getProgram(), "u_color")
    program:use()

    if _backToForegroundListener == nil then
        _backToForegroundListener = cc.EventListenerCustom:create("event_renderer_recreated", function (eventCustom)
            print("_backToForegroundListener called")
            for k, v in pairs(drawable) do
                if v.shader and v.drawable then
                    node = v.drawable
                    node.shader=v.shader
                    local vertex = "shaders/vertex.vsh"
                    if v.type == "text" then vertex = "shaders/vertex_label.vsh" end
                    print("_backToForegroundListener reloading " .. v.shader)
                    local state = node:getGLProgramState()
                    local glProgram = state:getGLProgram()
                    --local glProgram = cc.GLProgram:create("shaders/vertex.vsh", "shaders/" .. temp.shader .. ".fsh")   --state:getGLProgram()
                    --state:setGLProgram(glProgram)
                    glProgram:reset()
                    glProgram:initWithFilenames(vertex, "shaders/" .. v.shader .. ".fsh")
                    glProgram:link()
                    --glProgram:setUniformsForBuiltins()
                    -- Restore uniform locations based on whether they were previously set on the node
                    if (node.u_opacity) then node.u_opacity = gl.getUniformLocation( glProgram:getProgram(), "u_opacity") end
                    if (node.u_1) then node.u_1 = gl.getUniformLocation( glProgram:getProgram(), "u_1") end
                    if (node.u_2) then node.u_2 = gl.getUniformLocation( glProgram:getProgram(), "u_2") end
                    if (node.u_3) then node.u_3 = gl.getUniformLocation( glProgram:getProgram(), "u_3") end
                    if (node.u_4) then node.u_4 = gl.getUniformLocation( glProgram:getProgram(), "u_4") end
                    if (node.u_5) then node.u_5 = gl.getUniformLocation( glProgram:getProgram(), "u_5") end
                    if (node.u_6) then node.u_6 = gl.getUniformLocation( glProgram:getProgram(), "u_6") end
                    if (node.u_7) then node.u_7 = gl.getUniformLocation( glProgram:getProgram(), "u_7") end
                    if (node.u_8) then node.u_8 = gl.getUniformLocation( glProgram:getProgram(), "u_8") end
                    if (node.u_9) then node.u_9 = gl.getUniformLocation( glProgram:getProgram(), "u_9") end
                    if (node.u_color) then node.u_color = gl.getUniformLocation( glProgram:getProgram(), "u_color") end
                    node:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA , gl.ONE_MINUS_SRC_ALPHA))
                    glProgram:updateUniforms()
                    glProgram:use()
                end
            end
            print("_backToForegroundListener reloading end " )
            --cc.Director:getInstance():startAnimation()
        end)
        cc.Director:getInstance():getEventDispatcher():addEventListenerWithFixedPriority(_backToForegroundListener, 1)
    end
end

function WatchSkin:updateShader(node, temp)
    --if true then return end
    if node.shader == nil then self:addShader(node, temp) end
    local program = node:getGLProgramState():getGLProgram()
    program:use()
    if (temp.opacity) then program:setUniformLocationF32(node.u_opacity, temp.opacity/100) end
    if temp.shader == "GradientRadial" then
        -- GradientRadial: u_1=colorA, u_2=colorB, u_3=color
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local hex = temp.u_1
            if type(hex) == "string" and #hex >= 6 then
                node.u_1_val = hex
                program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local hex = temp.u_2
            if type(hex) == "string" and #hex >= 6 then
                node.u_2_val = hex
                program:setUniformLocationF32(node.u_2, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local hex = temp.u_3
            if type(hex) == "string" and #hex >= 6 then
                node.u_3_val = hex
                program:setUniformLocationF32(node.u_3, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
    elseif temp.shader == "Ring" then
        -- Ring shader: u_1=color, u_2=color2, u_3=angle_total, u_4=angle, u_5=thickness, u_6=is_clockwise, u_7=outside_opacity, u_8=color3
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local hex = temp.u_1
            if type(hex) == "string" and #hex >= 6 then
                node.u_1_val = hex
                program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local hex = temp.u_2
            if type(hex) == "string" and #hex >= 6 then
                node.u_2_val = hex
                program:setUniformLocationF32(node.u_2, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local val = tonumber(temp.u_3) or temp.u_3
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, val)
        end
        if (node.u_4 and temp.u_4 and node.u_4_val ~= temp.u_4) then
            local val = tonumber(temp.u_4) or temp.u_4
            node.u_4_val = temp.u_4
            program:setUniformLocationF32(node.u_4, val)
        end
        if (node.u_5 and temp.u_5 and node.u_5_val ~= temp.u_5) then
            local val = tonumber(temp.u_5) or temp.u_5
            node.u_5_val = temp.u_5
            program:setUniformLocationF32(node.u_5, val)
        end
        if (node.u_6 and temp.u_6 and node.u_6_val ~= temp.u_6) then
            local val = tonumber(temp.u_6) or temp.u_6
            node.u_6_val = temp.u_6
            program:setUniformLocationF32(node.u_6, val)
        end
        if (node.u_7 and temp.u_7 and node.u_7_val ~= temp.u_7 and type(temp.u_7) == "number") then
            node.u_7_val = temp.u_7
            print("Ring shader: setting u_7 (outside_opacity) to " .. temp.u_7)
            program:setUniformLocationF32(node.u_7, temp.u_7)
        end
        if (node.u_8 and temp.u_8 and node.u_8_val ~= temp.u_8) then
            local hex = temp.u_8
            if type(hex) == "string" and #hex >= 6 then
                node.u_8_val = hex
                print("Ring shader: setting u_8 (color3) to " .. hex)
                program:setUniformLocationF32(node.u_8, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
    elseif temp.shader == "GradientLinear" then
        -- GradientLinear: u_1=colorA, u_2=colorB, u_3=angle(number), u_4=scale(number)
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local hex = temp.u_1
            if type(hex) == "string" and #hex >= 6 then
                node.u_1_val = hex
                program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local hex = temp.u_2
            if type(hex) == "string" and #hex >= 6 then
                node.u_2_val = hex
                program:setUniformLocationF32(node.u_2, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local val = tonumber(temp.u_3) or temp.u_3
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, val)
        end
        if (node.u_4 and temp.u_4 and node.u_4_val ~= temp.u_4) then
            local val = tonumber(temp.u_4) or temp.u_4
            node.u_4_val = temp.u_4
            program:setUniformLocationF32(node.u_4, val)
        end
    elseif temp.shader == "Segment" or temp.shader == "Radar" or temp.shader == "Progress" or temp.shader == "SegmentBetween" then
        -- Segment/Radar/Progress/SegmentBetween shaders: all parameters are numbers (not colors)
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local val = tonumber(temp.u_1) or temp.u_1
            node.u_1_val = temp.u_1
            program:setUniformLocationF32(node.u_1, val)
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local val = tonumber(temp.u_2) or temp.u_2
            node.u_2_val = temp.u_2
            program:setUniformLocationF32(node.u_2, val)
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local val = tonumber(temp.u_3) or temp.u_3
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, val)
        end
        if (node.u_4 and temp.u_4 and node.u_4_val ~= temp.u_4) then
            local val = tonumber(temp.u_4) or temp.u_4
            node.u_4_val = temp.u_4
            program:setUniformLocationF32(node.u_4, val)
        end
    elseif temp.shader == "ProgressBetween" then
        -- ProgressBetween shader: u_1=%from, u_2=%to, u_3=angle, u_4=opacity_in, u_5=opacity_out
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local val = tonumber(temp.u_1) or temp.u_1
            node.u_1_val = temp.u_1
            program:setUniformLocationF32(node.u_1, val)
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local val = tonumber(temp.u_2) or temp.u_2
            node.u_2_val = temp.u_2
            program:setUniformLocationF32(node.u_2, val)
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local val = tonumber(temp.u_3) or temp.u_3
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, val)
        end
        if (node.u_4 and temp.u_4 and node.u_4_val ~= temp.u_4) then
            local val = tonumber(temp.u_4) or temp.u_4
            node.u_4_val = temp.u_4
            program:setUniformLocationF32(node.u_4, val)
        end
        if (node.u_5 and temp.u_5 and node.u_5_val ~= temp.u_5) then
            local val = tonumber(temp.u_5) or temp.u_5
            node.u_5_val = temp.u_5
            program:setUniformLocationF32(node.u_5, val)
        end
    elseif temp.shader == "Glow" then
        --local hex = temp.u_1
        --program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local hex = temp.u_1
            if type(hex) == "string" and #hex >= 6 then
                node.u_1_val = hex
                program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then node.u_2_val = temp.u_2 program:setUniformLocationF32(node.u_2, temp.u_2/100) end
    elseif temp.shader == "Rounded" then
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local hex = temp.u_1
            if type(hex) == "string" and #hex >= 6 then
                node.u_1_val = hex
                program:setUniformLocationF32(node.u_1, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local hex = temp.u_2
            if type(hex) == "string" and #hex >= 6 then
                node.u_2_val = hex
                program:setUniformLocationF32(node.u_2, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_7 and temp.u_7 and node.u_7_val ~= temp.u_7) then
            local hex = temp.u_7
            if type(hex) == "string" and #hex >= 6 then
                node.u_7_val = hex
                program:setUniformLocationF32(node.u_7, tonumber("0x" .. hex:sub(1, 2))/255, tonumber("0x" .. hex:sub(3, 4))/255, tonumber("0x" .. hex:sub(5, 6))/255)
            end
        end
        if (node.u_3 and temp.u_3 and (node.u_3x_val ~= temp.u_3x or node.u_3y_val ~= temp.u_3y or node.u_3z_val ~= temp.u_3z)) then
            node.u_3x_val = temp.u_3x
            node.u_3y_val = temp.u_3y
            node.u_3z_val = temp.u_3z
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, temp.u_3x, temp.u_3y, temp.u_3z)
        end
        if (node.u_8 and temp.u_8 and node.u_8_val ~= temp.u_8) then node.u_8_val = temp.u_8 program:setUniformLocationF32(node.u_8, temp.u_8) end
        if (node.u_9 and temp.u_9 and node.u_9_val ~= temp.u_9 and type(temp.u_9) == "number") then
            node.u_9_val = temp.u_9
            program:setUniformLocationF32(node.u_9, temp.u_9)
        end

    elseif temp.shader == "RGB" or temp.shader == "HSV" or temp.shader == "Rainbow" then
        -- RGB/HSV/Rainbow shaders: u_1, u_2, u_3 are numeric adjustments (can be strings that need conversion)
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then
            local val = tonumber(temp.u_1) or temp.u_1
            node.u_1_val = temp.u_1
            program:setUniformLocationF32(node.u_1, val)
        end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then
            local val = tonumber(temp.u_2) or temp.u_2
            node.u_2_val = temp.u_2
            program:setUniformLocationF32(node.u_2, val)
        end
        if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3) then
            local val = tonumber(temp.u_3) or temp.u_3
            node.u_3_val = temp.u_3
            program:setUniformLocationF32(node.u_3, val)
        end
    else
        if (node.u_1 and temp.u_1 and node.u_1_val ~= temp.u_1) then node.u_1_val = temp.u_1 program:setUniformLocationF32(node.u_1, temp.u_1) end
        if (node.u_2 and temp.u_2 and node.u_2_val ~= temp.u_2) then node.u_2_val = temp.u_2 program:setUniformLocationF32(node.u_2, temp.u_2) end
    end
    if (node.u_3 and temp.u_3 and node.u_3_val ~= temp.u_3 and type(temp.u_3) == "number") then node.u_3_val = temp.u_3 program:setUniformLocationF32(node.u_3, temp.u_3) end
    if (node.u_4 and temp.u_4 and node.u_4_val ~= temp.u_4 and type(temp.u_4) == "number") then node.u_4_val = temp.u_4 program:setUniformLocationF32(node.u_4, temp.u_4) end
    if (node.u_5 and temp.u_5 and node.u_5_val ~= temp.u_5 and type(temp.u_5) == "number") then node.u_5_val = temp.u_5 program:setUniformLocationF32(node.u_5, temp.u_5) end
    if (node.u_6 and temp.u_6 and node.u_6_val ~= temp.u_6 and type(temp.u_6) == "number") then node.u_6_val = temp.u_6 program:setUniformLocationF32(node.u_6, temp.u_6) end
    if (node.u_7 and temp.u_7 and node.u_7_val ~= temp.u_7 and type(temp.u_7) == "number") then node.u_7_val = temp.u_7 program:setUniformLocationF32(node.u_7, temp.u_7) end
    -- Handle u_color for Stencil shader (vec3)
    if (node.u_color and temp.u_color) then
        program:setUniformLocationF32(node.u_color, temp.u_color.x, temp.u_color.y, temp.u_color.z)
    end
end

function WatchSkin:initView(layer)
    print("WatchSkin:initView()")

    -- CRITICAL: Stop the old update loop BEFORE clearing anything
    -- This prevents crashes during scene recreation
    if self.updateLayer then
        pcall(function()
            print("WatchSkin:initView - stopping previous update loop")
            self.updateLayer:unscheduleUpdate()
            self.updateLayer = nil
        end)
    end

    drawable={}
    script=nil

    on_millisecond=nil
    on_second=nil
    on_hour=nil
    on_minute=nil
    funcschedule = {}
    counterschedule = {}

    -- Thoroughly clear all counter values (clear existing keys, then replace table)
    if tweens then
        for k,v in pairs(tweens) do
            tweens[k] = nil
        end
    end
    tweens = {}

    -- Counter parameters table: stores config for mathematical calculation
    counter_params = {}

    olddisplay=0
    c_elapsed_start=socket.gettime()
    cc.Director:getInstance():getTextureCache():removeAllTextures()
    cc.FileUtils:getInstance():addSearchPath(path)

    local skin = "" -- current implem
    local watchFileName = self:getSkin()
    skinZIP = watchFileName .. ":"

    -- Detect if watch.xml is in a subfolder (for .watch archives with containing folder)
    local subfolderPrefix = ""
    if watchFileName:match("%.watch$") then
        pcall(function()
            local zipHelperClass = "com/ailife/ClockSkinCoco/ZipHelper"
            local sig = "(Ljava/lang/String;)Ljava/lang/String;"
            local zipFilePath = pathZIP .. watchFileName
            print("Checking for subfolder in: " .. zipFilePath)
            local ok, result = luaj.callStaticMethod(zipHelperClass, "findWatchXmlPath", {zipFilePath}, sig)
            if ok and result and result ~= "" then
                subfolderPrefix = result
                skinZIP = watchFileName .. ":" .. subfolderPrefix
                print("Watch face resources in subfolder: " .. subfolderPrefix)
            elseif ok and result == "" then
                print("Watch face resources in root of archive")
            else
                print("Could not determine subfolder, using root")
            end
        end)
    end

    print("reading scripts/script.txt")
    local content= cc.FileUtils:getInstance():getStringFromFile(pathZIP .. skinZIP .. "scripts/script.txt")

    if content then
        content = content:gsub('display', 'mydisplay')
        content = xmlParser:FromXmlString(content)
        --content = content:gsub("{wh}", '--{wh}')
        content = content:gsub("{(%w+)}", '%1')      --:gsub("--%[%[[^%]]*--%]%]","")
        --content = content:gsub("&lt;", '<')
        --content = content:gsub("&gt;", '>')
        content = toLowerVar(content)
        --content = content:gsub("teeenme", 'tweenme')

        local printi=1
        while (printi < content:len()) do
        --    print(content:sub(printi, printi+999))
            printi=printi+1000
        end

        --print(content)
        script=content
        local f = loadstring(content)
        --local err=pcall(f)

        local status, error = pcall(f)
        if status==false then
            print("Failure Loading the script", error)
            -- Show error in Android AlertDialog
            pcall(function()
                if luaj then
                    local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                    local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                    local title = "Watch Face Script Error"
                    local message = "Failed to load script:\n\n" .. tostring(error)
                    local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                    if not ok then
                        print("Failed to show error dialog:", ret)
                    end
                end
            end)
        end
    end

    --print("reading" .. path .. skin)
    local xmlTree, xmlError = xmlParser:ParseXmlFile(pathZIP .. skinZIP .. "watch.xml")
    -- Show error if parse failed OR if there was a parse error (even with partial tree)
    if xmlTree == nil or xmlError then
        xmlTree, xmlError = xmlParser:ParseJSONFile(pathZIP .. skinZIP .. "watchface.json")
    end
    -- Show error if parse failed OR if there was a parse error (even with partial tree)
    if xmlTree == nil or xmlError then
        pcall(function()
            if luaj then
                local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                local title = "Watch Face Load Error"
                local message = "Could not load watch face definition.\n\n"
                if xmlError then
                    message = message .. "Parse error: " .. tostring(xmlError) .. "\n\n"
                end
                message = message .. "File: " .. tostring(pathZIP .. skinZIP)
                local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                if not ok then
                    print("Failed to show error dialog:", ret)
                end
            end
        end)
        return
    end
    if xmlTree.Attributes then
        if xmlTree.Attributes.protection and xmlTree.Attributes.protection == "y" then
            xmlTree, xmlError = xmlParser:ParsePXmlFile(pathZIP .. skinZIP .. "watch.pxml")
            if xmlTree == nil and xmlError then
                -- Show error for protected XML parse failure
                pcall(function()
                    if luaj then
                        local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                        local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                        local title = "Protected XML Parse Error"
                        local message = "Parse error in watch.pxml:\n\n" .. tostring(xmlError)
                        local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                        if not ok then
                            print("Failed to show error dialog:", ret)
                        end
                    end
                end)
                return
            end
        end
        if xmlTree.Attributes.ucolor_default then
            ucolor = xmlTree.Attributes.ucolor_default
            ucolor_default = xmlTree.Attributes.ucolor_default
        end
        if xmlTree.Attributes.bg_color and xmlTree.Attributes.bg_color ~= '000000' then
            local status, error = pcall(function()
                colBackground = WatchSkin:hex24F(xmlTree.Attributes.bg_color, 100)
            end)
            if status==false then
                print ("Error in background color", error)
                -- Show error for invalid background color
                pcall(function()
                    if luaj then
                        local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                        local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                        local title = "Watch Face Color Error"
                        local message = "Invalid background color: " .. tostring(xmlTree.Attributes.bg_color) .. "\n\n" .. tostring(error)
                        local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                        if not ok then
                            print("Failed to show error dialog:", ret)
                        end
                    end
                end)
            end
            --colBackground = WatchSkin:hex24F(xmlTree.Attributes.bg_color, 100)
            cc.Director:getInstance():setClearColor(colBackground)
        end
        layer:setName("Background")
    end
    custom_light = false

    -- Add ambient light for 3D rendering (without this, 3D objects appear black)
    local ambientLight = cc.AmbientLight:create(cc.c3b(20, 20, 20))
    ambientLight:setEnabled(true)
    ambientLight:addTo(layer)
    print("Ambient light created for 3D rendering")

    drawable = self:parseWatchSkin(xmlTree)

    -- Counters now use mathematical calculation, no need to execute schedules

    -- Disable ambient light if custom lights are used
    if custom_light then
        ambientLight:setEnabled(false)
        print("Ambient light disabled - using custom lights")
    end

    if self.isCompass then
        pcall(function()
            local className = "org/cocos2dx/lib/Cocos2dxHelper"
            luaj.callStaticMethod(className, "enableCompass", nil, "()V")
            print("Compass sensor enabled")
        end)
    end

    local function accelerometerListener(event,x,y,z,timestamp)
        -- Calculate rotation angles from accelerometer (in degrees)
        -- Roll (rotation around Y axis) - tilt left/right
        local roll = math.atan2(x, math.sqrt(y*y + z*z)) * 180 / math.pi
        -- Pitch (rotation around X axis) - tilt forward/backward
        local pitch = math.atan2(y, math.sqrt(x*x + z*z)) * 180 / math.pi

        -- Calculate rate of change (angular velocity)
        local delta_roll = roll - prev_roll
        local delta_pitch = pitch - prev_pitch

        -- Apply exponential moving average smoothing to rate of change (using internal values)
        smooth_pitch = delta_pitch*0.1 + smooth_pitch*0.9
        smooth_roll = delta_roll*0.1 + smooth_roll*0.9

        -- Swap and negate: pitch -> sgx (negated), roll -> sgy
        sgx = -smooth_pitch
        sgy = smooth_roll
        sgz = 0  -- Z rotation (yaw) cannot be determined from accelerometer alone

        -- Store current angles for next frame
        prev_roll = roll
        prev_pitch = pitch

        -- Convert from g-force to m/s² (1g = 9.80665 m/s²)
        -- Note: Cocos2dx already handles device rotation, so values are in world coordinates
        -- Negate values to match watch format convention
        sax = -x * 9.80665
        say = -y * 9.80665
        saz = -z * 9.80665
        -- Debug: uncomment to see accelerometer values
        --print("Raw(g): x=" .. string.format("%.2f", x) .. " y=" .. string.format("%.2f", y) .. " z=" .. string.format("%.2f", z))
        --print("Angles: roll=" .. string.format("%.1f", roll) .. " pitch=" .. string.format("%.1f", pitch))
        --print("Rate: sgx=" .. string.format("%.2f", sgx) .. " sgy=" .. string.format("%.2f", sgy))
    end
    --print("Accelerometer enabled:", self.isAccel)
    layer:setAccelerometerEnabled(self.isAccel)
    accelLayer=layer
    local accelListener  = cc.EventListenerAcceleration:create(accelerometerListener)
    layer:getEventDispatcher():addEventListenerWithSceneGraphPriority(accelListener, layer)
    local layerId=0
    local depth=0
    local previousIs3d=false
--    cc.Camera:getDefaultCamera():setCameraFlag(50)
    for k, v in pairs(drawable) do
        print("layer", k, v.type, v.path)
        layerId=k
        --if v.id then layerId=tonumber(v.id) end
        if v.path ~= nil and (v.type == "image" or v.type == "image_gif") then
            if string.find(v.path, "`") then -- animation
                local s = v.path:split("`")
                local animation = cc.Animation:create()
                for i = 1, #s do
                    --print("loading animation:" .. "images/" .. s[i])
                    animation:addSpriteFrameWithFile(pathZIP .. skinZIP .. "images/" .. s[i])
                end
                local delay = v.gif_delay or 50
                if tonumber(delay)==0 then delay=50 end
                animation:setDelayPerUnit(delay / 1000)
                animation:setRestoreOriginalFrame(true)
                local sp = display.newSprite(pathZIP .. skinZIP .. "images/" .. s[1])
                local action = cc.Animate:create(animation)
                sp:runAction(cc.RepeatForever:create(action))
                v.drawable = sp
                v.drawable:addTo(layer,layerId)
            else
                --print("loading sprite:" .. pathZIP .. skinZIP .. "images/" .. v.path)
                local sp  -- = display.newSprite(pathZIP .. skinZIP .. "images/" .. v.path)
                local status, error = pcall(function()  sp = display.newSprite(pathZIP .. skinZIP .. "images/" .. v.path) end)
                if (status == true) then
                    align(sp, v.alignment)
                    v.drawable = sp
                    v.drawable:addTo(layer,layerId)
                end
            end
        elseif v.path ~= nil and v.type == "video" then
            -- Video layer: extract frames from video and display as animation
            local videoPath = pathZIP .. skinZIP .. "videos/" .. v.path
            print("Loading video layer:", videoPath)

            -- Call Java to extract video frames asynchronously
            -- Java will extract watch face name from ZIP path automatically (with .watch extension)
            local className = "com/ailife/ClockSkinCoco/VideoFrameExtractor"
            local fps = v.fps or 30  -- Default 30fps (async allows full frame rate)

            -- First check if extraction is already in progress (watch face reloaded during extraction)
            local sig2 = "(Ljava/lang/String;)Ljava/lang/String;"
            local ok2, status = luaj.callStaticMethod(className, "getExtractionStatus", {videoPath}, sig2)

            local framesPath = nil
            local ok = false
            local alreadyInProgress = false

            if ok2 and status then
                if string.sub(status, 1, 10) == "completed:" then
                    -- Cache already exists, get path directly
                    framesPath = string.sub(status, 11)
                    ok = true
                    print("Video frames already cached at:", framesPath)
                elseif string.sub(status, 1, 12) == "in_progress:" then
                    -- Extraction is already ongoing, DON'T start a new one
                    alreadyInProgress = true
                    local progressInfo = string.sub(status, 13)
                    local current, total = progressInfo:match("(%d+)/(%d+)")
                    print("Extraction already in progress: " .. (current or "?") .. "/" .. (total or "?") .. " frames")
                end
            end

            -- Only call extractFramesAsync if cache doesn't exist AND no extraction in progress
            if not ok and not alreadyInProgress then
                local sig = "(Ljava/lang/String;I)Ljava/lang/String;"
                ok, framesPath = luaj.callStaticMethod(className, "extractFramesAsync", {videoPath, fps}, sig)
                print("Started new video extraction")
            end

            -- Store video path for polling in update loop
            v.videoPath = videoPath
            v.videoFps = fps
            v.extractionStarted = true
            v.extractionStartTime = socket.gettime()

            -- Create loading indicator text
            if not framesPath or framesPath == "" then
                local labelText = "Extracting video..."
                if ok2 and status and string.sub(status, 1, 12) == "in_progress:" then
                    -- Extraction is ongoing, show progress
                    local progressInfo = string.sub(status, 13)
                    local current, total = progressInfo:match("(%d+)/(%d+)")
                    if current and total then
                        labelText = "Extracting video: " .. current .. "/" .. total .. " frames"
                        print("Displaying progress for ongoing extraction: " .. current .. "/" .. total .. " frames")
                    end
                end

                local loadingLabel = cc.Label:createWithSystemFont(labelText, "Arial", 16)
                if loadingLabel then
                    loadingLabel:setPosition(256, 256)
                    loadingLabel:setColor(cc.c3b(255, 255, 255))
                    loadingLabel:addTo(layer, 9999)
                    v.loadingLabel = loadingLabel
                end
            end

            if ok and framesPath ~= nil and framesPath ~= "" then
                print("Video frames extracted to:", framesPath)

                -- Use Cocos2D-x TextureCache to load textures directly
                local textureCache = cc.Director:getInstance():getTextureCache()
                local animation = cc.Animation:create()
                local frameCount = 0
                local frames = {}

                -- Load all frames into texture cache first
                print("Loading video frames into texture cache...")
                for i = 0, 299 do
                    local framePath = framesPath .. "/frame_" .. string.format("%03d", i) .. ".png"

                    -- Try to load texture directly
                    local texture = textureCache:addImage(framePath)

                    if texture then
                        -- Create sprite frame from texture
                        local frame = cc.SpriteFrame:createWithTexture(texture, cc.rect(0, 0, texture:getContentSize().width, texture:getContentSize().height))
                        if frame then
                            animation:addSpriteFrame(frame)
                            table.insert(frames, frame)
                            frameCount = frameCount + 1
                        else
                            print("Failed to create sprite frame for frame", i)
                            break
                        end
                    else
                        if i == 0 then
                            print("Failed to load texture for first frame:", framePath)
                        end
                        break
                    end
                end

                print("Loaded", frameCount, "frames")

                if frameCount > 0 and #frames > 0 then
                    -- Set animation speed based on FPS
                    local delay = 1.0 / fps
                    animation:setDelayPerUnit(delay)
                    animation:setRestoreOriginalFrame(true)

                    -- Create sprite with first frame
                    local sp = cc.Sprite:createWithSpriteFrame(frames[1])

                    if sp then
                        local action = cc.Animate:create(animation)
                        sp:runAction(cc.RepeatForever:create(action))
                        align(sp, v.alignment)
                        v.drawable = sp
                        v.drawable:addTo(layer, layerId)
                        print("Video layer loaded successfully: " .. frameCount .. " frames at " .. fps .. " fps")
                    else
                        print("Failed to create video sprite from first frame")
                    end
                else
                    print("No video frames loaded, frameCount:", frameCount)
                end
            else
                print("Failed to extract video frames:", videoPath)
            end
        elseif v.type == "gallery_2d" then
            -- Gallery 2D layer: display user-selected photos from gallery folder
            print("Loading gallery_2d layer")

            -- Get gallery images from GalleryProvider
            local className = "com/ailife/ClockSkinCoco/GalleryProvider"
            local sig = "()Ljava/lang/String;"
            local ok, allPaths = luaj.callStaticMethod(className, "getAllImagePaths", {}, sig)

            if ok and allPaths and allPaths ~= "" then
                -- Split paths by pipe delimiter
                local imagePaths = {}
                for path in string.gmatch(allPaths, "[^|]+") do
                    table.insert(imagePaths, path)
                end

                print("Found", #imagePaths, "images in gallery")

                if #imagePaths > 0 then
                    -- Create animation with gallery images
                    local animation = cc.Animation:create()
                    local frames = {}
                    local frameCount = 0

                    for i, imagePath in ipairs(imagePaths) do
                        -- Load image as texture
                        local texture = cc.Director:getInstance():getTextureCache():addImage(imagePath)
                        if texture then
                            local frame = cc.SpriteFrame:createWithTexture(texture, cc.rect(0, 0, texture:getContentSize().width, texture:getContentSize().height))
                            if frame then
                                animation:addSpriteFrame(frame)
                                table.insert(frames, frame)
                                frameCount = frameCount + 1
                            else
                                print("Failed to create sprite frame for:", imagePath)
                            end
                        else
                            print("Failed to load texture for:", imagePath)
                        end
                    end

                    if frameCount > 0 and #frames > 0 then
                        -- Set animation speed based on dur_on (in seconds)
                        local dur_on = tonumber(v.dur_on) or 5  -- Default 5 seconds per image
                        if dur_on <= 0 then dur_on = 5 end
                        animation:setDelayPerUnit(dur_on)
                        animation:setRestoreOriginalFrame(true)

                        -- Create sprite with first frame
                        local sp = cc.Sprite:createWithSpriteFrame(frames[1])

                        if sp then
                            local action = cc.Animate:create(animation)
                            sp:runAction(cc.RepeatForever:create(action))
                            align(sp, v.alignment)
                            v.drawable = sp
                            v.drawable:addTo(layer, layerId)
                            print("Gallery layer loaded successfully:", frameCount, "images at", dur_on, "seconds per image")
                        else
                            print("Failed to create gallery sprite from first frame")
                        end
                    else
                        print("No gallery images loaded, frameCount:", frameCount)
                    end
                else
                    print("Gallery is empty")
                end
            else
                print("Failed to get gallery images or gallery is empty")
            end
        elseif (v.type == "3d_model") then
            if not string.find(v.model, ".obj") then v.model = v.model .. ".obj" end
            local sp = cc.Sprite3D:create(pathZIP .. skinZIP .. "3d/" .. v.model) --, pathZIP .. skinZIP .. "3d/" .. "white.png")
            sp:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA , gl.ONE_MINUS_SRC_ALPHA))
            local light = cc.PointLight:create(cc.vec3(-1000.0, 1000.0, 1000.0), cc.c3b(255, 255, 255), 10000.0)
            light:addTo(layer,layerId)
            v.light=light
            v.drawable = sp
            v.drawable:addTo(layer,layerId)
            print("created 3d sprite", sp)
        elseif (v.type == "3d_text") then
            local layerNode = cc.LayerColor:create()
            v.drawable = cc.LayerColor:create()
            v.layerNode=layerNode
            v.layerNode:addTo(v.drawable)
            v.drawable:addTo(layer,layerId)
        elseif (v.type == "light_dir") then
            local light = cc.DirectionLight:create(cc.vec3(0.0, 0.0, 0.0), cc.c3b(255, 255, 255))
            v.drawable = light
            v.drawable:addTo(layer,layerId)
            custom_light=true
        elseif (v.type == "light_spot") then
            local light = cc.SpotLight:create(cc.vec3(0.0, 0.0, 0.0), cc.vec3(-1000.0, 1000.0, 1000.0), cc.c3b(255, 255, 255), 0, 90, 100)
            v.drawable = light
            v.drawable:addTo(layer,layerId)
            custom_light=true
        elseif (v.type == "light_point") then
            local light = cc.PointLight:create(cc.vec3(0.0, 0.0, 0.0), cc.c3b(255, 255, 255), 1000.0)
            v.drawable = light
            v.drawable:addTo(layer,layerId)
            custom_light=true
            print("PointLight created")
        elseif v.path ~= nil and (v.type == "image_cond") then
            --print("loading sprite:" .. "images/" .. v.path)
            local spbox


            local status, error = pcall(function() spbox = display.newSprite(pathZIP .. skinZIP .. "images/" .. v.path) end)
            if status==false then
                print ("Error in script action", error)
            else
                local box=spbox:getContentSize()
                local s = v.cond_grid:split("x")
                local animation = cc.Animation:create()
                local stepx=box.width / s[1]
                local stepy=box.height / s[2]
                --print("loading sprite:" .. "images/" .. v.path, stepx, stepy, box.width, box.height)
                for j = 1, s[2] do
                    for i = 1, s[1] do
                        -- print("loading Frame:" , i, j)
                        local sf = cc.SpriteFrame:create(pathZIP .. skinZIP .. "images/" .. v.path, cc.rect((i-1) * stepx, (j-1) * stepy, stepx, stepy))
                        animation:addSpriteFrame(sf)
                    end
                end
                local cache = cc.AnimationCache:getInstance()
                cache:removeAnimation(v.path)
                cache:addAnimation(animation, v.path)

                local sp = display.newSprite()    --cc.Sprite:create()
                sp:setDisplayFrameWithAnimationName(v.path, 1)
                v.drawable = sp
                v.drawable:addTo(layer,layerId)
            end
        elseif v.type == "text" then
            local sp
            local layerNode = cc.LayerColor:create()
            if v.font and string.find(v.font, "bm") then
                local temp = evaluateDrawable(v)
         --       local fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                local fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                print("creating BMLabel:" .. fontName, temp.text:upper())
                sp = cc.Label:createWithBMFont(fontName, temp.text:upper())
                if (sp == nil) then
                    local fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                    sp = cc.Label:createWithBMFont(fontName, temp.text:upper())
                end
                v.TTFFont=false
            else
         --       local fontName = "fonts/" .. v.font .. ".ttf"
                if v.font == nil then
                    sp = cc.Label:createWithSystemFont("test","arial",TTFSIZE)
                    sp:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
                else
                    local fontName = "fonts/" .. v.font .. ".ttf"
                    print("creating Label:" .. fontName)
                    sp = WatchSkin:createTTFLabel("testtesttest", fontName, TTFSIZE):setVisible(false)
                end
                v.TTFFont=true
            end

            -- Mark shadow layers for text if shadow is specified (created in update loop)
            if v.shadow and v.shadow ~= "" then
                v.shadowLayers = {}
                v.shadowLayerNode = layerNode
            end

            -- Mark glow layers for text if glow is specified (created in update loop)
            if v.outline == "Glow" then
                v.glowLayers = {}
                v.glowLayerNode = layerNode
            end

            v.drawable = sp
            v.drawable:addTo(layerNode)
            v.layerNode=layerNode
            v.layerNode:addTo(layer,layerId)

            -- Initialize text animation if specified
            if v.anim_in or v.anim_out then
                v.animState = {
                    phase = 'off',          -- 'off', 'delay', 'in', 'on', 'out'
                    elapsed = 0,
                    cycleCount = 0,
                    currentAction = nil,
                    originalX = nil,
                    originalY = nil,
                    originalScale = nil,
                    originalOpacity = nil,
                    originalPosSet = false  -- Flag to set original position from calculated value
                }

                -- Store original transform for reset (position will be set later from calculated values)
                v.animState.originalScale = v.drawable:getScale()
                v.animState.originalOpacity = v.drawable:getOpacity()

                -- Parse animation parameters with defaults
                v.dur_in = tonumber(v.dur_in) or 0.5
                v.dur_on = tonumber(v.dur_on) or 0
                v.dur_out = tonumber(v.dur_out) or 0.5
                v.dur_off = tonumber(v.dur_off) or 0
                v.delay_start = tonumber(v.delay_start) or 0
                v.repeat_count = tonumber(v.repeat_count) or 1

                -- Convert Y/N to boolean
                v.restart_on_load = (v.restart_on_load == 'Y' or v.restart_on_load == 'y')
                v.restart_on_bright = (v.restart_on_bright == 'Y' or v.restart_on_bright == 'y')
                v.restart_text_change = (v.restart_text_change == 'Y' or v.restart_text_change == 'y')

                -- Start animation if restart_on_load is true
                -- Use 'pending' phase to wait for position to be set before starting animation
                if v.restart_on_load then
                    if v.delay_start > 0 then
                        v.animState.phase = 'pending_delay'  -- Will switch to delay after position set
                        v.animState.elapsed = 0
                    else
                        v.animState.phase = 'pending'  -- Will start animation after position set
                        v.animState.elapsed = 0
                    end
                    -- Hide label until animation starts
                    v.drawable:setOpacity(0)
                else
                    -- Animation disabled on load, keep label visible
                    v.animState.phase = 'on'
                    v.drawable:setOpacity(255)
                end

                print("Text animation initialized: " .. tostring(v.anim_in) ..
                      " / " .. tostring(v.anim_out))
            end
        elseif v.type == "series" then
            local sp
            local layerNode = cc.LayerColor:create()

            local fontName = "fonts/" .. v.font .. ".ttf"
            print("creating Label:" .. fontName)
            sp = WatchSkin:createTTFLabel("testtesttest", fontName, TTFSIZE)   --:setVisible(false)
            v.text = v.series

            v.drawable = sp
            v.drawable:addTo(layerNode)
            v.layerNode=layerNode
            v.layerNode:addTo(layer,layerId)
            --     v.drawable:addTo(layer, k)
        elseif v.type == "shape" then
            local temp = evaluateDrawable(v)

            -- Mark shadow layers for shape if shadow is specified (created in update loop)
            if v.shadow and v.shadow ~= "" then
                v.shadowLayers = {}
                v.shadowParentLayer = layer
                v.shadowLayerId = layerId
            end

            -- Mark outline/glow layers for shape if outline is specified (created in update loop)
            if v.outline and v.outline ~= "" then
                v.outlineLayers = {}
                v.outlineParentLayer = layer
                v.outlineLayerId = layerId
            end

            local sp=self:drawShape(temp)
            v.drawable = sp

--            local sp3d = cc.Sprite3D:create()
--            v.drawable:addTo(sp3d,layerId)

            --[[sp:setCameraMask(2^layerId)
            local camera = cc.Camera:create()
            camera:setCameraFlag(2^layerId)
            camera:setDepth(layerId)
            camera:addTo(layer, layerId)
            v.camera = camera]]

            sp:addTo(layer,layerId)
        elseif v.type == "progress" then
            v.shape="Square"
            v.type="shape"
            v.shader="Rounded"
            -- Remap corner_type from vertical bar (bottom-to-top) to horizontal progress (left-to-right)
            local originalCorner = v.corner_type or 1
            v.u_4 = self:remapCornerTypeBarToProgress(originalCorner)
            print("Progress layer: original corner_type=" .. originalCorner .. " remapped to u_4=" .. v.u_4)
            v.u_3 = 1 -- active
            v.u_3x = v.width
            v.u_3y = v.height
            v.u_3z = v.radius

            v.u_1 = v.color
            v.u_2 = v.color2
            v.u_7 = v.color3

            -- Convert margin and pct_complete to numbers if they're strings
            if type(v.margin) == "string" then
                v.u_5 = tonumber(v.margin) or 0
            elseif type(v.margin) == "function" then
                v.u_5 = v.margin
            else
                v.u_5 = v.margin or 0
            end

            if type(v.pct_complete) == "string" then
                v.u_6 = tonumber(v.pct_complete) or 0
            elseif type(v.pct_complete) == "function" then
                v.u_6 = v.pct_complete
            else
                v.u_6 = v.pct_complete or 0
            end

            -- u_8: end_style flag (1=round end cap, 0=flat end cap)
            if (v.end_style=="round") then v.u_8 = 1 else v.u_8 = 0 end
            v.u_9 = tonumber(v.outside_opacity) or 100
            v.color = v.color4
            local temp = evaluateDrawable(v)
            temp.u_9 = v.u_9
            local sp=self:drawShape(temp)
            v.drawable = sp
            self:updateShader(sp, temp)
            v.drawable:addTo(layer,layerId)
        elseif v.type == "rounded" then
            -- Draw rounded rectangle using geometry (circles + rectangles)
            local temp = evaluateDrawable(v)
            local radius = tonumber(v.radius) or 0
            local width = tonumber(temp.width) or 100
            local height = tonumber(temp.height) or 100
            local cornerType = tonumber(v.corner_type) or 1  -- Default to all rounded

            print("Rounded layer: width=" .. width .. " height=" .. height .. " radius=" .. radius .. " corner_type=" .. cornerType)

            -- Create the rounded rectangle sprite using geometry with corner type support
            local sp = self:drawRoundedRectGeometry(width, height, radius, temp.color, cornerType)

            -- Apply custom shader if specified
            if temp.shader then
                -- Convert the sprite to use the custom shader
                v.type = "shape"
                v.shape = "Square"
                v.width = width
                v.height = height
                v.drawable = sp

                -- Apply the shader through updateShader
                self:updateShader(sp, temp)
            else
                v.drawable = sp
            end

            v.drawable:addTo(layer, layerId)
        elseif v.type == "ring" then
            v.shape="Circle"
            v.shader="Ring"
            -- Don't do arithmetic/comparisons here - values might be functions
            -- These will be properly set in the update loop after evaluation
            local temp = evaluateDrawable(v)

            -- Ensure radius values are numbers
            temp.radius_outer = tonumber(temp.radius_outer) or 100
            temp.radius_inner = tonumber(temp.radius_inner) or 80

            -- Now use evaluated values for initialization and set on temp for drawShape
            temp.height=2*temp.radius_outer
            temp.width=2*temp.radius_outer
            v.height=temp.height
            v.width=temp.width
            -- Ensure angle and angle_total have valid values
            temp.angle = tonumber(temp.angle) or 0
            temp.angle_total = tonumber(temp.angle_total) or 360

            v.u_3=temp.angle_total
            temp.u_3=temp.angle_total
            -- Ensure angle doesn't exceed angle_total
            if temp.angle > temp.angle_total then
                v.angle = temp.angle_total
                temp.angle = temp.angle_total
            end
            v.u_4=temp.angle
            temp.u_4=temp.angle
            v.u_1=temp.color
            temp.u_1=temp.color
            v.u_2=temp.color2
            temp.u_2=temp.color2
            v.u_5=(1 - ((temp.radius_outer-temp.radius_inner) / temp.radius_outer)) / 2.0
            temp.u_5=v.u_5
            v.u_6=0.0
            temp.u_6=0.0
            if (temp.is_clockwise=="N") then
                v.u_6=1.0
                temp.u_6=1.0
            end
            v.u_7 = tonumber(temp.outside_opacity) or 100
            temp.u_7 = v.u_7
            v.u_8=temp.color3
            temp.u_8=temp.color3
            print("Ring layer created: u_7=" .. v.u_7 .. " u_8=" .. tostring(v.u_8))
            if (temp.is_clockwise=="N") then
                v.rotation = temp.rotation - temp.angle_total
            end
            --    print ("ring", v.u_5)
            local sp=self:drawShape(temp)
            v.drawable = sp
            -- Apply the Ring shader and set initial uniform values
            print("Ring: applying shader with outside_opacity=" .. tostring(temp.u_7) .. " color3=" .. tostring(temp.u_8))
            self:updateShader(sp, temp)
            v.drawable:addTo(layer,layerId)
        elseif v.type == "markers" then
            local layerNode = cc.Layer:create()
            local temp = evaluateDrawable(v)
            local start = 1  -- temp.m_start
            local count = temp.m_count
            local radius = temp.radius
            --local mw = temp.m_width*((tonumber(temp.anim_scale_x) or 100)/100)/1.5
            local mw = temp.m_width*temp.anim_scale_x/1.5
            --local mh = temp.m_height*((tonumber(temp.anim_scale_y) or 100)/100)/1.5
            local mh = temp.m_height*temp.anim_scale_y/1.5
            local rot = -90  -- rotation is done after(tonumber(temp.rotation) or 0)-90
            local rotPI = rot * math.pi / 180
            local a = 2*math.pi / count
            if temp.shape==nil then temp.shape="Square" end
            temp.skew_x = tonumber(temp.skew_x) or 0
            temp.skew_y = tonumber(temp.skew_y) or 0
            local squarify = tonumber(temp.squarify) or 100
            for i = start - 1, count-1 do
                --print("markers", (radius-mh) * math.cos(a*i + rotPI), (radius-mh) * math.sin(a*i + rotPI))
                local angle = a*i + rotPI
                local adj_radius = getSquarifyRadius(radius-mh, angle, squarify)
                local bitmap = self:drawShape(temp,
                    adj_radius * math.cos(angle),
                    -adj_radius * math.sin(angle),
                    --256+temp.x + (radius-mh) * math.cos(a*i + rotPI),
                    --256-temp.y - (radius-mh) * math.sin(a*i + rotPI),
                    --256+temp.x + (radius) * math.cos(a*i + rotPI),
                    --256-temp.y - (radius) * math.sin(a*i + rotPI),
                    (180*a*i/math.pi+rot-90))
                bitmap:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                layerNode:addChild(bitmap)
            end
            v.drawable = layerNode
            v.drawable:addTo(layer,layerId)
        elseif v.type == "markers_hm" then
            local layerNode = cc.Layer:create()
            local temp = evaluateDrawable(v)
            local shape = v
            if v.m_hour == "Tiny" then v.m_hour = 1
            elseif v.m_hour == "Small" then v.m_hour = 2
            elseif v.m_hour == "Medium" then v.m_hour = 3
            else v.m_hour = 4
            end
            if v.m_minute == "Tiny" then v.m_minute = 1
            elseif v.m_minute == "Small" then v.m_minute = 2
            elseif v.m_minute == "Medium" then v.m_minute = 3
            else v.m_minute = 4
            end

            local hex = temp.color2
            local size = v.m_minute+1
            local radius = tonumber(v.radius) or 1
            local squarify = tonumber(v.squarify) or 100
            local a = math.pi / 30
            for i = 0, 59 do
                local angle = a * i
                local inner_r = getSquarifyRadius(radius - size * 2, angle, squarify)
                local outer_r = getSquarifyRadius(radius, angle, squarify)
                local drawNode1 = cc.DrawNode:create()
                drawNode1:drawSegment(cc.p(inner_r * math.cos(angle), inner_r * math.sin(angle)),
                    cc.p(outer_r * math.cos(angle), outer_r * math.sin(angle)), size / 4, self:hex24F(hex, 100))   --:setPosition(v.x + 256, 256 - v.y)
                layerNode:addChild(drawNode1)
            end
            hex = temp.color
            size = v.m_hour+1
            a = math.pi / 6
            for i = 0, 11 do
                local angle = a * i
                local inner_r = getSquarifyRadius(radius - size * 2, angle, squarify)
                local outer_r = getSquarifyRadius(radius, angle, squarify)
                local drawNode1 = cc.DrawNode:create()
                drawNode1:drawSegment(cc.p(inner_r * math.cos(angle), inner_r * math.sin(angle)),
                    cc.p(outer_r * math.cos(angle), outer_r * math.sin(angle)), size, self:hex24F(hex, 100))       --:setPosition(v.x + 256, 256 + v.y)
                layerNode:addChild(drawNode1)
            end

            v.drawable = layerNode
            v.drawable:addTo(layer,layerId)
        elseif v.type == "calendar" then
            -- Calendar layer: displays month calendar with weekday headers
            v.drawable = cc.Layer:create()
            v.drawable:addTo(layer,layerId)
        elseif v.type == "text_ring" then
            WatchSkin:createTextRing(v)
            v.drawable:addTo(layer,layerId)
        elseif v.type == "text_curved" then
            --WatchSkin:createTextCurved(v)
            v.drawable = cc.Layer:create()
            v.drawable:addTo(layer,layerId)
        elseif v.type == "map" then
            -- Map layer: display OpenStreetMap tile
            -- Create sprite using cc.Sprite:create() (empty sprite that can have texture set later)
            v.drawable = cc.Sprite:create()
            if v.drawable then
                align(v.drawable, v.alignment)
                v.drawable:addTo(layer, layerId)
                -- Initialize map state tracking
                v.lastLat = nil
                v.lastLon = nil
                v.lastZoom = nil
                v.map_path = nil
            else
                print("Failed to create map sprite")
            end
        elseif v.type == "chart" then
            -- Chart layer: bar and line charts with data visualization
            self:createChartLayer(v, layer, layerId)
        end
        if v.type == "camera" then
            depth = depth + 1
            v.cameraNode = cc.Layer:create()
            v.depth=depth
            v.drawable = nil
            v.cameraNode:addTo(layer, layerId)
            print ("creating 3d cam:", layerId, " depth:", depth)
            previousIs3d = true
        elseif v.type == "3d_model" or v.type == "3d_text" then
            if previousIs3d == false or depth == 0 then
                depth = depth + 1
                local visibleSize = cc.Director:getInstance():getVisibleSize()
                local camera = cc.Camera:createPerspective(60, visibleSize.width / visibleSize.height, 10, 1000)
                -- Camera stays at standard position
                camera:setPosition3D(cc.vec3(256, 256, 400.0))   --400 445
                camera:setCameraFlag(2^depth)
                camera:setDepth(depth)
                camera:addTo(layer, layerId)
                v.camera = camera
                print(string.format("3D_CAM_INIT: fullscreen=%d camPos=(256, 256, 400) depth=%d", cc.exports.fullscreen or -1, depth))
                previousIs3d = true
            end
        else
            if previousIs3d == true then
                depth = depth + 1
                local camera = cc.Camera:create()
                camera:setCameraFlag(2^depth)
                camera:setDepth(depth)
                local def = cc.Camera:getDefaultCamera()
                camera:setPosition3D(def:getPosition3D())
                camera:addTo(layer, layerId)
                --camera:setPosition3D(cc.vec3(256, 256,-400.0))
                v.camera = camera
                print ("creating 2d cam:", layerId, " depth:", depth)
                previousIs3d = false
            end
        end
        if v.drawable~=nil then v.drawable:setCameraMask(2^depth, true) end
        if v.layerNode~=nil then v.layerNode:setCameraMask(2^depth, true) end
        v.cameraMask = 2^depth
        print ("layer Id:", layerId, "previousIs3d:",previousIs3d, " depth:", depth)
    end
    --layer:sortAllChildren()
end

function WatchSkin:createTTFLabel(text, fontName, size)
    local label = cc.Label:createWithTTF(text:gsub('°','O'), pathZIP .. skinZIP .. fontName, size)
    label:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
    return WatchSkin:setLabelString(label, text)
end

function WatchSkin:setLabelString(label, text)
    if (label == nil) then
        label = cc.Label:createWithSystemFont("test","arial",TTFSIZE)
        label:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
    end
    local newText = text:gsub('°','O')
    label:setString(newText)
    --print("setLabelString", newText)
    local index={}
    local i = 0
    local off = -1
    while true do
        i = string.find(text, '°', i+1)    -- find 'next' newline
        if i == nil then break end
    --    print(text, i, i + off)
        index[i+off] = 1
        off = off - 1
    end
    if index == {} then return label end
    i = 0
    for i=1,text:len() do
        local sprite = label:getLetter(i-1)
        if nil ~= sprite then
            if (index[i-1] == 1) then
                sprite:setScale(0.5):setAnchorPoint(cc.p(0,0))
            else
                sprite:setAnchorPoint(cc.p(0.5,0.5))
            end
        end
    end
    return label
end

function WatchSkin:createTextRing(v)
    local layerNode
    if (v.drawable == nil) then layerNode = cc.Layer:create()
    else
        layerNode = v.drawable
        layerNode:removeAllChildren()
    end
    local temp = evaluateDrawable(v)
    local start = 0
    local stop = 0
    local ring = temp.ring_type
    print("ring " .. ring)
    local iter = 1
    local showevery = 1
    local ang = 1
    local list=nil
    if string.find(ring, "to") then
        local s = ring:split(" to ")
        if s[1] > s[2] then
            iter = -1
            showevery = temp.show_every + 0
            ang = 0
        end
        start = s[1]
        stop = s[2]
    else
        if (ring == "I-XII") then
            start=1
            stop=12
            list={'I','II','III','IIII','V','VI','VII','VIII','IX','X','XI','XII'}
        elseif (ring == "Mo-Su") then
            start=1
            stop=7
            if (dayList == nil) then
                list={'Su','Mo','Tu','We','Th','Fr','Sa' }
            else
                --for m=1,7 do list[m]=list[m]:sub(1,2) end
                list={}
                for m=1,7 do list[m]=utf8.sub(dayList[m],1,2) end
            end
            if (v.transform == 'uc') then for m=1,7 do list[m]=list[m]:upper() end end

        elseif (ring == "Mon-Sun") then
            start=1
            stop=7
            if (dayList == nil) then
                list={'Sun','Mon','Tue','Wed','Thu','Fri','Sat' }
            else
            --    for m=1,7 do list[m]=list[m]:sub(1,3) end
                list={}
                for m=1,7 do list[m]=utf8.sub(dayList[m],1,3) end
            end
            if (v.transform == 'uc') then for m=1,7 do list[m]=list[m]:upper() end end
        elseif (ring == "Jan-Dec") then
            start=1
            stop=12
            --local fontName = "fonts/" .. v.font .. ".ttf"
            --local sp = WatchSkin:createTTFLabel('é', fontName, 40)
            --local a= monthList[2]
            --print (fontName, sp:getBoundingBox().width, a, a:upper() )
            if (monthList == nil) then
                list={'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec' }
            else
                --for m=1,12 do list[m]=list[m]:sub(1,3) end
                list={}
                for m=1,12 do list[m]=utf8.sub(monthList[m],1,3) end
             --   v.font = "Roboto-Regular"
            end
            if (v.transform == 'uc') then for m=1,12 do list[m]=list[m]:upper() end end
        else
            local s = ring:split("-")
            start = s[1]
            stop = s[2]
        end
    end
    local color = temp.color
    local radius = temp.radius --+ temp.text_size/2
    local squarify = tonumber(v.squarify) or 100
    local hide = temp.hide_text:gsub(" ",""):split(",")
    local rot = 0   --   - (tonumber(temp.rotation) or 0)

    temp.angle_start = tonumber(temp.angle_start) or 0
    temp.angle_end = tonumber(temp.angle_end) or 360
    rot = rot- temp.angle_start
    local a = (temp.angle_end-temp.angle_start) / (math.abs(stop - start) + 1)
    temp.show_every = tonumber(temp.show_every) or 1
    print(start .. " to " .. stop .. " iter " .. iter, "show every " .. temp.show_every)
    for i = start, stop, iter do
        local found = false
        if hide then
            for t = 1, #hide do
                --              if (list == nil) then
                if (0 + hide[t] == i) then found = true end
                --              else
                --                  if (0 + hide[t] == list[i]) then found = true end
                --              end
            end
        end
        if (showevery == temp.show_every and not found) then
            --      print("creating rotated_text:", i,(rot - a * ang+90)%360, rot, - a * ang, "fonts/" .. v.font .. ".ttf")
            local lab = ''
            if (list == nil) then lab = ''..i else lab = list[i] end
            local sp = nil
            if v.font and string.find(v.font, "bm") then
                local fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                sp = cc.Label:createWithBMFont(fontName, lab:upper())
                print("creating rotated_text:", lab:upper(), fontName, sp)
                if (sp == nil) then
                    fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                    sp = cc.Label:createWithBMFont(fontName, lab)
                end
                local tSizeOrig = sp:getContentSize()
                sp:setScale(1.6 * temp.text_size / tSizeOrig.height)
                sp:setColor(self:hex2rgb(temp.color))
                radius = temp.radius / 1.6
                --  sp = cc.Label:createWithSystemFont(lab,"arial",temp.text_size*1.28)
                v.TTFFont=false
            else
                local fontName = "fonts/" .. v.font .. ".ttf"
                sp = WatchSkin:createTTFLabel(lab, fontName, temp.text_size*1.28)
                v.TTFFont=true
            end
            align(sp, v.alignment)
            local angle_rad = math.rad(rot - a * ang+90)
            local adj_radius = getSquarifyRadius(radius, angle_rad, squarify)
            sp:setPosition(adj_radius * math.cos(angle_rad), adj_radius * math.sin(angle_rad))
            if v.TTFFont then sp:setTextColor(self:hex2rgb(temp.color)) end
            if temp.shadow then
                sp:enableShadow(self:hex24B(temp.w_color, temp.w_opacity)
                    ,cc.size(2*temp.w_distance * math.cos(math.rad(temp.w_angle-90)),
                        2*temp.w_distance * math.sin(math.rad(temp.w_angle-90)))
                ) end
            if temp.rotated_text == "y" then
                sp:rotate(-rot + a * ang)
            elseif temp.rotated_text == "ru" then
                if ((rot - a * ang)%360 > 90 and (rot - a * ang)%360 < 270) then
                    sp:rotate(-rot + a * ang + 180)
                else
                    sp:rotate(-rot + a * ang)
                end
            elseif temp.rotated_text == "ri" then
                if ((rot - a * ang)%360 > 90 and (rot - a * ang)%360 < 270) then
                    sp:rotate(-rot + a * ang)
                else
                    sp:rotate(-rot + a * ang + 180)
                end
            end
            sp:addTo(layerNode)
        end
        ang = ang + 1

        showevery = showevery + 1
        if (showevery > temp.show_every) then showevery = 1 end
        if (showevery == temp.show_every and (math.abs(stop-i) ~= 1) and math.abs(stop-i-1) < temp.show_every) then showevery = showevery - 1 end

    end
    layerNode:setPosition(temp.x + 256, temp.y + 256)
    v.drawable = layerNode
end

function WatchSkin:createCalendar(v)
    local layerNode
    if (v.drawable == nil) then layerNode = cc.Layer:create()
    else
        layerNode = v.drawable
        layerNode:removeAllChildren()
    end

    local temp = evaluateDrawable(v)

    -- Get calendar parameters
    local margin_x = tonumber(temp.margin_x) or 5
    local margin_y = tonumber(temp.margin_y) or 5
    local text_size = tonumber(temp.text_size) or 10
    local color1 = temp.color or "ffffff"  -- header color
    local color2 = temp.color2 or temp.color or "ffffff"  -- date color
    local outside_opacity = tonumber(temp.outside_opacity) or 60
    local dow_start = tonumber(temp.dow_start) or 1  -- 1=Monday, 0=Sunday
    local no_letters_header = tonumber(temp.no_letters_header) or 1
    local alignment = temp.alignment
    if alignment == nil or alignment == "" then alignment = "cc" end

    -- Get current date from calendar object (set in updateMilli)
    local year = calendar.year or 2024
    local month = calendar.month or 1
    local day = calendar.day or 1

    -- Get weekday names (localized if available)
    local dayNames = {'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'}
    if dayList ~= nil then
        dayNames = dayList
    end

    -- Reorder based on dow_start
    local orderedDays = {}
    for i = 1, 7 do
        local idx = ((i - 1 + dow_start) % 7) + 1
        orderedDays[i] = dayNames[idx]
    end

    -- Calculate first day of month and days in month
    local function getDaysInMonth(y, m)
        local days = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
        if m == 2 and (y % 4 == 0 and (y % 100 ~= 0 or y % 400 == 0)) then
            return 29
        end
        return days[m]
    end

    local function getFirstDayOfMonth(y, m)
        -- Zeller's congruence to get day of week (0=Sunday)
        local q = 1
        local m_adj = m
        local y_adj = y
        if m_adj < 3 then
            m_adj = m_adj + 12
            y_adj = y_adj - 1
        end
        local k = y_adj % 100
        local j = math.floor(y_adj / 100)
        local h = (q + math.floor((13 * (m_adj + 1)) / 5) + k + math.floor(k / 4) + math.floor(j / 4) - 2 * j) % 7
        -- Convert to 0=Sunday
        local dow = (h + 6) % 7
        -- Adjust for dow_start
        return (dow - dow_start + 7) % 7
    end

    local daysInMonth = getDaysInMonth(year, month)
    local firstDay = getFirstDayOfMonth(year, month)

    -- Font setup
    local fontName
    local isBMFont = false
    if v.font and string.find(v.font, "bm") then
        fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
        isBMFont = true
    elseif v.font then
        fontName = "fonts/" .. v.font .. ".ttf"
    else
        fontName = nil  -- Use system font
    end

    -- Calculate calendar dimensions for alignment
    local cellWidth = text_size + margin_x
    local totalWidth = 7 * cellWidth
    local totalRows = math.ceil((daysInMonth + firstDay) / 7) + 1  -- +1 for header row
    local cellHeight = text_size + margin_y
    local totalHeight = totalRows * cellHeight

    -- Calculate offset based on alignment
    local offsetX = 0
    local offsetY = 0
    if alignment == "cc" or alignment == "tc" or alignment == "bc" then
        offsetX = -totalWidth / 2
    elseif alignment == "cr" or alignment == "tr" or alignment == "br" then
        offsetX = -totalWidth
    end
    if alignment == "cc" or alignment == "cl" or alignment == "cr" then
        offsetY = totalHeight / 2
    elseif alignment == "tc" or alignment == "tl" or alignment == "tr" then
        offsetY = totalHeight
    end
    -- Draw weekday headers
    local currentY = 0

    for i = 1, 7 do
        local dayName = orderedDays[i]
        local headerText = utf8.sub(dayName, 1, no_letters_header)
        if (v.transform == 'uc') then headerText = headerText:upper() end

        local label
        if isBMFont then
            label = cc.Label:createWithBMFont(fontName, headerText:upper())
            local tSizeOrig = label:getContentSize()
            label:setScale(1.6 * text_size / tSizeOrig.height)
        elseif fontName then
            label = WatchSkin:createTTFLabel(headerText, fontName, text_size * 1.28)
        else
            label = cc.Label:createWithSystemFont(headerText, "arial", text_size)
        end

        label:setTextColor(self:hex2rgb(color1))
        label:setAnchorPoint(cc.p(0.5, 0.5))
        local posX = (i - 1) * cellWidth + offsetX
        label:setPosition(posX, currentY + offsetY)
        label:addTo(layerNode)
    end

    -- Move to date rows
    currentY = currentY - (text_size + margin_y)

    -- Draw calendar dates
    local currentDate = 1
    local row = 0

    while currentDate <= daysInMonth do
        for col = 0, 6 do
            if (row == 0 and col < firstDay) or currentDate > daysInMonth then
                -- Empty cell
            else
                local dateText = string.format("%d", currentDate)

                local label
                if isBMFont then
                    label = cc.Label:createWithBMFont(fontName, dateText:upper())
                    local tSizeOrig = label:getContentSize()
                    label:setScale(1.6 * text_size / tSizeOrig.height)
                elseif fontName then
                    label = WatchSkin:createTTFLabel(dateText, fontName, text_size * 1.28)
                else
                    label = cc.Label:createWithSystemFont(dateText, "arial", text_size)
                end

                -- Determine opacity based on whether date is in the past
                local opacity = 255
                if currentDate < day then
                    opacity = outside_opacity * 2.55
                end

                label:setAnchorPoint(cc.p(0.5, 0.5))
                local posX = col * cellWidth + offsetX
                local posY = currentY - row * cellHeight + offsetY

                -- Highlight today with a rectangle
                if currentDate == day then
                    -- Create background rectangle
                    local rectWidth = text_size + 2
                    local rectHeight = text_size + 2
                    local rect = display.newSprite("shape_square.png")
                    rect:setScale(rectWidth / rect:getContentSize().width, rectHeight / rect:getContentSize().height)
                    rect:setPosition(posX, posY)
                    rect:setColor(self:hex2rgb(color2))
                    rect:addTo(layerNode)

                    -- Invert text color for today (use white for dark backgrounds, black for light)
                    local colorNum = tonumber(color2, 16) or 0xFFFFFF
                    -- Simple brightness check: if bright color, use black text; if dark, use white
                    local r = math.floor(colorNum / 65536) % 256
                    local g = math.floor(colorNum / 256) % 256
                    local b = colorNum % 256
                    local brightness = (r * 299 + g * 587 + b * 114) / 1000
                    local invertedColor = brightness > 128 and "000000" or "ffffff"
                    label:setTextColor(self:hex2rgb(invertedColor))
                else
                    label:setTextColor(self:hex2rgb(color2))
                end

                label:setPosition(posX, posY)
                label:setOpacity(opacity)
                label:addTo(layerNode)

                currentDate = currentDate + 1
            end
        end
        row = row + 1
    end

    v.drawable = layerNode
    v.actualText = string.format("%d-%d-%d", year, month, day)
end

function WatchSkin:createTextCurved(v)
    local layerNode
    if (v.drawable == nil) then layerNode = cc.Layer:create()
    else
        layerNode = v.drawable
        layerNode:removeAllChildren()
    end

    local fontName
    local temp = evaluateDrawable(v)
    local tempText
    local text = temp.text
 --   print("creating text curved:" , "fonts/" .. v.font .. ".ttf", temp.text)
    if (v.transform == 'uc') then text = temp.text:upper() end
    if v.font and string.find(v.font, "bm") then
        --       local fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
        fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
 --       print("creating BMLabel:" .. fontName, temp.text:upper())
        tempText  = cc.Label:createWithBMFont(fontName, temp.text:upper())
        if (tempText  == nil) then
            local fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
            tempText  = cc.Label:createWithBMFont(fontName, temp.text:upper())
        end
        local tSizeOrig = tempText:getContentSize()
        tempText:setScale(1.6 * temp.text_size / tSizeOrig.height)
        v.TTFFont=false
    else
        fontName = "fonts/" .. v.font .. ".ttf"
 --       print("creating text curved:" , "fonts/" .. v.font .. ".ttf", temp.text)
        --tempText = WatchSkin:createTTFLabel(text:gsub(' ','j'), fontName, temp.text_size*1.28)
        tempText = WatchSkin:createTTFLabel(text, fontName, temp.text_size*1.28)
        v.TTFFont=true
    end

    local radius = temp.radius --+ temp.text_size/2
    --temp.rotation = tonumber(temp.rotation) or 0
    local rot = 90  -- -temp.rotation + 90
    local rotPI = rot / 180 * math.pi
    local curvedUp = (temp.curve_dir=='Up')
    local ang=0
    local tw
    local a = {}
    local allAng = 0
    local maxAng = 0
    local nbspace=0
    for i=1,text:len() do
        local gt = tempText:getLetter(i-1)
        if gt then
            tw = gt:getBoundingBox().width
            if curvedUp then
                a[i] = math.atan(tw / (radius + 2*gt:getBoundingBox().height))
            else
                a[i] = math.atan(tw / radius)
            end
            if a[i] > maxAng then maxAng = a[i] end  -- patch for having fixed text width
            allAng = allAng + a[i]
        --    print(string.sub(text,i,i),tw,a[i],allAng)
        else
            a[i] = 0
        --    print(i,"nil value",allAng)
        end
        local letter = utf8.sub(text,i,i)
        if letter == ' ' then nbspace=nbspace+1 end
    end
    allAng = maxAng * (utf8.len(text) - nbspace/2)
    local coef = 1
    if not curvedUp then coef = -1 end
    rotPI = rotPI + coef * allAng / 2
    for i=1,utf8.len(text) do
        local sp
        local letter = utf8.sub(text,i,i)
        if letter == ' ' then
            a[i] = maxAng/2
        else
            a[i] = maxAng
        end
        if (v.TTFFont==true) then
            --sp = WatchSkin:createTTFLabel(string.sub(text,i,i), fontName, temp.text_size*1.28)
            sp = WatchSkin:createTTFLabel(letter, fontName, temp.text_size*1.28)
            :setTextColor(self:hex2rgb(temp.color))
        else
            --sp = cc.Label:createWithBMFont(fontName, string.sub(text,i,i):upper())
            sp = cc.Label:createWithBMFont(fontName, letter:upper())
            local tSizeOrig = sp:getContentSize()
            sp:setScale(1.6 * temp.text_size / tSizeOrig.height)
        end
        align(sp, 'cc') --v.alignment)
     --   print(string.sub(text,i,i),letter, text:len())
        ang = ang + a[i]/2    --/2 + (a[i+1] or 0)/2
        sp:setPosition( coef * radius * math.cos(rotPI - coef * ang),
                        coef * radius * math.sin(rotPI - coef * ang))
        sp:rotate(90 - math.deg(rotPI - coef * ang)):setOpacity(temp.opacity * 2.55)
        ang = ang + a[i]/2   --/2 + (a[i+1] or 0)/2
        sp:addTo(layerNode)
    end

    v.drawable = layerNode  --:setPosition(temp.x + 256, temp.y + 256)
    v.actualText = temp.text
end

function WatchSkin:onCreate()
    pcall(function() accelLayer:removeAllChildren() end)
    self:removeAllChildren()
    self.error = false
    colBackground=cc.c4f(0,0,0,1.0)
    local layer = display.newLayer():addTo(self)

    -- Store layer reference so we can unschedule update in onExit
    self.updateLayer = layer

    -- Apply unified offset calculations for scene positioning
    if (cc.exports.fullscreen == 0) then
        -- Mode 0: Vertical centered (fixed bug)
        self:move(getFullscreenMode0_XOffset(), 0)
    elseif (cc.exports.fullscreen == 2) then
        -- Mode 2: Horizontal centered
        self:move(0, getFullscreenMode2_YOffset())
    elseif (cc.exports.fullscreen == 3) then
        -- Mode 3: Vertical compatibility (old mode 0 with bug)
        self:move(getFullscreenMode3_XOffset(), 0)
    elseif (cc.exports.fullscreen == 4) then
        -- Mode 4: Horizontal compatibility (old mode 2, top-aligned)
        self:move(0, getFullscreenMode4_YOffset())
    end

    print("WatchSkin:onCreate()")

    --self:initWatch()
    self:initView(layer)
    --self:addChild(layer)
   lastDrawTime=0
    --WatchSkin:update()

    --if (cc.exports.fullscreen == 2) then self:move(0, round(display.height-display.width)) end
--    if (cc.exports.fullscreen == 2) then self:move(0, round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)) end

    layer:scheduleUpdate(handler(self, WatchSkin.update))
    print("WatchSkin:onCreate() success")
end

function WatchSkin:updateWeather()
    print("updateWeather")
    local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
    local ok,ret  = luaj.callStaticMethod(className,"updateWeather")
    if not ok then
        print("luaj error:", ret)
    else
        print("The ret is:", ret)
    end
end

function WatchSkin:replaceValueForText(value)
    value=value:gsub("{ddz","{tddz")
    :gsub("{dhz","{tdhz")
    :gsub("{dh11z","{tdh11z")
    :gsub("{dh23z","{tdh23z")
    :gsub("{dh24z","{tdh24z")
    :gsub("{dmz","{tdmz")
    :gsub("{dssz","{tdssz")
    :gsub("{dsz","{tdsz")
    :gsub("{swh","{tswh")
    :gsub("{swm","{tswm")
    :gsub("{sws","{tsws")

    if (string.match(value, "cd_[%d]+_[%d]+_[%d]+_df")) then
        local m,d,y = string.match(value, "cd_([%d]+)_([%d]+)_([%d]+)_df")
        value=value:gsub("{cd_[%d]+_[%d]+_[%d]+_df}",'math.floor((os.time({year='..y..',month='..m..',day='..d..',hour=0})-os.time())/24/60/60)')
    end
    --print("replaceValueForText",value)

    return value
end

function WatchSkin:parseWatchSkin(xmlTree)
    drawable = {}
    self.isAccel=false
    self.isCompass=false
    if xmlTree ~= nil then
        for i, xmlNode in pairs(xmlTree.ChildNodes) do
            --print("parsing", i, "Node Name=", xmlNode.Name);
            if (xmlNode.Name == "Layer") then
                local draw = {}
                for key, value in pairs(xmlNode.Attributes) do
                    --print("   Name=" .. key .. " value=" .. value);
                    value = xmlParser:FromXmlString(value)
                    value = value:gsub('display', 'mydisplay')
                    value = toLowerVar(value)
                    if key == "shader" and value == "hsv" then value = "GradientLinear" end
                    if string.find(value, "{sa") or string.find(value, "{sg") then self.isAccel = true end
                    -- Compass tags: {scr} {sct} {sctd} {scbb} {scsb} - not {scal} (calories)
                    if string.find(value, "{scr") or string.find(value, "{sct") or string.find(value, "{scb") or string.find(value, "{sct") then
                        self.isCompass = true
                    end

                    if (string.find(value, "string") or string.find(value, "{") or (string.find(value, "th") and not string.find(value, "rth")) or string.find(value, "tonumber") or string.find(value, "var") or string.find(value, "tween")) then

                        -- Process ALL counters - store parameters for mathematical calculation
                        local processed_any = true
                        while processed_any do
                            processed_any = false
                            local d,m,y,arg,wait

                            -- Check for rv_delay first (most specific rv pattern)
                            d,m,y,wait = string.match(value, "{c_(-?[%d,%p]+)_(-?[%d,%p]+)_([%d,%p]+)_rv_([%d]+)}")
                            if d then
                                local counter1 = 'c_'..d..'_'..m..'_'..y..'_rv'..'_'..wait
                                local counter = counter1:gsub('[-,%.]','m')
                                value=value:gsub('{'..counter1:gsub('-','%-') ..'}', '{tweens.'..counter..'}', 1)
                                -- Store parameters for math calculation (no scheduling)
                                counter_params[counter] = {from=tonumber(d), to=tonumber(m), duration=tonumber(y), mode='rv', delay=tonumber(wait)}
                                tweens[counter] = tonumber(d)
                                processed_any = true
                            else
                                -- Check for st/sp/rt/rp with delay
                                d,m,y,arg,wait = string.match(value, "{c_(-?[%d,%p]+)_(-?[%d,%p]+)_([%d,%p]+)_([sr]+[tp]+)_([%d]+)}")
                                if d then
                                    local counter1 = 'c_'..d..'_'..m..'_'..y..'_'..arg..'_'..wait
                                    local counter = counter1:gsub('[-,%.]','m')
                                    value=value:gsub('{'..counter1:gsub('-','%-') ..'}', '{tweens.'..counter..'}', 1)
                                    -- Store parameters (st=stop, rp=repeat, etc.)
                                    counter_params[counter] = {from=tonumber(d), to=tonumber(m), duration=tonumber(y), mode=arg, delay=tonumber(wait)}
                                    tweens[counter] = tonumber(d)
                                    processed_any = true
                                else
                                    -- Check for rv without delay
                                    d,m,y = string.match(value, "{c_(-?[%d,%p]+)_(-?[%d,%p]+)_([%d,%p]+)_rv}")
                                    if d then
                                        local counter1 = 'c_'..d..'_'..m..'_'..y..'_rv'
                                        local counter = counter1:gsub('[-,%.]','m')
                                        value=value:gsub('{'..counter1:gsub('-','%-') ..'}', '{tweens.'..counter..'}', 1)
                                        counter_params[counter] = {from=tonumber(d), to=tonumber(m), duration=tonumber(y), mode='rv', delay=0}
                                        tweens[counter] = tonumber(d)
                                        processed_any = true
                                    else
                                        -- Check for st/sp/rt/rp without delay
                                        d,m,y,arg = string.match(value, "{c_(-?[%d,%p]+)_(-?[%d,%p]+)_([%d,%p]+)_([sr]+[tp]+)}")
                                        if d then
                                            local counter1 = 'c_'..d..'_'..m..'_'..y..'_'..arg
                                            local counter = counter1:gsub('[-,%.]','m')
                                            value=value:gsub('{'..counter1:gsub('-','%-') ..'}', '{tweens.'..counter..'}', 1)
                                            counter_params[counter] = {from=tonumber(d), to=tonumber(m), duration=tonumber(y), mode=arg, delay=0}
                                            tweens[counter] = tonumber(d)
                                            processed_any = true
                                        end
                                    end
                                end
                            end
                        end

     --                   if key == 'text' and string.match(value, "cd_[%d]+_[%d]+_[%d]+_df") then
    --                        local d,m,y = string.match(value, "cd_([%d]+)_([%d]+)_([%d]+)_df")
                        --    draw[key] = assert(loadstring('return math.floor((os.time({year='..y..',month='..m..',day='..d..',hour=0})-os.time())/24/60/60)'))
                        --    print('return evalText([[]]..math.floor((os.time({year='..y..',month='..m..',day='..d..',hour=0})-os.time())/24/60/60))')
      --                      draw[key] = assert(loadstring('return evalText([[]]..math.floor((os.time({year='..y..',month='..m..',day='..d..',hour=0})-os.time())/24/60/60))'))
      --                  else
                        if key == 'text' and not (string.find(value, "and") or string.find(value, "sub") or string.find(value, "format") or string.find(value, "math") or string.find(value, "cd_")) then
                            value=WatchSkin:replaceValueForText(value)
                            draw[key] = assert(loadstring('return evalText(\'' .. value:gsub("'", '@@'):gsub("\n", '<BR>'):gsub("\\", '\\\\') .. '\')'))
                        elseif key == 'cond_value' or key == 'text' then
                            value=WatchSkin:replaceValueForText(value)
                            draw[key] = assert(loadstring('return evalText(\'' .. value:gsub("'", '"'):gsub("\n", ' '):gsub("\\", '\\\\') .. '\')'))
                        elseif key == 'labels' or key == 'lines' or key == 'data_points' or key == 'min_max' then
                            -- Chart attributes: keep curly braces for variable substitution
                            draw[key] = value
                        elseif key == 'tap_action' or key == 'path' or key == 'name' or key == 'font' or key == 'shader' then
                        --value = value:gsub('{', ''):gsub('}', '')
                            value=value:gsub("{(%w+)}", '%1')
                            draw[key] = value
                        else
                            value = value:gsub('"{', ''):gsub('}"', '')
                            value = value:gsub("'{", ''):gsub("}'", '')
                            value = value:gsub('{', ''):gsub('}', '')
                         --   print ("updated value:", value)
                            local status, error = pcall(function() newfunc = assert(loadstring('return ' .. value)) end)
                            if status then
                                draw[key] = newfunc
                            else
                                print ("key",key,"error in value:", value, error)
                                draw[key] = 0
                            end
                            --draw[key] = assert(loadstring('return ' .. value))
                        end
                    else
                        draw[key] = value
                    end
                end
                draw.gyro=tonumber(draw.gyro) or 0
                if draw.gyro ~= 0 then self.isAccel = true end
                if draw.display == 'b' then draw.display = 1
                elseif draw.display == 'd' then draw.display = 2
                elseif draw.display == 'bd' or (draw.display == '') then draw.display = 3
                else draw.display = 0
                end
                if draw.display ~= 0 then --and i ~= 2 then
                    if draw.type == "series" then
                        local valprev={}   --"na"
                        local valcur="na"
                        local valafter={}   --"na"
                        --draw.series="dh24z"
                        if draw.series == "dmz" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%02d", os.date("*t", os.time() - ' .. ser .. '*60).min)')) end
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%02d", os.date("*t", os.time() + ' .. ser .. '*60).min)')) end
                            valcur   = assert(loadstring('return string.format("%02d", os.date("*t", os.time()).min)'))
                        elseif draw.series == "dm" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%d", os.date("*t", os.time() - ' .. ser .. '*60).min)')) end
                            valcur   = assert(loadstring('return string.format("%d", os.date("*t", os.time()).min)'))
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%d", os.date("*t", os.time() + ' .. ser .. '*60).min)')) end
                        elseif draw.series == "dhz" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%02d", os.date("%I", os.time() - ' .. ser .. '*3600))')) end
                            valcur   = assert(loadstring('return string.format("%02d", os.date("%I", os.time()))'))
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%02d", os.date("%I", os.time() + ' .. ser .. '*3600))')) end
                        elseif draw.series == "dh" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%d", os.date("%I", os.time() - ' .. ser .. '*3600))')) end
                            valcur   = assert(loadstring('return string.format("%d", os.date("%I", os.time()))'))
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%d", os.date("%I", os.time() + ' .. ser .. '*3600))')) end
                        elseif draw.series == "dh24z" or draw.series == "dh23z" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%02d", os.date("*t", os.time() - ' .. ser .. '*3600).hour)')) end
                            valcur   = assert(loadstring('return string.format("%02d", os.date("*t", os.time()).hour)'))
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%02d", os.date("*t", os.time() + ' .. ser .. '*3600).hour)')) end
                        elseif draw.series == "dh24" then
                            for ser=1,7 do valprev[ser] = assert(loadstring('return string.format("%d", os.date("*t", os.time() - ' .. ser .. '*3600).hour)')) end
                            valcur   = assert(loadstring('return string.format("%d", os.date("*t", os.time()).hour)'))
                            for ser=1,7 do valafter[ser] = assert(loadstring('return string.format("%d", os.date("*t", os.time() + ' .. ser .. '*3600).hour)')) end
                        elseif draw.series == "ddw" then
                            valcur   = assert(loadstring('return string.format("%s", ddw)'))
                            if not (dayList == nil) then
                                --   for ser=1,3 do print ("series", 'return string.format("%d %s", os.date("*t", os.time()-3600*24*' .. ser .. ').day, utf8.sub(dayList[1+(ddw0-' .. ser .. ')%7],1,3))') end
                                for ser=1,3 do valprev[ser] = assert(loadstring('return string.format("%s", utf8.sub(dayList[1+(ddw0-' .. ser .. ')%7],1,3))')) end
                                for ser=1,3 do valafter[ser] = assert(loadstring('return string.format("%s", utf8.sub(dayList[1+(ddw0+' .. ser .. ')%7],1,3))')) end
                            else
                                for ser=1,3 do valprev[ser] = assert(loadstring('return string.format("%s", "")')) end
                                for ser=1,3 do valafter[ser] = assert(loadstring('return string.format("%s", "")')) end
                            end
                        elseif draw.series == "dd_ddw" then
                            valcur   = assert(loadstring('return string.format("%d %s", dd, ddw)'))
                            if not (dayList == nil) then
                                --   for ser=1,3 do print ("series", 'return string.format("%d %s", os.date("*t", os.time()-3600*24*' .. ser .. ').day, utf8.sub(dayList[1+(ddw0-' .. ser .. ')%7],1,3))') end
                                for ser=1,3 do valprev[ser] = assert(loadstring('return string.format("%d %s", os.date("*t", os.time()-3600*24*' .. ser .. ').day, utf8.sub(dayList[1+(ddw0-' .. ser .. ')%7],1,3))')) end
                                for ser=1,3 do valafter[ser] = assert(loadstring('return string.format("%d %s", os.date("*t", os.time()+3600*24*' .. ser .. ').day, utf8.sub(dayList[1+(ddw0+' .. ser .. ')%7],1,3))')) end
                            else
                                for ser=1,3 do valprev[ser] = assert(loadstring('return string.format("%d %s", os.date("*t", os.time()-3600*24*' .. ser .. ').day, "")')) end
                                for ser=1,3 do valafter[ser] = assert(loadstring('return string.format("%d %s", os.date("*t", os.time()+3600*24*' .. ser .. ').day, "")')) end
                            end
                        elseif draw.series == "dnnn" then
                            valcur   = assert(loadstring('return string.format("%s", dnnn)'))
                            if not (monthList == nil) then
                                -- Calculate previous and future months using current month (dn is 1-12)
                                -- Calculation must be inside loadstring to happen at runtime
                                for ser=1,5 do
                                    valprev[ser] = assert(loadstring('return string.format("%s", utf8.sub(monthList[((dn - 1 - ' .. ser .. ') % 12) + 1],1,3))'))
                                end
                                for ser=1,5 do
                                    valafter[ser] = assert(loadstring('return string.format("%s", utf8.sub(monthList[((dn - 1 + ' .. ser .. ') % 12) + 1],1,3))'))
                                end
                            else
                                for ser=1,5 do valprev[ser] = assert(loadstring('return string.format("%s", "")')) end
                                for ser=1,5 do valafter[ser] = assert(loadstring('return string.format("%s", "")')) end
                            end
                        end

                        draw.text = valcur
                        draw.type = "text"
                        local drawS = shallowcopy(draw)
                        drawS.font = draw.font2
                        drawS.text_size = draw.text_size2
                        drawS.color = draw.color2
                        local drawPrevS = {}
                        local drawAfterS = {}
                        local maxSer = 7  -- Default to 7 for most series
                        if draw.series == "ddw" or draw.series == "dd_ddw" then
                            maxSer = 3  -- Use 3 for day-of-week series (3 before + current + 3 after = 7 days)
                        elseif draw.series == "dnnn" then
                            maxSer = 5  -- Use 5 for month series (5 before + current + 5 after = 11 months)
                        end
                        for ser=1,maxSer do
                            drawPrevS[ser] = shallowcopy(drawS)
                            drawPrevS[ser].text = valprev[ser]
                            drawAfterS[ser] = shallowcopy(drawS)
                            drawAfterS[ser].text = valafter[ser]
                            if draw.orientation == "v" then
                                drawPrevS[ser].y = drawPrevS[ser].y - ser * (draw.spacing + draw.text_size)
                                drawAfterS[ser].y = drawAfterS[ser].y + ser * (draw.spacing + draw.text_size)
                            else
                                drawPrevS[ser].x = drawPrevS[ser].x - ser * (draw.spacing + draw.text_size)
                                drawAfterS[ser].x = drawAfterS[ser].x + ser * (draw.spacing + draw.text_size)
                            end
                        end
                        if draw.current_pos == "m"  then
                            for ser=1,maxSer do table.insert(drawable, #drawable + 1, drawPrevS[ser]) end
                            table.insert(drawable, #drawable + 1, draw)
                            for ser=1,maxSer do table.insert(drawable, #drawable + 1, drawAfterS[ser]) end
                        elseif draw.current_pos == "f" or current_pos == "u" then -- first or unmoved
                            table.insert(drawable, #drawable + 1, draw)
                            for ser=1,maxSer do table.insert(drawable, #drawable + 1, drawAfterS[ser]) end
                        elseif draw.current_pos == "l" then -- last
                            for ser=1,maxSer do table.insert(drawable, #drawable + 1, drawPrevS[ser]) end
                            table.insert(drawable, #drawable + 1, draw)
                        end
                    else
                        table.insert(drawable, #drawable + 1, draw)
                    end
                end
            end
        end
    end
    return drawable
end

--[[function WatchSkin:loadDrawableArray(xmlTree)
    local drawables = {}
    local skin = self:getSkin()
    if xmlTree ~= nil then
        for i, xmlNode in pairs(xmlTree.ChildNodes) do
            if (xmlNode.Name == "image") then
                local sp
                local status, err = pcall(function() sp = display.newSprite(pathZIP .. skinZIP .. xmlNode.Value) end)
                if sp then
                    print("loading sprite:" .. skin .. xmlNode.Value)
                    sp:setScale(myscale)
                    table.insert(drawables, #drawables + 1, sp)
                end
            end
        end
    end
    return drawables
end]]

function WatchSkin:update()
--    if (cc.exports.fullscreen == 2) then display.getRunningScene():move(0, round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)+1) end

    --    display.setAutoScale(CC_DESIGN_RESOLUTION)
    -- print("lua version", _VERSION)
    --print (var_i, var_t, tab_hr_mem[1], tab_hr_mem[2])
    --var_t=2
    display.getRunningScene():setScale(cc.exports.displayscale)
    --accelLayer:sortAllChildren()
    --WatchSkin:updateMilli
    local status, error = pcall(function() self:updateMilli() end )
    if status==false and not self.error then
        print ("Error in update()", error)
        self.error = true
        -- Show error in Android AlertDialog
        pcall(function()
            if luaj then
                local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                local title = "Watch Face Runtime Error"
                local message = "Error during watch face update:\n\n" .. tostring(error)
                local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                if not ok then
                    print("Failed to show error dialog:", ret)
                end
            end
        end)
    end
end

function WatchSkin:updateMilli()
    -- Update system info variables from cc.exports
    updateSystemInfoVars()

    local currentTime = os.time()
    local socktime = socket.gettime()
    local milli = math.floor(math.fmod(socktime,1)*1000)
    local batteryLevel=cc.exports.batteryLevelInfo
    local calendar = os.date("*t")
    local hour24 = calendar.hour --os.date("%H")   1-24
    local hour = os.date("%I") + 0 --  1-12
    local minute = calendar.min --os.date("%M")
    local second = calendar.sec --os.date("%S")
    local year = calendar.year
    local month = calendar.month -- 1-13
    local day = calendar.day -- 1-31
    local weekday = os.date("%w") -- [0-6 = Sunday-Saturday]
    local moon=round(calculateMoonPhase(year, month, day)/30*8) + 1 -- cc.exports.moonphase+1

    -- Refresh watch data on day change or periodically based on FPS
    -- Low FPS (1-5): refresh every 60 seconds
    -- Higher FPS (15+): refresh every 5 seconds
    if (oldday ~= weekday or (currentTime-lastDrawTime > 5 and cc.exports.skindisplay >= 15)
            or (currentTime-lastDrawTime > 60 and cc.exports.skindisplay <= 5)) then
        oldday=weekday
        lastDrawTime = currentTime
        self:initWatch()
    end
    c_elapsed=socktime-c_elapsed_start

    -- Stopwatch Tags
    --iSWduration = 0;
    if (isSWstarted) then
        iSWduration = socktime - istartTime
    else
        istartTime = socktime - istopTime
        iSWduration = istopTime
    end
    iSWduration = iSWduration * 1000
    swsst = math.floor(iSWduration)  --iSWmilli
    iSWhour    = math.floor(iSWduration / 3600000)
    iSWduration = iSWduration - iSWhour * 3600000
    iSWminutes = math.floor(iSWduration / 60000)
    iSWduration = iSWduration - iSWminutes * 60000
    iSWseconds = math.floor(iSWduration / 1000)
    iSWduration = iSWduration - iSWseconds * 1000
    iSWmilli   = math.floor(iSWduration)
    iSWminuteRotate = iSWminutes * 6.0
    iSWsecondRotate = iSWseconds * 6.0
    iSWmilliRotate = iSWsecondRotate + 6 * iSWmilli /1000

    swh = iSWhour -- tostring(string.format("%02d",iSWhour))
    tswh = string.format("@@%02d@@",iSWhour)
    swm = iSWminutes  -- tostring(string.format("%02d",iSWminutes))
    tswm = string.format("@@%02d@@",iSWminutes)
    sws = iSWseconds  --tostring(string.format("%02d",iSWseconds))
    tsws = string.format("@@%02d@@",iSWseconds)
    --swsst = iSWmilli
    swss = math.floor(iSWmilli / 10)   --string.format("@@%02d", swsst / 10)
    swsss = iSWmilli       --string.format("@@%03d", swsst)
    tswsss = string.format("@@%03d@@",swsss)
    tswss = string.format("@@%02d@@",swss)
    tswsst = swsst --string.format("@@%03d@@",swsst)
    if (isSWstarted) then swr = true else swr = false end
    swrm = iSWminuteRotate
    swrs = iSWsecondRotate
    swrss = iSWmilliRotate

    drs = 6 * second
    drm = 6 * minute + second / 10
    drh = 30 * hour + minute / 2
    drh0 = 30 * hour
    drss = 6 * second + 6 * milli /1000
    drms = 360 * milli /1000
    drh24 = (hour24+minute/60) * 360 / 24

    dm = 6 * minute + second / 10
    br = batteryLevel *3.60
    pbr = br
    dd = day
    ddim = get_days_in_month(month, year)
    ddz = string.format("%02d", day)
    tddz = string.format("@@%02d@@", day)
    ddy = tonumber(os.date("%j")) -- Calendar.DAY_OF_YEAR

    ddww = cc.exports.skinday -- os.date("%A") --'" + ddww + "'"

    -- Future days of week (1-7 days ahead)
    local now = os.time()

    -- Day 1 (tomorrow)
    local day1 = now + 86400  -- +1 day
    ddww_1 = os.date("%A", day1)
    ddw_1 = utf8.sub(ddww_1, 1, 3)
    ddw2_1 = utf8.sub(ddw_1, 1, 2)
    ddw1_1 = utf8.sub(ddw_1, 1, 1)

    -- Day 2
    local day2 = now + (86400 * 2)  -- +2 days
    ddww_2 = os.date("%A", day2)
    ddw_2 = utf8.sub(ddww_2, 1, 3)
    ddw2_2 = utf8.sub(ddw_2, 1, 2)
    ddw1_2 = utf8.sub(ddw_2, 1, 1)

    -- Day 3
    local day3 = now + (86400 * 3)  -- +3 days
    ddww_3 = os.date("%A", day3)
    ddw_3 = utf8.sub(ddww_3, 1, 3)
    ddw2_3 = utf8.sub(ddw_3, 1, 2)
    ddw1_3 = utf8.sub(ddw_3, 1, 1)

    -- Day 4
    local day4 = now + (86400 * 4)  -- +4 days
    ddww_4 = os.date("%A", day4)
    ddw_4 = utf8.sub(ddww_4, 1, 3)
    ddw2_4 = utf8.sub(ddw_4, 1, 2)
    ddw1_4 = utf8.sub(ddw_4, 1, 1)

    -- Day 5
    local day5 = now + (86400 * 5)  -- +5 days
    ddww_5 = os.date("%A", day5)
    ddw_5 = utf8.sub(ddww_5, 1, 3)
    ddw2_5 = utf8.sub(ddw_5, 1, 2)
    ddw1_5 = utf8.sub(ddw_5, 1, 1)

    -- Day 6
    local day6 = now + (86400 * 6)  -- +6 days
    ddww_6 = os.date("%A", day6)
    ddw_6 = utf8.sub(ddww_6, 1, 3)
    ddw2_6 = utf8.sub(ddw_6, 1, 2)
    ddw1_6 = utf8.sub(ddw_6, 1, 1)

    -- Day 7
    local day7 = now + (86400 * 7)  -- +7 days
    ddww_7 = os.date("%A", day7)
    ddw_7 = utf8.sub(ddww_7, 1, 3)
    ddw2_7 = utf8.sub(ddw_7, 1, 2)
    ddw1_7 = utf8.sub(ddw_7, 1, 1)

    --ddw = string.sub(ddww, 1, 3)  --  os.date("%a") --'" + ddw + "'"
    --ddw2 = string.sub(ddw, 1, 2) --'" + ddw2 + "'"
    ddw = utf8.sub(ddww, 1, 3)  --  os.date("%a") --'" + ddw + "'"
    ddw2 = utf8.sub(ddw, 1, 2) --'" + ddw2 + "'"
    ddw1 = utf8.sub(ddw, 1, 1)
    ddw0 = tonumber(os.date("%w")) --'" + t_week+1 + "'"

    dn = month
    dnn = month
    dnnnn = cc.exports.skinmonth -- os.date("%B")
    --dnnn = string.sub(dnnnn, 1, 3) --os.date("%b")
    dnnn = utf8.sub(dnnnn, 1, 3) --os.date("%b")

    dy = tonumber(string.sub(year, 3, 4))
    dyy = year

    dh = hour
    dh11 = hour
    dh24 = hour24
    if hour24 == 24 then dh23 = 0 else dh23 = hour24 end
    dhz = string.format("%02d", dh)
    dh11z = string.format("%02d", dh11)
    dh23z = string.format("%02d", dh23)
    dh24z = string.format("%02d", dh24)
    tdhz = string.format("@@%02d@@", dh)
    tdh11z = string.format("@@%02d@@", dh11)
    tdh23z = string.format("@@%02d@@", dh23)
    tdh24z = string.format("@@%02d@@", dh24)

    dhutc12 = os.date("!%I")  --}	Hour in day UTC (12 hr)	8
    dhutc12z = string.format("%02d", dhutc12) -- Hour in day UTC (12 hr with leading zero)	08
    dhutc24 = os.date("!%H") -- 	Hour in day UTC (24 hr)	20
    dhutc24z = string.format("%02d", dhutc24) -- Hour in day UTC (24 hr with leading zero)	20
    dutcoff = (dh24 - dhutc24) * 60 + (minute - os.date("!%M"))  --	UTC Offset
    dutcoffMinutes=dutcoff
    local hdiff = math.floor(dutcoff/60)
    local dutcoff_value = hdiff * 100 + dutcoff - hdiff*60
    -- Add +/- sign to UTC offset
    if dutcoff_value >= 0 then
        dutcoff = string.format("+%04d", dutcoff_value)
    else
        dutcoff = string.format("%05d", dutcoff_value)  -- Negative sign included automatically
    end

    -- Epoch seconds (Unix timestamp)
    depoch = os.time()

    dht = numberToString(hour)
    dh24t = numberToString(hour24)
    dmt = math.modf(minute/10)
    dmo = minute%10

    if (minute == 0) then
        dmtt = "o'"
        dmot = "clock"
    elseif (minute < 10) then
        dmtt = "o'"
        dmot = numberToString(minute)
    elseif (minute < 20) then
        dmtt = numberToString(minute)
        dmot = ""
    else
        dmtt = numberToString(dmt*10)
        if (dmo == 0) then dmot = "" else dmot = numberToString(dmo) end
    end
    dmat = dmtt .. dmot  --numberToString(minute)

    dhtt = math.modf(hour/10)
    dhto = hour%10
    dh11tt = math.modf(dh11/10)
    dh11to = dh11%10
    dh23tt = math.modf(dh23/10)
    dh23to = dh23%10
    dh24tt = math.modf(dh24/10)
    dh24to = dh24%10

    dm = minute
    dmz = string.format("%02d", dm)
    tdmz = string.format("@@%02d@@", dm)

    bl = batteryLevel
    pbl = batteryLevel

    dss = milli
    dssz = string.format("%03d", milli)
    tdssz = string.format("@@%03d@@", milli)
    ds = second
    dsz = string.format("%02d", second)
    tdsz = string.format("@@%02d@@", second)
    dsps = second * 1000 + milli
    -- Second tens and ones
    dst = math.modf(second/10)
    dso = second%10
    -- Second text (like minute text)
    if (second == 0) then
        dstt = "o'"
        dsot = "clock"
    elseif (second < 10) then
        dstt = "o'"
        dsot = numberToString(second)
    elseif (second < 20) then
        dstt = numberToString(second)
        dsot = ""
    else
        local st = math.modf(second/10)
        local so = second%10
        dstt = numberToString(st*10)
        if (so == 0) then dsot = "" else dsot = numberToString(so) end
    end
    dsat = dstt .. dsot

    dtp = (hour24+minute/60) / 24

    -- Calculate wisday (daytime indicator) based on sunrise/sunset
    local current_time_decimal = hour24 + minute/60
    local sunrise_hour, sunrise_min = cc.exports.sunrise:match("(%d+):(%d+)")
    local sunset_hour, sunset_min = cc.exports.sunset:match("(%d+):(%d+)")
    local sunrise_decimal = tonumber(sunrise_hour) + tonumber(sunrise_min)/60
    local sunset_decimal = tonumber(sunset_hour) + tonumber(sunset_min)/60

    if current_time_decimal >= sunrise_decimal and current_time_decimal < sunset_decimal then
        wisday = true
    else
        wisday = false
    end

    wmp = moon --phase

    ssc = cc.exports.skinsteps -- stepCount
    shr = cc.exports.shr -- lastHeartRate (latest)
    shr_1 = cc.exports.shr_1 -- Heart rate 1 reading ago
    shr_2 = cc.exports.shr_2 -- Heart rate 2 readings ago
    shr_3 = cc.exports.shr_3 -- Heart rate 3 readings ago
    shr_4 = cc.exports.shr_4 -- Heart rate 4 readings ago
    shr_5 = cc.exports.shr_5 -- Heart rate 5 readings ago
    shr_6 = cc.exports.shr_6 -- Heart rate 6 readings ago
    shr_7 = cc.exports.shr_7 -- Heart rate 7 readings ago
    shr_8 = cc.exports.shr_8 -- Heart rate 8 readings ago
    shr_9 = cc.exports.shr_9 -- Heart rate 9 readings ago (oldest)
    sthr = cc.exports.sthr -- Highest heart rate tracked

    -- Calculate heart rate percentage (shr/sthr)
    if sthr > 0 then
        shrp = (shr / sthr) * 100
    else
        shrp = 0
    end

    sbo = cc.exports.sbo -- bloodOxygen

    -- Alarm data
    aalo = cc.exports.alarmEnabled -- alarm on (0 or 1)
    -- Format with leading zeros: 05:00 instead of 5:0
    if cc.exports.alarmHour ~= "" and cc.exports.alarmMinute ~= "" then
        aalh23z = string.format("%02d", tonumber(cc.exports.alarmHour) or 0)
        aalmz = string.format("%02d", tonumber(cc.exports.alarmMinute) or 0)
    else
        aalh23z = ""
        aalmz = ""
    end

    if self.isCompass then
        -- Update compass values
        local compassOk, compassStr = pcall(function()
            local className = "org/cocos2dx/lib/Cocos2dxHelper"
            local sigs = "()Ljava/lang/String;"
            local ok, ret = luaj.callStaticMethod(className, "getCompassValueString", nil, sigs)
            if ok and ret then
                return ret
            end
            return nil
        end)

        if compassOk and compassStr and compassStr ~= "" then
            -- Parse "x,y,z" format
            local values = {}
            for val in compassStr:gmatch("[^,]+") do
                table.insert(values, tonumber(val))
            end

            if #values >= 2 then
                local mx, my = values[1], values[2]

                -- Calculate heading from magnetometer (0-360 degrees)
                -- In Android: 0° = North, 90° = East, 180° = South, 270° = West
                -- Formula: heading = atan2(-mx, my) for device held flat, top pointing north
                local heading = math.deg(math.atan2(-mx, my))
                if heading < 0 then heading = heading + 360 end

                scr = -heading  -- compass rotation (negated to match watch format)
                sct = math.floor(heading)  -- compass text (integer degrees)
                sctd = string.format("%.1f", heading)  -- compass decimal

                -- Convert to compass direction (8 directions)
                local dirs = {"N", "NE", "E", "SE", "S", "SW", "W", "NW"}
                local dirIndex = math.floor((heading + 22.5) / 45) % 8 + 1
                scb = dirs[dirIndex]

                -- Convert to compass direction (16 directions)
                local dirs16 = {"N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE",
                                "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"}
                local dirIndex16 = math.floor((heading + 11.25) / 22.5) % 16 + 1
                scbb = dirs16[dirIndex16]

                sctdb = string.format("%d° %s", math.floor(heading), scb)
                sctdbb = string.format("%d° %s", math.floor(heading), scbb)

                -- Debug: uncomment to see raw magnetometer values
                -- print("Compass: mx=" .. mx .. " my=" .. my .. " heading=" .. heading .. "° " .. scbb)
            end
        end
    end

    if hour24 > 11 then da = 'PM' else da = 'AM' end --" + (isAM ? "AM" : "PM") + "'"
    dw = getWeekNumberOfYear(os.time{year=year, month=month, day=day, hour=0})   --currentTime) -- cal.get(Calendar.WEEK_OF_YEAR)
    -- Calculate week in month (1-5)
    dwm = math.ceil(day / 7)
    pblp = string.format("%d%%%%",batteryLevel) --'" + batteryLevel + "%%'"
    blp  = pblp

    wl = cc.exports.location[1]
    tz1l = cc.exports.location[2]
    tz1ll = tz1l  -- Long location name (same as short for now)
    local t = cc.exports.locationOffset[2] * 60 * 60
    if t< 0 then tz1o = os.date("-%H:%M", -t- 3600) else tz1o = os.date("+%H:%M", t- 3600) end
    -- Timezone offset in minutes with sign
    local tz1_offset_minutes = cc.exports.locationOffset[2] * 60
    if tz1_offset_minutes >= 0 then
        tz1om = "+" .. tz1_offset_minutes
    else
        tz1om = tostring(tz1_offset_minutes)
    end
    tz1dst = "false"  -- DST indicator (not available, return false)
    tz1t = os.date("!%H:%M",os.time() + t)
    tz1rh=drh + cc.exports.locationOffset[2] * 30 - dutcoffMinutes/2
    tz1rh24=drh24 + cc.exports.locationOffset[2] * 360 / 24 - dutcoffMinutes/60 * 360 / 24
    tz1rm=(drm + cc.exports.locationOffset[2] * 360 - dutcoffMinutes*6)%360
    --print(os.date("!%H:%M UTC %z", os.time()))
    --print(wl, tz1l, t, tz1t, tz1rh, tz1rh24, tz1rm%360)
    tz2l = cc.exports.location[3]
    tz2ll = tz2l  -- Long location name (same as short for now)
    tz2o = cc.exports.locationOffset[3]
    t = cc.exports.locationOffset[3] * 60 * 60
    if t< 0 then tz2o = os.date("-%H:%M", -t- 3600) else tz2o = os.date("+%H:%M", t- 3600) end
    -- Timezone offset in minutes with sign
    local tz2_offset_minutes = cc.exports.locationOffset[3] * 60
    if tz2_offset_minutes >= 0 then
        tz2om = "+" .. tz2_offset_minutes
    else
        tz2om = tostring(tz2_offset_minutes)
    end
    tz2dst = "false"  -- DST indicator (not available, return false)
    tz2t = os.date("!%H:%M",os.time() + t)
    tz2rh=drh + cc.exports.locationOffset[3] * 30 - dutcoffMinutes/2
    tz2rh24=drh24 + cc.exports.locationOffset[3] * 360 / 24 - dutcoffMinutes/60 * 360 / 24
    tz2rm=(drm + cc.exports.locationOffset[3] * 360 - dutcoffMinutes*6)%360

    tz3l = cc.exports.location[4]
    tz3ll = tz3l  -- Long location name (same as short for now)
    tz3o = cc.exports.locationOffset[4]
    t = cc.exports.locationOffset[4] * 60 * 60
    if t< 0 then tz3o = os.date("-%H:%M", -t- 3600) else tz3o = os.date("+%H:%M", t- 3600) end
    -- Timezone offset in minutes with sign
    local tz3_offset_minutes = cc.exports.locationOffset[4] * 60
    if tz3_offset_minutes >= 0 then
        tz3om = "+" .. tz3_offset_minutes
    else
        tz3om = tostring(tz3_offset_minutes)
    end
    tz3dst = "false"  -- DST indicator (not available, return false)
    tz3t = os.date("!%H:%M",os.time() + t)
    tz3rh=drh + cc.exports.locationOffset[4] * 30 - dutcoffMinutes/2
    tz3rh24=drh24 + cc.exports.locationOffset[4] * 360 / 24 - dutcoffMinutes/60 * 360 / 24
    tz3rm=(drm + cc.exports.locationOffset[4] * 360 - dutcoffMinutes*6)%360

    scal = cc.exports.calorie
    sdst = cc.exports.distance
    stsc = cc.exports.targetSteps

    -- Hardcoded target values
    sdstu = "KM"  -- Distance unit
    stdst = 10    -- Target distance
    stcal = 400   -- Target calories

    -- Calculate percentages
    if stsc > 0 then
        sscp = (ssc / stsc) * 100  -- Step count percentage
    else
        sscp = 0
    end

    if stdst > 0 then
        sdstp = (sdst / stdst) * 100  -- Distance percentage
    else
        sdstp = 0
    end

    if stcal > 0 then
        scalp = (scal / stcal) * 100  -- Calorie percentage
    else
        scalp = 0
    end

    var_weathertext = {}
    -- Bright mode: FPS >= 15 (normal operation)
    -- Dim mode: FPS < 15 (power saving, use dim colors and black background)
    if cc.exports.skindisplay >= 15 or cc.exports.skindisplay == 0 then
        abright = true
        cc.Director:getInstance():setClearColor(colBackground)
        if olddisplay ~= cc.exports.skindisplay then
            olddisplay = cc.exports.skindisplay
            for svar, sfunc in pairs(counterschedule) do
                pcall(assert(loadstring(sfunc)))
            end
        end

        -- Check for transition from dim to bright (restart_on_bright trigger)
        -- Calculate absolute time in milliseconds
        local currentAbsoluteMs = os.time() * 1000 + milli

        if not previousAbright then
            -- Just transitioned to bright mode, restart animations with restart_on_bright
            -- Track time when bright mode started (use absolute time)
            brightModeStartTime = currentAbsoluteMs
            for k, v in pairs(drawable) do
                if v.restart_on_bright and v.animState and v.drawable then
                    local label = v.drawable
                    -- Verify label is valid before restarting
                    local labelValid = pcall(function() return label:getOpacity() end)
                    if labelValid then
                        WatchSkinTextAnim.restartAnimation(v, label)
                    end
                end
            end
        elseif not brightModeStartTime then
            brightModeStartTime = currentAbsoluteMs
        end

        -- Calculate time since bright mode started
        local timeSinceBright = currentAbsoluteMs - (brightModeStartTime or currentAbsoluteMs)
        abss = timeSinceBright  -- ms since bright
        abssl = timeSinceBright / 1000.0  -- seconds since bright (with decimal)
        if abssl > 30 then abssl = 30.0 end  -- Cap to 30 seconds
        previousAbright = true
    else
        abright = false
        previousAbright = false
        brightModeStartTime = nil  -- Reset timer when entering dim mode
        abss = -1  -- -1 when dim
        abssl = -1  -- -1 when dim
        cc.Director:getInstance():setClearColor(cc.c4f(0,0,0,1.0))
        olddisplay = cc.exports.skindisplay
    end

    if script ~= nil then
        -- Load script and execute in global environment so variables persist
        local func, compile_error = loadstring(script)
        if func then
            -- Set environment to global table so script variables are globally accessible
            if setfenv then
                setfenv(func, _G)  -- Lua 5.1 compatibility
            end
            local status, error = pcall(func)
            if status==false then
                print("Failure Loading the script", error)
            end
        else
            print("Failure compiling the script", compile_error)
        end
        script=nil
        local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
        local sigs = "()Ljava/lang/String;"
        local ok,ret  = luaj.callStaticMethod(className,"loadMemory",nil,sigs)
        if not ok then
            print("luaj error:", ret)
        else
            cc.exports.__G__SETMEMORY__(ret)
        end
    end

    -- Calculate delta time for on_millisecond callback
    local dt = 0
    if lastFrameTime > 0 then
        dt = socktime - lastFrameTime
    end
    lastFrameTime = socktime

    if on_millisecond then on_millisecond(dt) end
    if on_hour and oldhour ~= hour then oldhour=hour if minute==0 then on_hour() end
    elseif on_minute and oldminute ~= minute then oldminute=minute if second==0 then on_minute() end
    elseif on_second and oldsecond ~= second then oldsecond=second on_second(minute, second) end

    -- Calculate all counter values mathematically (no scheduling conflicts!)
    for counter_name, params in pairs(counter_params) do
        local elapsed = socktime - c_elapsed_start
        local from, to, duration, mode, delay = params.from, params.to, params.duration, params.mode, params.delay

        -- Handle delay period
        if elapsed < delay then
            tweens[counter_name] = from
        else
            local active_elapsed = elapsed - delay
            local range = to - from

            if mode == 'rv' then
                -- Reverse (ping-pong): forward then backward, repeat
                local cycle_duration = duration * 2
                local cycle_time = active_elapsed % cycle_duration
                if cycle_time < duration then
                    -- Forward: from -> to
                    tweens[counter_name] = from + range * (cycle_time / duration)
                else
                    -- Backward: to -> from
                    tweens[counter_name] = to - range * ((cycle_time - duration) / duration)
                end
            elseif mode == 'rp' then
                -- Repeat: from -> to, repeat
                local cycle_time = active_elapsed % duration
                tweens[counter_name] = from + range * (cycle_time / duration)
            elseif string.match(mode, '[sr][tp]') then
                -- Stop modes (st, sp, rt, etc): from -> to, then stop
                if active_elapsed >= duration then
                    tweens[counter_name] = to
                else
                    tweens[counter_name] = from + range * (active_elapsed / duration)
                end
            end
        end
    end

    -- Process funcschedule entries - collect completed ones first to avoid table modification during iteration
    local completed_schedules = {}
    for svar, sfunc in pairs(funcschedule) do
        if socktime > (sfunc[2] or socktime) then
            table.insert(completed_schedules, {svar, sfunc})
        end
    end

    -- Now process completed schedules (prevents iteration conflicts)
    -- Note: Counters no longer use schedules - they're calculated mathematically above
    for _, entry in ipairs(completed_schedules) do
        local svar = entry[1]
        local sfunc = entry[2]
        funcschedule[svar] = nil

        -- Protect against calling invalid functions during scene destruction
        if type(sfunc[3]) == "function" then
            pcall(sfunc[3])
        end
    end

    -- Now handle running schedules
    for svar, sfunc in pairs(funcschedule) do
        if socktime > sfunc[4]  then
            --print ("wm_schedule runnning", svar)
            if sfunc[2] == nil then funcschedule[svar] =nil end
            -- Protect against calling invalid functions during scene destruction
            if type(sfunc[1]) == "function" then
                pcall(sfunc[1])
            end
        end
    end
    local showAction = (socktime-beenTouched < 2)
--    if true then return end
    -- Calculate 3D coordinate offset based on fullscreen mode to match scene positioning
    local scale3d = get3DScaleFactor()

    -- Debug logging for 3D positioning (only print every 60 frames to avoid spam)
    if not _3d_debug_counter then _3d_debug_counter = 0 end
    _3d_debug_counter = _3d_debug_counter + 1
    if _3d_debug_counter >= 60 then
        local sceneScale = display.getRunningScene():getScale()
        --print(string.format("3D_DEBUG: fullscreen=%d displayscale=%.3f sceneScale=%.3f screenW=%d screenH=%d",
        --    cc.exports.fullscreen or -1, cc.exports.displayscale or -1, sceneScale,
        --    display.sizeInPixels.width, display.sizeInPixels.height))
        _3d_debug_counter = 0
    end

    for k, v in pairs(drawable) do
    --    print (k, var_dim, var_dim==2 and 80 or var_dim==3 and (abright and 0 or 80))
        local temp = evaluateDrawable(v)
        temp.x = (tonumber(temp.x) or 0) + 256
        temp.y = 256 - (tonumber(temp.y) or 0)
        temp.gyro = tonumber(temp.gyro) or 0
        if temp.gyro ~= 0 then
            --print("Applying gyro - type:" .. v.type .. " gyro:" .. temp.gyro .. " sgx:" .. (sgx or "nil") .. " sgy:" .. (sgy or "nil") .. " sgz:" .. (sgz or "nil"))
            if v.type == "3d_model" or v.type== "3d_text" then
                temp.rotation_x = temp.rotation_x - sgx*temp.gyro*-1.0
                temp.rotation_y = temp.rotation_y + sgy*temp.gyro
                --if temp.z ~= nil then temp.z = temp.z +sgz*temp.gyro end
            else
                temp.x = temp.x + sgy*temp.gyro
                temp.y = temp.y + sgx*temp.gyro*-1.0
                --if temp.z ~= nil then temp.z = temp.z +sgz*temp.gyro end
            end
        end

        --print(showAction, socktime-beenTouched)
        if (showAction and v.tap_action and temp.opacity and temp.opacity ~= -1) then temp.opacity=linearTween (socktime-beenTouched, tonumber(temp.opacity) or 0, 60, 2) end

        -- Visibility logic for drawable elements based on display attribute:
        -- display=1: show in bright mode (FPS >= 15 or unlimited)
        -- display=2: show in dim mode (FPS < 15)
        -- display=3: show always
        local isBrightMode = (cc.exports.skindisplay >= 15 or cc.exports.skindisplay == 0)
        local visible = (v.display + 0 == 3) or (v.display + 0 == 1 and isBrightMode) or (v.display + 0 == 2 and not isBrightMode)
        local color_changed = (v.actualColor ~= temp.color)
    --    if k < 3 then visible=false end
        v.actualColor = temp.color

        if (temp.color==nil) then temp.color=self:hex2rgb("FFFFFF")
        else
            -- Use bright color in bright mode (FPS >= 15 or unlimited), dim color otherwise
            if (isBrightMode or temp.color_dim == nil) then
                temp.color = self:hex2rgb(temp.color)
            else
                temp.color = self:hex2rgb(temp.color_dim)
            end
        end
        --print (k, wsr, string.sub(wsr,1,1)*30, temp.rotation)
 --       temp.rotation = tonumber(temp.rotation) or 0
 --       temp.anim_scale_x=(tonumber(temp.anim_scale_x) or 100)/100
 --       temp.anim_scale_y=(tonumber(temp.anim_scale_y) or 100)/100
 --       temp.opacity = tonumber(temp.opacity) or 0
        --if v.type ~= "3d_model" and v.drawable ~= nil then v.drawable:setGlobalZOrder(k) end
        if v.drawable ~= nil and type(v.drawable) == "userdata" then
            -- Use pcall to safely set camera mask (drawable might become invalid during async operations)
            local ok, err = pcall(function()
                v.drawable:setCameraMask(v.cameraMask)
            end)
            if not ok then
                print("Warning: Could not set camera mask for layer " .. k .. " (drawable may be released): " .. tostring(err))
            end
         --   print(k, v.drawable:getPositionZ(), v.drawable:getGlobalZOrder(), v.drawable:getLocalZOrder())
            --v.drawable:setPositionZ(k)
            --if v.type == "3d_model" then v.drawable:genMaterial() end
        --   listMethods(cc.Director:getInstance():getOpenGLView())
            --cc.Director:getInstance():setAlphaBlending(true)
        end
        -- Check if video extraction completed (for async video layers)
        if v.type == 'video' and v.extractionStarted and v.drawable == nil then
            -- Rate-limit status checks to prevent JNI reference overflow
            if v.lastStatusCheckTime == nil or (socktime - v.lastStatusCheckTime) > 1.0 then
                v.lastStatusCheckTime = socktime

                local className = "com/ailife/ClockSkinCoco/VideoFrameExtractor"
                local sig = "(Ljava/lang/String;)Ljava/lang/String;"
                local ok, status = luaj.callStaticMethod(className, "getExtractionStatus", {v.videoPath}, sig)

                if ok and status then
                    -- If extraction not started or failed, restart it
                    if status == "not_started" or status == "failed" then
                        print("Video extraction not started or failed, restarting:", v.videoPath)
                        local sig2 = "(Ljava/lang/String;I)Ljava/lang/String;"
                        luaj.callStaticMethod(className, "extractFramesAsync", {v.videoPath, v.videoFps or 30}, sig2)
                        v.extractionStartTime = socket.gettime()
                    elseif string.sub(status, 1, 10) == "completed:" then
                        local framesPath = string.sub(status, 11)
                        print("Video extraction completed! Triggering watch face reload to load video...")

                        -- Mark extraction as complete
                        v.extractionStarted = false
                        v.extractionCompleted = true

                        -- Properly dispose of loading label to prevent errors during reload
                        if v.loadingLabel then
                            pcall(function()
                                v.loadingLabel:removeFromParent()
                                v.loadingLabel:release()
                            end)
                            v.loadingLabel = nil
                        end

                        -- Trigger watch face reload to properly initialize video layer with cached frames
                        -- This is better than loading 200+ frames in the update loop
                        print("Reloading watch face to display video...")
                        self:onCreate()
                    elseif string.sub(status, 1, 12) == "in_progress:" then
                        -- Update loading indicator with progress
                        local progressInfo = string.sub(status, 13)
                        local current, total = progressInfo:match("(%d+)/(%d+)")

                        if current and total and v.loadingLabel then
                            current = tonumber(current)
                            total = tonumber(total)

                            if total > 0 then
                                local progress = (current / total) * 100
                                local elapsed = socket.gettime() - v.extractionStartTime
                                local framesPerSec = current / elapsed
                                local remaining = (total - current) / framesPerSec

                                local text = string.format("Extracting video...\nDo not reload or switch away!\n%d/%d frames (%.0f%%)\nTime remaining: %.0fs",
                                    current, total, progress, remaining)
                                v.loadingLabel:setString(text)
                            end
                        end
                    end
                end
            end
        end

        -- Skip video layers that are still being extracted (no drawable yet)
        if v.type == 'video' and v.extractionStarted and v.drawable == nil then
            -- Skip this layer, will be processed when extraction completes
            goto continue
        end

        -- Check if map tile download completed and load texture
        if v.type == 'map' and v.mapDownloading and not v.mapTileReady then
            -- Check if the tile file exists now (download completed)
            local fileExists = false
            if v.mapDownloadCheckPath then
                local f = io.open(v.mapDownloadCheckPath, "r")
                if f then
                    fileExists = true
                    io.close(f)
                end
            end

            if fileExists then
                v.mapDownloading = false

                -- Load the downloaded tile directly
                local texture = cc.Director:getInstance():getTextureCache():addImage(v.mapDownloadCheckPath)
                if texture then
                    local texSize = texture:getContentSize()

                    v.drawable:setTexture(texture)
                    v.drawable:setTextureRect(cc.rect(0, 0, texSize.width, texSize.height))
                    v.map_path = v.mapDownloadCheckPath
                    v.mapTileReady = true
                else
                    print("Failed to load background tile texture")
                end
            end
        end

        -- Update map layer if coordinates or zoom changed
        if v.type == 'map' and v.drawable ~= nil then
            -- Evaluate lat/lon/zoom (they can be dynamic expressions)
            local currentLat = tonumber(temp.lat)
            local currentLon = tonumber(temp.lon)
            local currentZoom = tonumber(temp.map_zoom) or 16

            -- Use fallback test coordinates if GPS not available (San Francisco)
            if not currentLat or not currentLon then
                currentLat = 37.7749
                currentLon = -122.4194
            end

            -- Check if coordinates or zoom changed (with small epsilon for float comparison)
            local epsilon = 0.0001
            local coordsChanged = false
            if v.lastLat == nil or v.lastLon == nil or v.lastZoom == nil then
                coordsChanged = true
            elseif currentLat and currentLon and (math.abs(currentLat - v.lastLat) > epsilon
                or math.abs(currentLon - v.lastLon) > epsilon
                or currentZoom ~= v.lastZoom) then
                coordsChanged = true
            end

            -- Rate limiting: only call Java once per second
            local currentTime = socktime
            if not v.lastMapUpdateTime then
                v.lastMapUpdateTime = 0
            end
            local timeSinceLastUpdate = currentTime - v.lastMapUpdateTime

            if coordsChanged and currentLat and currentLon and timeSinceLastUpdate >= 1.0 then
                -- Update last call time
                v.lastMapUpdateTime = currentTime

                -- Always update lastLat/lastLon to prevent infinite retries
                v.lastLat = currentLat
                v.lastLon = currentLon
                v.lastZoom = currentZoom

                -- Call Java method to get map tile
                local className = "com/ailife/ClockSkinCoco/MapTileDownloader"

                -- First test if the bridge works with a simple method
                local testOk, testResult = luaj.callStaticMethod(className, "testMethod", nil, "()Ljava/lang/String;")

                if not testOk then
                    print("Java bridge test FAILED - skipping getTile")
                else
                    -- Use string parameters (safer for Lua bridge)
                    local latStr = tostring(currentLat)
                    local lonStr = tostring(currentLon)
                    local zoomStr = tostring(currentZoom)
                    local sig = "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"
                    local ok, tilePath = luaj.callStaticMethod(className, "getTileStr", {latStr, lonStr, zoomStr}, sig)

                    if ok and tilePath and tilePath ~= "" then
                        -- Load the tile image
                        local texture = cc.Director:getInstance():getTextureCache():addImage(tilePath)
                        if texture then
                            local texSize = texture:getContentSize()

                            v.drawable:setTexture(texture)
                            -- Set texture rect to match the full texture size
                            v.drawable:setTextureRect(cc.rect(0, 0, texSize.width, texSize.height))

                            v.map_path = tilePath
                            v.mapTileReady = true
                        else
                            print("Failed to load map tile texture")
                        end
                    else
                        -- Tile is downloading in background, mark for checking
                        v.mapDownloading = true
                        v.mapTileReady = false  -- Reset ready flag for new tile

                        -- Calculate tile coordinates using same formula as Java
                        local n = bit.lshift(1, currentZoom)  -- 2^zoom
                        local tileX = math.floor((currentLon + 180.0) / 360.0 * n)
                        local latRad = math.rad(currentLat)
                        local tileY = math.floor((1.0 - math.log(math.tan(latRad) + 1.0 / math.cos(latRad)) / math.pi) / 2.0 * n)

                        v.mapDownloadCheckPath = string.format("/data/user/0/com.ailife.ClockSkinCoco/files/map_tiles_cache/%d_%d_%d.png",
                            currentZoom, tileX, tileY)
                    end
                end -- end testOk check
            end -- end coordsChanged and currentLat and currentLon
        end -- end v.type == 'map'

        if v.type == 'image' or v.type == 'image_gif' or v.type == 'image_cond' or v.type == 'video' or v.type == 'map' or v.type == 'gallery_2d' then
            local bitmap = v.drawable
        --    if k ~= 11 then temp.opacity=0 else print (dss, math.abs((math.floor(dss/500)*500)-(math.mod(dss,500)))/17+100) temp.opacity=100 temp.height = 100 temp.width = 100 end

            if bitmap ~= nil then
                -- Wrap bitmap operations in pcall to handle invalid objects (e.g., during async video loading)
                local ok, err = pcall(function()
                    --if temp.opacity == false or temp.opacity == '' or temp.opacity == nil or temp.opacity == -1 or visible == false or temp.anim_scale_x == 0 or temp.anim_scale_y == 0 then
                    if temp.opacity == 0 or temp.opacity == -1 or visible == false or temp.anim_scale_x == 0 or temp.anim_scale_y == 0 then
                        bitmap:setVisible(false)
                    else
                        if v.type == 'image_cond' then
                            --print ('image_cond', moon)
                            temp.cond_value = tonumber(temp.cond_value ) or 1
         --                   print ('image_cond ==>', v.path, temp.cond_value, "dd:",tweens.dd)
                            bitmap:setDisplayFrameWithAnimationName(v.path, temp.cond_value-1)
                        end
                        local tSizeOrig = bitmap:getContentSize()
                    temp.width=tonumber(temp.width) or tSizeOrig.width
                    temp.height=tonumber(temp.height) or tSizeOrig.height
                    if (tSizeOrig.width~=tSizeOrig.height and temp.width==temp.height) then
                        tSizeOrig.height=tSizeOrig.width
                    elseif (tSizeOrig.height < temp.height and tSizeOrig.width > temp.width and v.shader ~= null) then
                        tSizeOrig.height=tSizeOrig.width
                    end
                    -- Debug map layer scaling
                    if v.type == 'map' then
                        -- Local scaling calculations for map layer
                        local scaleX = (temp.width / tSizeOrig.width) * temp.anim_scale_x
                        local scaleY = (temp.height / tSizeOrig.height) * temp.anim_scale_y
                    end
                    bitmap:setScale((temp.width / tSizeOrig.width) * temp.anim_scale_x, (temp.height / tSizeOrig.height) * temp.anim_scale_y)
                    --print(v.path, temp.width, temp.height, tSizeOrig.width, tSizeOrig.height, bitmap:getBoundingBox().width, bitmap:getBoundingBox().height)
                    temp.skew_x = tonumber(temp.skew_x) or 0
                    temp.skew_y = tonumber(temp.skew_y) or 0
                    bitmap:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                    if temp.shader then self:updateShader(bitmap, temp) end
                    align(bitmap, v.alignment)
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local img_x = get2D_X_Position(temp.x, v)
                    local img_y = get2D_Y_Position(temp.y, v)
                    bitmap:setPosition(img_x, img_y):setColor(temp.color)
                    bitmap:rotate(temp.rotation)
                    bitmap:setOpacity(temp.opacity * 2.55):setVisible(visible)
                    end
                end)
                if not ok then
                    print("Warning: Could not update bitmap for layer " .. k .. " (drawable may be invalid): " .. tostring(err))
                end
            end
        elseif v.type == 'camera' then
            local camera = v.drawable
            if (camera == nil or temp.field_of_view ~= v.C_field_of_view or temp.near_plane ~= v.C_near_plane or temp.far_plane ~= v.C_far_plane) then
                local visibleSize = cc.Director:getInstance():getVisibleSize()
                local cam = cc.Camera:createPerspective(temp.field_of_view, visibleSize.width / visibleSize.height, temp.near_plane, temp.far_plane)
                v.C_far_plane = temp.far_plane
                v.C_near_plane = temp.near_plane
                v.C_field_of_view = temp.field_of_view
                cam:setCameraFlag(2^v.depth)
                cam:setDepth(v.depth)
                local layerNode = v.cameraNode
                layerNode:removeAllChildren()
                cam:addTo(layerNode)
                v.drawable = cam
                camera = cam
            end
        --    camera:setPosition3D(cc.vec3(256, 256,445.0))   --400
       -- print ("camera", temp.x,temp.y,temp.z)
            camera:setPosition3D(cc.vec3(temp.x, temp.y, temp.z or 0))
            camera:lookAt(cc.vec3(temp.look_x+256,256-temp.look_y,temp.look_z))
        elseif v.type == '3d_model' then
            local bitmap = v.drawable
            if bitmap ~= nil then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    bitmap:setVisible(false)
                else
                    --bitmap:setScale(100)
                    -- Scale 3D models by actual scene scale to match 2D scene scaling
                    bitmap:setScaleX((temp.scale_x or 1) * scale3d):setScaleY((temp.scale_y or 1) * scale3d):setScaleZ((temp.scale_z or 1) * scale3d)
                    --bitmap:setPosition3D(cc.vec3(256+(0), 256-(0), -(0))):setColor(temp.color)
                    -- Apply unified 3D position calculation with fullscreen offset compensation
                    local tmpx = get3D_X_Position(temp.x, scale3d)
                    local tmpy = get3D_Y_Position(temp.y, scale3d)
                    bitmap:setPosition3D(cc.vec3(tmpx, tmpy, -temp.z or 0)):setColor(temp.color)
                    if not _3d_model_debug_done then
                        print(string.format("3D_MODEL_POS: temp.x=%.1f temp.y=%.1f tmpx=%.1f tmpy=%.1f fullscreen=%d",
                            temp.x, temp.y, tmpx, tmpy, cc.exports.fullscreen or -1))
                        _3d_model_debug_done = true
                    end
                    bitmap:setRotation3D(cc.vec3(temp.rotation_x,temp.rotation_y,temp.rotation))
                    bitmap:setVisible(visible)
                    if temp.opacity == 100 then bitmap:setOpacity(255) else bitmap:setOpacity(temp.opacity * 2.55) end
                end
                v.light:setEnabled(not custom_light)
           --     v.camera:setPosition3D(cc.vec3(256, 256,445))
            end
        elseif v.type == "3d_text" then
            local layerNode = v.layerNode
            if v.actualText ~= temp.text then
                print(string.format("3D_TEXT_UPDATE: old='%s' new='%s' scale3d=%.3f fullscreen=%d",
                    tostring(v.actualText), tostring(temp.text), scale3d, cc.exports.fullscreen or -1))

                -- Create temporary hidden layer to build new text
                local tempLayer = cc.Layer:create()
                tempLayer:setVisible(false)
                tempLayer:addTo(v.drawable)

                local text = temp.text
                local siz = text:len()
                local maxH=0
                -- Calculate final scale once to avoid multiplication on each update
                -- Apply scale3d to match 3D model scaling behavior
                local finalScaleX = (temp.scale_x or 1) * (temp.text_size / 100) * scale3d
                local finalScaleY = (temp.scale_y or 1) * (temp.text_size / 100) * scale3d
                local finalScaleZ = (temp.scale_z or 1) * (temp.text_size / 100) * scale3d
                -- Pre-calculate scaled spacing to use throughout
                local scaledSpacingLetter = temp.spacing_letter * scale3d

                -- Build all letters in temporary layer
                for i=1,text:len() do
                    local letter = string.sub(text,i,i)
                    local isSpace=false
                    if letter==' ' or string.byte(letter) == 10 then letter='a' isSpace=true end
                    local sp
                    print ("creating 3D letter for ", letter, string.byte(letter))
                    local status, error = pcall(function() sp = cc.Sprite3D:create(pathZIP .. skinZIP .. "3d/" .. v.font .. string.byte(letter) .. ".obj") end)
                    if status==false then
                        print ("no 3D text for ", letter, error)
                        letter='a'
                        isSpace=true
                        sp = cc.Sprite3D:create(pathZIP .. skinZIP .. "3d/" .. v.font .. string.byte(letter) .. ".obj")
                    end
                    sp:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA , gl.ONE_MINUS_SRC_ALPHA))
                    sp.space = isSpace
                    -- Apply final scale directly
                    sp:setScaleX(finalScaleX):setScaleY(finalScaleY):setScaleZ(finalScaleZ)
                    sp:setColor(temp.color)
                    sp:addTo(tempLayer):setForce2DQueue(true)

                    maxH=math.max(maxH,sp:getBoundingBox().height)
                end

                -- Calculate final positions
                local scaledSpacingWord = temp.spacing_word * scale3d

                local nodes=tempLayer:getChildren()
                local maxW=-scaledSpacingLetter
                local posY=0
                for i=1, #nodes do
                    posY=math.max(posY,nodes[i]:getBoundingBox().height)
                    if nodes[i].space==true then
                        maxW = maxW + scaledSpacingWord
                    else
                        maxW = maxW + nodes[i]:getBoundingBox().width+scaledSpacingLetter
                    end
                end
                local explode=temp.explode/100
                local posX = -maxW/2 * explode
                for i=1, #nodes do
                    if nodes[i].space==true then
                        posX = posX + scaledSpacingWord * explode
                        nodes[i]:setScale(0)
                    else
                        -- Shift text down by half its height (posY/2) to align with 2D/3D models
                        nodes[i]:setPosition3D(cc.vec3(posX+nodes[i]:getBoundingBox().width/2 * explode, 0, 0))
                        posX = posX + (scaledSpacingLetter + nodes[i]:getBoundingBox().width) * explode
                    end
                end

                print("created 3d text", temp.text, posY)
                if (v.light==nil) then
                    local light = cc.PointLight:create(cc.vec3(0, posY, 1000.0), cc.c3b(255, 255, 255), 10000.0)
                    light:addTo(v.drawable):setVisible(true)
                    v.light=light
                end

                -- Now swap: copy nodes from tempLayer to layerNode atomically
                layerNode:removeAllChildren()
                for i=1, #nodes do
                    nodes[i]:retain()
                    nodes[i]:removeFromParent()
                    nodes[i]:addTo(layerNode):setForce2DQueue(true)
                    nodes[i]:release()
                end
                tempLayer:removeFromParent()

                layerNode:setAnchorPoint(cc.vec3(0,0,0))
                v.justRecreated = true
                v.actualText = temp.text
            end
            if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                layerNode:setVisible(false)
            else
                v.light:setEnabled(not custom_light)
                -- Skip one frame after recreation to ensure transforms are applied
                if v.justRecreated then
                    v.justRecreated = false
                    layerNode:setVisible(false)
                else
                    layerNode:setVisible(visible)
                end
                layerNode:setRotation3D(cc.vec3(temp.rotation_x,temp.rotation_y,temp.rotation))
                -- Apply unified 3D position calculation with fullscreen offset compensation
                local tmpx = get3D_X_Position(temp.x, scale3d)
                local tmpy = get3D_Y_Position(temp.y, scale3d)
                layerNode:setPosition3D(cc.vec3(tmpx, tmpy, -temp.z or 0))
            end
        elseif (v.type == "light_dir") then
            local bitmap = v.drawable
            --print("light_dir", temp.enabled, custom_light)
            if bitmap ~= nil then
                -- Apply unified 3D position calculation with fullscreen offset compensation
                local tmpx = get3D_X_Position(temp.x, scale3d)
                local tmpy = get3D_Y_Position(temp.y, scale3d)
                bitmap:setPosition(tmpx, tmpy):setDirection(cc.vec3(temp.direction_x, temp.direction_y, temp.direction_z or 0)):setEnabled(temp.enabled=="Y")
                bitmap:setIntensity(temp.intensity*20.0):setColor(temp.color)
            end
        elseif (v.type == "light_spot") then
            local bitmap = v.drawable
            --print("light_spot", temp.enabled, custom_light)
            if bitmap ~= nil then
                -- Apply unified 3D position calculation with fullscreen offset compensation
                local tmpx = get3D_X_Position(temp.x, scale3d)
                local tmpy = get3D_Y_Position(temp.y, scale3d)
                bitmap:setPosition3D(cc.vec3(tmpx, tmpy, -temp.z or 0)):setRange(temp.range):setDirection(cc.vec3(temp.direction_x, temp.direction_y, temp.direction_z or 0))
                bitmap:setInnerAngle(temp.angle_inner):setOuterAngle(temp.angle_outer):setEnabled(temp.enabled=="Y")
                bitmap:setIntensity(temp.intensity*20.0):setColor(temp.color)
            end
        elseif (v.type == "light_point") then
            local bitmap = v.drawable
            if bitmap ~= nil then
                -- Apply unified 3D position calculation with fullscreen offset compensation
                local tmpx = get3D_X_Position(temp.x, scale3d)
                local tmpy = get3D_Y_Position(temp.y, scale3d)
                -- Use temp.z directly without negation (like camera) instead of -temp.z
                local tmpz = temp.z or 0
                bitmap:setPosition3D(cc.vec3(tmpx, tmpy, tmpz))
                bitmap:setRange(temp.range*10 or 1000)
                bitmap:setEnabled(temp.enabled=="Y")
                bitmap:setIntensity(temp.intensity/50)
                bitmap:setColor(temp.color)
                print(string.format("PointLight: pos=(%.1f,%.1f,%.1f) range=%.0f intensity=%.1f enabled=%s",
                    tmpx, tmpy, tmpz, temp.range or 1000, temp.intensity*20.0, tostring(temp.enabled=="Y")))
            end
        elseif v.type == 'text' then
            local label = v.drawable

            -- Skip update if label is nil or invalid (happens during reload or if loading label was disposed)
            if label == nil then
                goto continue
            end

            -- Additional safety check - verify label is still valid before any operations
            -- Try calling getContentSize() to detect invalid cobj early
            local labelValid, testResult = pcall(function()
                return label:getContentSize()
            end)
            if not labelValid then
                print("Warning: Skipping invalid label in layer " .. k .. " (cobj error)")
                goto continue
            end

            -- Update text animation lifecycle
            if v.animState then
                -- Calculate actual delta time using real time (FPS-independent)
                local currentTime = socket.gettime()
                if not v.animState.lastUpdateTime then
                    v.animState.lastUpdateTime = currentTime
                end
                local dt = currentTime - v.animState.lastUpdateTime
                v.animState.lastUpdateTime = currentTime
                v.animState.elapsed = v.animState.elapsed + dt

                -- State machine for animation lifecycle
                if v.animState.phase == 'delay' then
                    -- Waiting for initial delay
                    if v.animState.elapsed >= v.delay_start then
                        -- Delay complete, start entry animation
                        if v.anim_in and WatchSkinTextAnim.isSupported(v.anim_in) then
                            local animType = WatchSkinTextAnim.getAnimationType(v.anim_in)
                            if animType == 'action' then
                                local action = WatchSkinTextAnim.applyActionAnimation(
                                    label, v.anim_in, v.dur_in, true)
                                if action then
                                    label:runAction(action)
                                    v.animState.currentAction = action
                                    v.animState.phase = 'in'
                                    v.animState.elapsed = 0
                                end
                            elseif animType == 'shader' then
                                -- Apply shader animation
                                local shaderState = WatchSkinTextAnim.applyShaderAnimation(
                                    label, v.anim_in, true, v.layerNode)
                                if shaderState then
                                    v.animState.shaderState = shaderState
                                    v.animState.phase = 'in'
                                    v.animState.elapsed = 0
                                end
                            elseif animType == 'transition' then
                                -- Apply transition animation (dual texture)
                                local previousText = WatchSkinTextAnim.getPreviousText(v.layerId or tostring(label))
                                local transitionState = WatchSkinTextAnim.applyTransitionAnimation(
                                    label, v.anim_in, previousText, v.layerNode)
                                if transitionState then
                                    v.animState.transitionState = transitionState
                                    v.animState.phase = 'in'
                                    v.animState.elapsed = 0
                                end
                            end
                        else
                            v.animState.phase = 'on'
                            v.animState.elapsed = 0
                        end
                    end

                elseif v.animState.phase == 'in' then
                    -- Entry animation in progress
                    -- Update shader animation progress if active
                    if v.animState.shaderState then
                        local progress = math.min(v.animState.elapsed / v.dur_in, 1.0)
                        WatchSkinTextAnim.updateShaderAnimation(label, v.animState.shaderState, progress)
                    end
                    -- Update transition animation progress if active
                    if v.animState.transitionState then
                        local progress = math.min(v.animState.elapsed / v.dur_in, 1.0)
                        WatchSkinTextAnim.updateTransitionAnimation(label, v.animState.transitionState, progress)
                    end

                    if v.animState.elapsed >= v.dur_in then
                        -- Entry complete, transition to 'on' phase
                        -- Clean up shader if used
                        if v.animState.shaderState then
                            WatchSkinTextAnim.removeShaderAnimation(label, v.animState.shaderState)
                            v.animState.shaderState = nil
                        end
                        -- Clean up transition if used
                        if v.animState.transitionState then
                            WatchSkinTextAnim.removeTransitionAnimation(label, v.animState.transitionState)
                            v.animState.transitionState = nil
                        end
                        v.animState.phase = 'on'
                        v.animState.elapsed = 0
                        -- Ensure label is fully visible
                        label:setOpacity(255)
                    end

                elseif v.animState.phase == 'on' then
                    -- Visible, waiting for dur_on
                    -- If dur_on is 0, stay in 'on' phase forever (no exit)
                    if v.dur_on > 0 and v.animState.elapsed >= v.dur_on then
                        -- Check if we should continue cycling or stay visible
                        local shouldCycle = (v.repeat_count == -1) or (v.animState.cycleCount < v.repeat_count - 1)

                        if shouldCycle then
                            -- Continue to exit animation or off phase for next cycle
                            if v.anim_out and WatchSkinTextAnim.isSupported(v.anim_out) then
                                local animType = WatchSkinTextAnim.getAnimationType(v.anim_out)
                                if animType == 'action' then
                                    -- Reset position before exit animation
                                    if v.animState.originalX and v.animState.originalY then
                                        label:setPosition(v.animState.originalX, v.animState.originalY)
                                    end
                                    local action = WatchSkinTextAnim.applyActionAnimation(
                                        label, v.anim_out, v.dur_out, false)
                                    if action then
                                        label:runAction(action)
                                        v.animState.currentAction = action
                                        v.animState.phase = 'out'
                                        v.animState.elapsed = 0
                                    end
                                elseif animType == 'shader' then
                                    -- Apply shader animation for exit
                                    local shaderState = WatchSkinTextAnim.applyShaderAnimation(
                                        label, v.anim_out, false, v.layerNode)
                                    if shaderState then
                                        v.animState.shaderState = shaderState
                                        v.animState.phase = 'out'
                                        v.animState.elapsed = 0
                                    end
                                elseif animType == 'transition' then
                                    -- Apply transition animation for exit
                                    local previousText = WatchSkinTextAnim.getPreviousText(v.layerId or tostring(label))
                                    local transitionState = WatchSkinTextAnim.applyTransitionAnimation(
                                        label, v.anim_out, previousText, v.layerNode)
                                    if transitionState then
                                        v.animState.transitionState = transitionState
                                        v.animState.phase = 'out'
                                        v.animState.elapsed = 0
                                    end
                                end
                            else
                                -- No exit animation, go to off phase for next cycle
                                v.animState.phase = 'off'
                                v.animState.elapsed = 0
                                label:setOpacity(0)
                            end
                        else
                            -- Last cycle complete, stay visible in 'on' phase
                            -- Do nothing, remain in 'on' phase
                        end
                    end

                elseif v.animState.phase == 'out' then
                    -- Exit animation in progress
                    -- Update shader animation progress if active
                    if v.animState.shaderState then
                        local progress = math.min(v.animState.elapsed / v.dur_out, 1.0)
                        WatchSkinTextAnim.updateShaderAnimation(label, v.animState.shaderState, progress)
                    end
                    -- Update transition animation progress if active
                    if v.animState.transitionState then
                        local progress = math.min(v.animState.elapsed / v.dur_out, 1.0)
                        WatchSkinTextAnim.updateTransitionAnimation(label, v.animState.transitionState, progress)
                    end

                    if v.animState.elapsed >= v.dur_out then
                        -- Exit complete
                        -- Clean up shader if used
                        if v.animState.shaderState then
                            WatchSkinTextAnim.removeShaderAnimation(label, v.animState.shaderState)
                            v.animState.shaderState = nil
                        end
                        -- Clean up transition if used
                        if v.animState.transitionState then
                            WatchSkinTextAnim.removeTransitionAnimation(label, v.animState.transitionState)
                            v.animState.transitionState = nil
                        end
                        v.animState.phase = 'off'
                        v.animState.elapsed = 0
                        label:setOpacity(0)
                    end

                elseif v.animState.phase == 'off' then
                    -- Invisible, waiting for dur_off
                    if v.dur_off > 0 and v.animState.elapsed >= v.dur_off then
                        -- Check if we should repeat
                        v.animState.cycleCount = v.animState.cycleCount + 1
                        if v.repeat_count == -1 or v.animState.cycleCount < v.repeat_count then
                            -- Restart the animation cycle
                            -- Reset to original transform
                            if v.animState.originalX and v.animState.originalY then
                                label:setPosition(v.animState.originalX, v.animState.originalY)
                            end
                            if v.animState.originalScale then
                                label:setScale(v.animState.originalScale)
                            end
                            if v.animState.originalOpacity then
                                label:setOpacity(v.animState.originalOpacity)
                            end
                            -- Reset rotation to 0 for animations that modify rotation
                            label:setRotation(0)

                            -- Start entry animation
                            if v.anim_in and WatchSkinTextAnim.isSupported(v.anim_in) then
                                local animType = WatchSkinTextAnim.getAnimationType(v.anim_in)
                                if animType == 'action' then
                                    local action = WatchSkinTextAnim.applyActionAnimation(
                                        label, v.anim_in, v.dur_in, true)
                                    if action then
                                        label:runAction(action)
                                        v.animState.currentAction = action
                                        v.animState.phase = 'in'
                                        v.animState.elapsed = 0
                                    end
                                elseif animType == 'shader' then
                                    -- Apply shader animation
                                    local shaderState = WatchSkinTextAnim.applyShaderAnimation(
                                        label, v.anim_in, true, v.layerNode)
                                    if shaderState then
                                        v.animState.shaderState = shaderState
                                        v.animState.phase = 'in'
                                        v.animState.elapsed = 0
                                    end
                                elseif animType == 'transition' then
                                    -- Apply transition animation (dual texture)
                                    local previousText = WatchSkinTextAnim.getPreviousText(v.layerId or tostring(label))
                                    local transitionState = WatchSkinTextAnim.applyTransitionAnimation(
                                        label, v.anim_in, previousText, v.layerNode)
                                    if transitionState then
                                        v.animState.transitionState = transitionState
                                        v.animState.phase = 'in'
                                        v.animState.elapsed = 0
                                    end
                                end
                            else
                                v.animState.phase = 'on'
                                v.animState.elapsed = 0
                            end
                        else
                            -- Animation cycles complete, stay invisible
                            label:setOpacity(0)
                        end
                    end
                end
            end

            --v.drawable:setGlobalZOrder(k)
            --temp.text  = '' .. temp.text
          --  print(k, "label:" , temp.text , " x:" .. temp.x , "y:" .. temp.y, "op:" ,temp.opacity, visible, temp.anim_scale_x, temp.anim_scale_y)
            if temp.text ~= "" then
                 temp.text_size = tonumber(temp.text_size)
                 if v.oldTextsize ~= temp.text_size then
                     v.oldTextsize = temp.text_size
                     v.actualText = ""
                     if v.TTFFont then
                         local layerNode = v.layerNode
                         layerNode:removeAllChildren()
                         layerNode:setPosition(0, 0):setVisible(true)
                         local newsize = math.min(492, 1.30 * temp.text_size) --1.28*385 --
                         if v.font == nil then
                             v.drawable = cc.Label:createWithSystemFont("testtesttest","arial",newsize)
                             v.drawable:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
                         else
                             local fontName = "fonts/" .. v.font .. ".ttf"
                             v.drawable = WatchSkin:createTTFLabel("testtesttest", fontName, newsize)
                         end
                         v.drawable:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
                         v.drawable:setVerticalAlignment(cc.VERTICAL_TEXT_ALIGNMENT_BOTTOM)
              --           v.drawable:setVerticalAlignment(cc.VERTICAL_TEXT_ALIGNMENT_CENTER)
                         v.drawable:addTo(layerNode)
                         label = v.drawable
                         v.done=nil
                     else
                        local tSizeOrig = label:getContentSize()
                        label:setScale(1.6 * temp.text_size / tSizeOrig.height)
                    end
                    align(label, v.alignment)
                 end

            --    if temp.opacity == false or temp.opacity == nil then temp.opacity=0 end
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then --or temp.anim_scale_x == 0 or temp.anim_scale_y == 0 then
                        label:setVisible(false)
                 else
             --       print(k, temp.text, label:getBoundingBox().height,label:getContentSize().height)
              --      print(k, temp.text, label:getContentSize().height, label:getBoundingBox().height, temp.text_size, temp.text_size*1.30)

                --    if (temp.y > 256) then  temp.y=temp.y-math.min(492, 1.28 * temp.text_size)/8 else temp.y=temp.y+math.min(492, 1.28 * temp.text_size)/8 end
                 --   if (temp.y < 256) then  temp.y=temp.y-.1*math.min(492, temp.text_size) else temp.y=temp.y+.1*math.min(492, temp.text_size) end
                 --   if (label:getContentSize().height < temp.text_size*1.0) then temp.y=temp.y+math.min(492, 1.28 * temp.text_size)/8 end
                    if (label:getContentSize().height < temp.text_size) then
                        temp.y=temp.y+(temp.text_size-label:getContentSize().height)/2
                  --  elseif (label:getContentSize().height > 1+temp.text_size*1.3) then
                 --       temp.y=temp.y+(temp.text_size*1.0-label:getContentSize().height)/2
                    end
                    --label:setOverflow(cc.LabelOverflow.RESIZE_HEIGHT )
                    -- Don't show original label if stencil is active (stencil replaces it)
                    if v.stencil == "y" and v.stencilApplied then
                        label:setOpacity(0):setVisible(false)
                    else
                        -- Don't override opacity if animation is actively running
                        if v.animState then
                            if v.animState.phase == 'in' or v.animState.phase == 'out' then
                                -- Animation is controlling opacity
                                -- For shader animations, keep label hidden (sprite shows instead)
                                if v.animState.shaderState then
                                    label:setVisible(false)
                                    label:setOpacity(0)
                                else
                                    -- Action animation, force visible
                                    label:setVisible(true)
                                end
                            elseif v.animState.phase == 'delay' then
                                -- During delay, hide the label
                                label:setVisible(false)
                            elseif v.animState.phase == 'off' then
                                -- During off phase, hide the label
                                label:setVisible(false)
                            else
                                -- 'on' phase or other, update normally
                                label:setOpacity(temp.opacity * 2.55):setVisible(visible)
                            end
                        else
                            -- No animation, update normally
                            label:setOpacity(temp.opacity * 2.55):setVisible(visible)
                        end
                    end
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local label_x = get2D_X_Position(temp.x, v)
                    local label_y = get2D_Y_Position(temp.y, v)

                    -- Store original position for animation reset (only once, when first calculated)
                    if v.animState and not v.animState.originalPosSet then
                        v.animState.originalX = label_x
                        v.animState.originalY = label_y
                        v.animState.originalPosSet = true

                        -- Now that position is set, handle pending animation start
                        if v.animState.phase == 'pending' then
                            -- Start entry animation now that position is known
                            label:setPosition(label_x, label_y)
                            if v.anim_in and WatchSkinTextAnim.isSupported(v.anim_in) then
                                local animType = WatchSkinTextAnim.getAnimationType(v.anim_in)
                                if animType == 'action' then
                                    local action = WatchSkinTextAnim.applyActionAnimation(
                                        label, v.anim_in, v.dur_in, true)
                                    if action then
                                        label:runAction(action)
                                        v.animState.currentAction = action
                                        v.animState.phase = 'in'
                                        v.animState.elapsed = 0
                                        print("Started entry animation: " .. v.anim_in)
                                    end
                                elseif animType == 'shader' then
                                    -- Apply shader animation
                                    local shaderState = WatchSkinTextAnim.applyShaderAnimation(
                                        label, v.anim_in, true, v.layerNode)
                                    if shaderState then
                                        v.animState.shaderState = shaderState
                                        v.animState.phase = 'in'
                                        v.animState.elapsed = 0
                                        print("Started shader animation: " .. v.anim_in)
                                    end
                                end
                            else
                                v.animState.phase = 'on'
                                v.animState.elapsed = 0
                            end
                        elseif v.animState.phase == 'pending_delay' then
                            -- Switch to delay phase now that position is known
                            label:setPosition(label_x, label_y)
                            v.animState.phase = 'delay'
                            v.animState.elapsed = 0
                        end
                    end

                    -- Don't override position/rotation if animation is actively running
                    if v.animState and (v.animState.phase == 'in' or v.animState.phase == 'out') then
                        -- Animation is controlling position/rotation, don't update
                        -- Skip position and rotation updates during animation
                    else
                        -- Update position and rotation normally
                        label:setPosition(label_x, label_y):setRotation(temp.rotation or 0)
                    end
                    temp.text= temp.text or ''    --''' .. temp.text
                    --var_tswh_lap=0
                    --var_tswm_lap=0
                    --if k == 145 then print(temp.text, var_swlap, var_tswh_lap) end
                    --      print(type(temp.text), type(v.actualText), v.actualText ,temp.text, v.actualText ~= temp.text)
                    --print(k, "label:" .. temp.text , " x:" .. temp.x , "y:" .. temp.y, "op:" ,temp.opacity, visible, temp.anim_scale_x, temp.anim_scale_y)
                    if v.actualText ~= temp.text or v.oldscaleX ~= temp.anim_scale_x or v.oldscaleY ~= temp.anim_scale_y then
                        -- print (k,":"..temp.text..":", temp.anim_scale_y, temp.u_1, temp.u_2)
                        --temp.text='' .. temp.text

                        -- Check if we should restart animation on text change
                        local textChanged = v.actualText ~= temp.text and v.actualText ~= nil and v.actualText ~= ""
                        if textChanged and v.restart_text_change and v.animState then
                            -- Restart animation when text content changes
                            WatchSkinTextAnim.restartAnimation(v, label)
                        end

                        v.actualText = temp.text
                        v.oldscaleX = temp.anim_scale_x
                        v.oldscaleY = temp.anim_scale_y
                        if v.TTFFont and v.font then
                            --if (k>27 and k<31) then
                            --    print(k, "label:" .. temp.text , " x:" .. temp.x , "y:" .. temp.y, "op:" ,temp.opacity, visible, temp.anim_scale_x, temp.anim_scale_y)
                            --end

                            label:setScale(temp.anim_scale_x, temp.anim_scale_y)
                            temp.skew_x = tonumber(temp.skew_x) or 0
                            temp.skew_y = tonumber(temp.skew_y) or 0
                            label:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                            temp.text=temp.text:gsub('<BR>',"\n")
                            v.actualText = temp.text  -- Update actualText with newline-converted text

                            if (v.transform == 'uc') then
                             --   label:setString(temp.text:upper())
                                v.drawable = WatchSkin:setLabelString(label, temp.text:upper())
                            else
                             --   label:setString(temp.text)
                                v.drawable = WatchSkin:setLabelString(label, temp.text)
                            end
                        else
                            label:setString(temp.text:upper())
                        end
                    end
                    if v.TTFFont then
                        label:setTextColor(temp.color)
                        if (v.outline ~= nil) and v.done == nil then
                            v.done=true
                    --        print (k, temp.text, v.font, v.outline, temp.o_color, temp.o_size, temp.o_opacity, self:hex24B(temp.o_color, temp.o_opacity or 100))
                            if (v.outline == "Glow") then
                                -- Glow effect handled via glowLayers (offset copies with decreasing opacity)
                            else
                                -- Enable outline with proper thickness (no /4 division)
                                label:enableOutline(self:hex24B(temp.o_color, temp.o_opacity or 100), math.max(temp.o_size or 4, 1))
                            end
                        end
                        -- Apply stencil effect if specified
                        if v.stencil == "y" and v.stencilApplied == nil then
                            v.stencilApplied = true
                            -- Create stencil using clipping node with inverted stencil
                            -- The text becomes the stencil, and a solid color rect is clipped
                            local colorHex = v.color
                            if type(colorHex) == "function" then colorHex = colorHex() end
                            if type(colorHex) == "string" and #colorHex >= 6 then
                                local stencilColor = self:hex2rgb(colorHex)
                                v.stencilColor = stencilColor
                                v.stencilColorHex = colorHex
                            end
                        end

                        -- Update stencil clipping if active
                        if v.stencil == "y" and v.stencilApplied then
                            -- Create or update the stencil sprite using RenderTexture + shader approach
                            if not v.stencilSprite then
                                -- Get text size and create render texture large enough
                                local textSize = label:getContentSize()
                                local padding = 100  -- Extra padding around text for stencil effect
                                local width = textSize.width * temp.anim_scale_x + padding * 2
                                local height = textSize.height * temp.anim_scale_y + padding * 2

                                -- Create render texture to capture the text as single bitmap
                                local renderTexture = cc.RenderTexture:create(width, height)
                                renderTexture:retain()  -- Keep render texture alive

                                -- Create temporary label for rendering
                                local tempLabel
                                if v.font and string.find(v.font, "bm") then
                                    local fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                                    tempLabel = cc.Label:createWithBMFont(fontName, v.actualText or "")
                                else
                                    if v.font == nil then
                                        tempLabel = cc.Label:createWithSystemFont(v.actualText or "","arial", math.min(492, 1.30 * temp.text_size))
                                    else
                                        local fontName = "fonts/" .. v.font .. ".ttf"
                                        tempLabel = WatchSkin:createTTFLabel(v.actualText or "", fontName, math.min(492, 1.30 * temp.text_size))
                                    end
                                end
                                tempLabel:setAnchorPoint(cc.p(0.5, 0.5))
                                tempLabel:setPosition(width/2, height/2)
                                tempLabel:setScale(temp.anim_scale_x, temp.anim_scale_y)
                                tempLabel:setTextColor(cc.c4b(255, 255, 255, 255))  -- White text for alpha mask
                                tempLabel:retain()  -- Keep label alive for future updates

                                -- Render text to texture
                                renderTexture:beginWithClear(0, 0, 0, 0)  -- Clear with transparent
                                tempLabel:visit()
                                renderTexture:endToLua()

                                -- Create sprite from rendered texture
                                local stencilSprite = cc.Sprite:createWithTexture(renderTexture:getSprite():getTexture())
                                stencilSprite:setFlippedY(true)  -- RenderTexture is flipped
                                stencilSprite:setAnchorPoint(cc.p(0.5, 0.5))

                                -- Apply stencil shader
                                local program = cc.GLProgram:create("shaders/vertex.vsh", "shaders/Stencil.fsh")
                                if program then
                                    local programState = cc.GLProgramState:create(program)
                                    program:link()
                                    program:retain()
                                    stencilSprite:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA))
                                    program:updateUniforms()
                                    stencilSprite:setGLProgramState(programState)

                                    -- Get uniform location
                                    local u_color_loc = gl.getUniformLocation(program:getProgram(), "u_color")
                                    v.stencilProgram = program
                                    v.stencilColorLoc = u_color_loc

                                    -- Set initial color
                                    program:use()
                                    local stencilColor = v.stencilColor or cc.c3b(255, 255, 255)
                                    program:setUniformLocationF32(u_color_loc, stencilColor.r/255, stencilColor.g/255, stencilColor.b/255)
                                end

                                v.stencilSprite = stencilSprite
                                v.stencilRenderTexture = renderTexture
                                v.stencilTempLabel = tempLabel
                                v.stencilWidth = width
                                v.stencilHeight = height

                                local layerNode = v.layerNode
                                stencilSprite:addTo(layerNode, 1)  -- On top of main label

                                -- Hide the original label
                                label:setVisible(false)
                            end

                            -- Update stencil sprite by re-rendering text
                            if v.stencilSprite and v.stencilRenderTexture and v.stencilTempLabel then
                                -- Update temp label text (with safety check)
                                local updateSuccess = pcall(function()
                                    if v.TTFFont and v.font then
                                        if v.transform == 'uc' then
                                            WatchSkin:setLabelString(v.stencilTempLabel, v.actualText:upper())
                                        else
                                            WatchSkin:setLabelString(v.stencilTempLabel, v.actualText)
                                        end
                                    else
                                        if v.transform == 'uc' then
                                            v.stencilTempLabel:setString(v.actualText:upper())
                                        else
                                            v.stencilTempLabel:setString(v.actualText)
                                        end
                                    end
                                    v.stencilTempLabel:setScale(temp.anim_scale_x, temp.anim_scale_y)
                                end)

                                if not updateSuccess then
                                    -- Label was garbage collected, skip this frame
                                    v.stencilTempLabel = nil
                                end

                                -- Re-render to texture only if label is valid
                                if v.stencilTempLabel then
                                    v.stencilRenderTexture:beginWithClear(0, 0, 0, 0)
                                    v.stencilTempLabel:visit()
                                    v.stencilRenderTexture:endToLua()
                                end

                                -- Update sprite position and properties
                                v.stencilSprite:setPosition(label_x, label_y)
                                v.stencilSprite:setRotation(temp.rotation or 0)
                                v.stencilSprite:setOpacity(temp.opacity * 2.55)
                                v.stencilSprite:setVisible(visible)

                                -- Update stencil color via shader uniform
                                local colorHex = v.color
                                if type(colorHex) == "function" then colorHex = colorHex() end
                                if colorHex and type(colorHex) == "string" and #colorHex >= 6 and v.stencilProgram and v.stencilColorLoc then
                                    local stencilColor = self:hex2rgb(colorHex)
                                    v.stencilProgram:use()
                                    v.stencilProgram:setUniformLocationF32(v.stencilColorLoc, stencilColor.r/255, stencilColor.g/255, stencilColor.b/255)
                                end
                            end
                        end
                    end
                    if temp.shader then self:updateShader(label, temp) end

                    -- Update glow layers if glow is specified
                    if v.outline == "Glow" and v.glowLayers then
                        -- Evaluate glow parameters (they can be functions)
                        local o_color = v.o_color
                        local o_size = v.o_size
                        local o_opacity = v.o_opacity

                        -- Evaluate if they are functions
                        if type(o_color) == "function" then o_color = o_color() or "ffffff" else o_color = o_color or "ffffff" end
                        if type(o_size) == "function" then o_size = tonumber(o_size()) or 10 else o_size = tonumber(o_size) or 10 end
                        if type(o_opacity) == "function" then o_opacity = tonumber(o_opacity()) or 100 else o_opacity = tonumber(o_opacity) or 100 end

                        local glowColor = self:hex2rgb(o_color)

                        -- Create glow with multiple rings at different distances
                        -- Each ring has 8 copies (N, NE, E, SE, S, SW, W, NW)
                        local numRings = math.ceil(o_size / 2)
                        local requiredCopies = numRings * 8

                        -- Create glow labels if needed
                        local layerNode = v.glowLayerNode or v.layerNode
                        while #v.glowLayers < requiredCopies do
                            local glowLabel
                            if v.font and string.find(v.font, "bm") then
                                local fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                                glowLabel = cc.Label:createWithBMFont(fontName, "")
                                if glowLabel == nil then
                                    fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                                    glowLabel = cc.Label:createWithBMFont(fontName, "")
                                end
                            else
                                if v.font == nil then
                                    glowLabel = cc.Label:createWithSystemFont("","arial", math.min(492, 1.30 * temp.text_size))
                                    glowLabel:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
                                else
                                    local fontName = "fonts/" .. v.font .. ".ttf"
                                    glowLabel = WatchSkin:createTTFLabel("", fontName, math.min(492, 1.30 * temp.text_size))
                                end
                            end
                            if glowLabel then
                                align(glowLabel, v.alignment)
                                table.insert(v.glowLayers, glowLabel)
                                glowLabel:addTo(layerNode, -2)  -- Add behind main label and shadows
                            else
                                break
                            end
                        end

                        -- Hide excess glow labels
                        for i = requiredCopies + 1, #v.glowLayers do
                            v.glowLayers[i]:setVisible(false)
                        end

                        -- Update each glow label
                        local angles = {0, 45, 90, 135, 180, 225, 270, 315}
                        for ring = 1, numRings do
                            local distance = ring * 2  -- Each ring is 2 pixels apart
                            -- Divide opacity by numRings to prevent stacking, and decrease with distance
                            local ringOpacity = (o_opacity / numRings) * (1 - (ring - 1) / numRings)
                            for a = 1, 8 do
                                local i = (ring - 1) * 8 + a
                                if i <= #v.glowLayers then
                                    local glowLabel = v.glowLayers[i]
                                    local rad = math.rad(angles[a])
                                    local offset_x = distance * math.cos(rad)
                                    local offset_y = distance * math.sin(rad)

                                    -- Update glow text
                                    if v.actualText and glowLabel.setString then
                                        if v.TTFFont and v.font then
                                            if v.transform == 'uc' then
                                                WatchSkin:setLabelString(glowLabel, v.actualText:upper())
                                            else
                                                WatchSkin:setLabelString(glowLabel, v.actualText)
                                            end
                                        else
                                            if v.transform == 'uc' then
                                                glowLabel:setString(v.actualText:upper())
                                            else
                                                glowLabel:setString(v.actualText)
                                            end
                                        end
                                    end

                                    -- Update glow position
                                    glowLabel:setPosition(label_x + offset_x, label_y + offset_y)
                                    glowLabel:rotate(temp.rotation or 0)

                                    -- Update glow appearance
                                    glowLabel:setColor(glowColor)
                                    glowLabel:setOpacity(ringOpacity * 2.55)
                                    glowLabel:setVisible(visible)

                                    -- Update scale
                                    if v.TTFFont and v.font then
                                        glowLabel:setScale(temp.anim_scale_x, temp.anim_scale_y)
                                        glowLabel:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                                    else
                                        local tSizeOrig = glowLabel:getContentSize()
                                        if tSizeOrig and tSizeOrig.height > 0 then
                                            glowLabel:setScale(1.6 * temp.text_size / tSizeOrig.height)
                                        end
                                    end
                                end
                            end
                        end
                    end

                    -- Update shadow layers if shadow is specified
                    if v.shadow and v.shadow ~= "" and v.shadowLayers then
                        -- Evaluate shadow parameters (they can be functions)
                        local w_color = v.w_color
                        local w_distance = v.w_distance
                        local w_angle = v.w_angle
                        local w_opacity = v.w_opacity

                        -- Evaluate if they are functions
                        if type(w_color) == "function" then w_color = w_color() or "000000" else w_color = w_color or "000000" end
                        if type(w_distance) == "function" then w_distance = tonumber(w_distance()) or 5 else w_distance = tonumber(w_distance) or 5 end
                        if type(w_angle) == "function" then w_angle = tonumber(w_angle()) or 135 else w_angle = tonumber(w_angle) or 135 end
                        if type(w_opacity) == "function" then w_opacity = tonumber(w_opacity()) or 100 else w_opacity = tonumber(w_opacity) or 100 end

                        local angle_rad = math.rad(w_angle)
                        local shadowColor = self:hex2rgb(w_color)

                        -- Determine required number of shadow copies
                        local requiredCopies = 1
                        if v.shadow == "Flat" then
                            requiredCopies = math.floor(w_distance)
                        end

                        -- Create shadow labels if needed
                        local layerNode = v.shadowLayerNode or v.layerNode
                        while #v.shadowLayers < requiredCopies do
                            local shadowLabel
                            if v.font and string.find(v.font, "bm") then
                                local fontName = pathZIP .. skinZIP .. "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                                shadowLabel = cc.Label:createWithBMFont(fontName, "")
                                if shadowLabel == nil then
                                    fontName = "fonts_bm/" .. v.font:gsub("bm:","") .. ".fnt"
                                    shadowLabel = cc.Label:createWithBMFont(fontName, "")
                                end
                            else
                                if v.font == nil then
                                    shadowLabel = cc.Label:createWithSystemFont("","arial", math.min(492, 1.30 * temp.text_size))
                                    shadowLabel:setHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
                                else
                                    local fontName = "fonts/" .. v.font .. ".ttf"
                                    shadowLabel = WatchSkin:createTTFLabel("", fontName, math.min(492, 1.30 * temp.text_size))
                                end
                            end
                            if shadowLabel then
                                align(shadowLabel, v.alignment)
                                table.insert(v.shadowLayers, shadowLabel)
                                shadowLabel:addTo(layerNode, -1)  -- Add behind main label
                            else
                                break
                            end
                        end

                        -- Hide excess shadow labels if w_distance decreased
                        for i = requiredCopies + 1, #v.shadowLayers do
                            v.shadowLayers[i]:setVisible(false)
                        end

                        -- Update each shadow label
                        for i = 1, math.min(requiredCopies, #v.shadowLayers) do
                            local shadowLabel = v.shadowLayers[i]
                            -- Calculate offset based on shadow type
                            -- Angle represents light source direction, shadow goes opposite
                            -- Cocos2d-x uses Y-up coordinate system
                            local offset_x, offset_y
                            if v.shadow == "Drop" then
                                offset_x = -w_distance * math.cos(angle_rad)
                                offset_y = -w_distance * math.sin(angle_rad)
                            else -- Flat
                                -- For flat, each copy is offset by 1 unit (i-th copy at distance i)
                                offset_x = -i * math.cos(angle_rad)
                                offset_y = -i * math.sin(angle_rad)
                            end

                            -- Update shadow text to match main label
                            if v.actualText and shadowLabel.setString then
                                if v.TTFFont and v.font then
                                    if v.transform == 'uc' then
                                        WatchSkin:setLabelString(shadowLabel, v.actualText:upper())
                                    else
                                        WatchSkin:setLabelString(shadowLabel, v.actualText)
                                    end
                                else
                                    if v.transform == 'uc' then
                                        shadowLabel:setString(v.actualText:upper())
                                    else
                                        shadowLabel:setString(v.actualText)
                                    end
                                end
                            end

                            -- Update shadow position (same as main label but with offset)
                            shadowLabel:setPosition(label_x + offset_x, label_y + offset_y)
                            shadowLabel:rotate(temp.rotation or 0)

                            -- Update shadow appearance
                            shadowLabel:setColor(shadowColor)
                            shadowLabel:setOpacity(w_opacity * 2.55)
                            shadowLabel:setVisible(visible)

                            -- Update scale to match main label
                            if v.TTFFont and v.font then
                                shadowLabel:setScale(temp.anim_scale_x, temp.anim_scale_y)
                                shadowLabel:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                            else
                                local tSizeOrig = shadowLabel:getContentSize()
                                if tSizeOrig and tSizeOrig.height > 0 then
                                    shadowLabel:setScale(1.6 * temp.text_size / tSizeOrig.height)
                                end
                            end
                        end
                    end
               end
            else
                label:setVisible(false)
                -- Hide shadow layers too
                if v.shadowLayers then
                    for i, shadowLabel in ipairs(v.shadowLayers) do
                        shadowLabel:setVisible(false)
                    end
                end
            end
        elseif v.type == 'shape' or v.type == 'ring' or v.type == 'rounded' then
            local bitmap = v.drawable
            if bitmap ~= nil then
                --if temp.opacity == false or temp.opacity == nil or temp.opacity == -1 or visible == false then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    bitmap:setVisible(false)
                    -- Hide shadow layers too
                    if v.shadowLayers then
                        for i, shadowShape in ipairs(v.shadowLayers) do
                            shadowShape:setVisible(false)
                        end
                    end
                else
                    align(bitmap, v.alignment)
                    temp.opacity=tonumber(temp.opacity) or 0
                  --  print(k, "shape:",temp.opacity, temp.width, temp.x, temp.y)
                    bitmap:setOpacity(temp.opacity * 2.55)
                    bitmap:setVisible(visible)
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local shape_x = get2D_X_Position(temp.x, v)
                    local shape_y = get2D_Y_Position(temp.y, v)
                    bitmap:setPosition(shape_x, shape_y):rotate(temp.rotation or 0)
--bitmap:setPositionZ(k*10)---milli/3)
                    --   temp.color=self:hex2rgb("FF0000")
                    bitmap:setColor(temp.color)
                    local tSizeOrig = bitmap:getContentSize()
                    temp.width=tonumber(temp.width) or 0
                    temp.height=tonumber(temp.height) or 0
                    if (tSizeOrig.width~=tSizeOrig.height and temp.width==temp.height) then
                        tSizeOrig.height=tSizeOrig.width
                    end
                    bitmap:setScale((temp.width / tSizeOrig.width) * temp.anim_scale_x, (temp.height / tSizeOrig.height) * temp.anim_scale_y)
                    temp.skew_x = tonumber(temp.skew_x) or 0
                    temp.skew_y = tonumber(temp.skew_y) or 0
           --     print(temp.skew_x,temp.skew_y)
                    bitmap:setSkewX(temp.skew_x):setSkewY(temp.skew_y)

                    -- For ring type, clamp angle to angle_total and update u_3/u_4
                    if v.type == 'ring' then
                        -- Ensure values are numbers
                        temp.angle = tonumber(temp.angle) or 0
                        temp.angle_total = tonumber(temp.angle_total) or 360

                        if temp.angle > temp.angle_total then
                            temp.angle = temp.angle_total
                        end
                        temp.u_3 = temp.angle_total
                        temp.u_4 = temp.angle
                    end

                    if temp.shader then self:updateShader(bitmap, temp) end

                    -- Update outline/glow layers if outline is specified
                    if v.outline and v.outline ~= "" and v.outlineLayers then
                        -- Evaluate outline parameters (they can be functions)
                        local o_color = v.o_color
                        local o_size = v.o_size
                        local o_opacity = v.o_opacity

                        -- Evaluate if they are functions
                        if type(o_color) == "function" then o_color = o_color() or "ffffff" else o_color = o_color or "ffffff" end
                        if type(o_size) == "function" then o_size = tonumber(o_size()) or 4 else o_size = tonumber(o_size) or 4 end
                        if type(o_opacity) == "function" then o_opacity = tonumber(o_opacity()) or 100 else o_opacity = tonumber(o_opacity) or 100 end

                        local outlineColor = self:hex2rgb(o_color)

                        -- Determine number of copies based on type
                        local requiredCopies = 0
                        local numRings = 1
                        if v.outline == "Outline" then
                            requiredCopies = 8  -- 8 directions
                            numRings = 1
                        elseif v.outline == "Glow" then
                            numRings = math.ceil(o_size / 2)
                            requiredCopies = numRings * 8  -- 8 directions per ring
                        end

                        -- Create outline shapes if needed
                        local parentLayer = v.outlineParentLayer
                        local outlineLayerId = v.outlineLayerId or 0
                        while #v.outlineLayers < requiredCopies do
                            local outlineTemp = {}
                            for key, value in pairs(temp) do
                                outlineTemp[key] = value
                            end
                            outlineTemp.color = outlineColor
                            outlineTemp.opacity = o_opacity

                            local outlineShape = self:drawShape(outlineTemp)
                            if outlineShape then
                                table.insert(v.outlineLayers, outlineShape)
                                outlineShape:addTo(parentLayer, outlineLayerId - 2)  -- Behind shadows
                            else
                                break
                            end
                        end

                        -- Hide excess outline shapes
                        for i = requiredCopies + 1, #v.outlineLayers do
                            v.outlineLayers[i]:setVisible(false)
                        end

                        -- Update each outline shape
                        local angles = {0, 45, 90, 135, 180, 225, 270, 315}
                        if v.outline == "Outline" then
                            -- Simple outline: 8 copies at o_size distance
                            for a = 1, 8 do
                                if a <= #v.outlineLayers then
                                    local outlineShape = v.outlineLayers[a]
                                    local rad = math.rad(angles[a])
                                    local offset_x = o_size * math.cos(rad)
                                    local offset_y = o_size * math.sin(rad)

                                    outlineShape:setPosition(shape_x + offset_x, shape_y + offset_y)
                                    outlineShape:rotate(temp.rotation or 0)
                                    outlineShape:setColor(outlineColor)
                                    outlineShape:setOpacity(o_opacity * 2.55)
                                    outlineShape:setVisible(visible)
                                    outlineShape:setScale((temp.width / tSizeOrig.width) * temp.anim_scale_x, (temp.height / tSizeOrig.height) * temp.anim_scale_y)
                                    outlineShape:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                                end
                            end
                        elseif v.outline == "Glow" then
                            -- Glow: multiple rings with decreasing opacity
                            for ring = 1, numRings do
                                local distance = ring * 2
                                local ringOpacity = (o_opacity / numRings) * (1 - (ring - 1) / numRings)
                                for a = 1, 8 do
                                    local i = (ring - 1) * 8 + a
                                    if i <= #v.outlineLayers then
                                        local outlineShape = v.outlineLayers[i]
                                        local rad = math.rad(angles[a])
                                        local offset_x = distance * math.cos(rad)
                                        local offset_y = distance * math.sin(rad)

                                        outlineShape:setPosition(shape_x + offset_x, shape_y + offset_y)
                                        outlineShape:rotate(temp.rotation or 0)
                                        outlineShape:setColor(outlineColor)
                                        outlineShape:setOpacity(ringOpacity * 2.55)
                                        outlineShape:setVisible(visible)
                                        outlineShape:setScale((temp.width / tSizeOrig.width) * temp.anim_scale_x, (temp.height / tSizeOrig.height) * temp.anim_scale_y)
                                        outlineShape:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                                    end
                                end
                            end
                        end
                    end

                    -- Update shadow layers if shadow is specified
                    if v.shadow and v.shadow ~= "" and v.shadowLayers then
                        -- Evaluate shadow parameters (they can be functions)
                        local w_color = v.w_color
                        local w_distance = v.w_distance
                        local w_angle = v.w_angle
                        local w_opacity = v.w_opacity

                        -- Evaluate if they are functions
                        if type(w_color) == "function" then w_color = w_color() or "000000" else w_color = w_color or "000000" end
                        if type(w_distance) == "function" then w_distance = tonumber(w_distance()) or 5 else w_distance = tonumber(w_distance) or 5 end
                        if type(w_angle) == "function" then w_angle = tonumber(w_angle()) or 135 else w_angle = tonumber(w_angle) or 135 end
                        if type(w_opacity) == "function" then w_opacity = tonumber(w_opacity()) or 100 else w_opacity = tonumber(w_opacity) or 100 end

                        local angle_rad = math.rad(w_angle)
                        local shadowColor = self:hex2rgb(w_color)

                        -- Determine required number of shadow copies
                        local requiredCopies = 1
                        if v.shadow == "Flat" then
                            requiredCopies = math.floor(w_distance)
                        end

                        -- Create shadow shapes if needed
                        local parentLayer = v.shadowParentLayer
                        local shadowLayerId = v.shadowLayerId or 0
                        while #v.shadowLayers < requiredCopies do
                            local shadowTemp = {}
                            for key, value in pairs(temp) do
                                shadowTemp[key] = value
                            end
                            shadowTemp.color = shadowColor
                            shadowTemp.opacity = w_opacity

                            local shadowShape = self:drawShape(shadowTemp)
                            if shadowShape then
                                table.insert(v.shadowLayers, shadowShape)
                                shadowShape:addTo(parentLayer, shadowLayerId - 1)  -- Add behind main shape
                            else
                                break
                            end
                        end

                        -- Hide excess shadow shapes if w_distance decreased
                        for i = requiredCopies + 1, #v.shadowLayers do
                            v.shadowLayers[i]:setVisible(false)
                        end

                        -- Update each shadow shape
                        for i = 1, math.min(requiredCopies, #v.shadowLayers) do
                            local shadowShape = v.shadowLayers[i]
                            -- Calculate offset based on shadow type
                            -- Angle represents light source direction, shadow goes opposite
                            -- Cocos2d-x uses Y-up coordinate system
                            local offset_x, offset_y
                            if v.shadow == "Drop" then
                                offset_x = -w_distance * math.cos(angle_rad)
                                offset_y = -w_distance * math.sin(angle_rad)
                            else -- Flat
                                -- For flat, each copy is offset by 1 unit (i-th copy at distance i)
                                offset_x = -i * math.cos(angle_rad)
                                offset_y = -i * math.sin(angle_rad)
                            end

                            -- Update shadow position
                            shadowShape:setPosition(shape_x + offset_x, shape_y + offset_y)
                            shadowShape:rotate(temp.rotation or 0)

                            -- Update shadow appearance
                            shadowShape:setColor(shadowColor)
                            shadowShape:setOpacity(w_opacity * 2.55)
                            shadowShape:setVisible(visible)

                            -- Update shadow scale to match main shape
                            shadowShape:setScale((temp.width / tSizeOrig.width) * temp.anim_scale_x, (temp.height / tSizeOrig.height) * temp.anim_scale_y)
                            shadowShape:setSkewX(temp.skew_x):setSkewY(temp.skew_y)
                        end
                    end
                end
            end
        elseif v.type == 'markers' or v.type == "markers_hm" then
            local bitmap = v.drawable
            if bitmap ~= nil then
                --if temp.opacity == false or temp.opacity == nil or temp.opacity == -1 or temp.opacity == 0 or visible == false then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    bitmap:setVisible(false)
                else
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local marker_x = get2D_X_Position(temp.x, v)
                    local marker_y = get2D_Y_Position(temp.y, v)
                    bitmap:setPosition(marker_x, marker_y)
                    bitmap:setAnchorPoint(cc.p(0,0))
                    --if temp.m_count and tonumber(temp.m_count) > 1 then bitmap:rotate(temp.rotation or 0) end
                    bitmap:rotate(temp.rotation or 0)
                    bitmap:setOpacity(temp.opacity * 2.55)
                    bitmap:setColor(temp.color)
                    bitmap:setVisible(visible)

                    local children = bitmap:getChildren()
                    for i= 1, #children do
                        local child = children[i]
                        if nil ~= child then
                            if temp.shader then self:updateShader(child, temp) end
                            child:setColor(temp.color)
                        end
                    end
                end
            end
        elseif v.type == "calendar" then
            local bitmap = v.drawable
            if bitmap ~= nil then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    bitmap:setVisible(false)
                else
                    -- Regenerate calendar if date changed or colors changed
                    local currentDate = string.format("%d-%d-%d",
                        calendar.year or 2024,
                        calendar.month or 1,
                        calendar.day or 1)
                    if v.actualText ~= currentDate or color_changed then
                        WatchSkin:createCalendar(v)
                        bitmap = v.drawable
                    end

                    bitmap:setAnchorPoint(cc.p(0,0)):setScale(temp.anim_scale_x, temp.anim_scale_y)
                    bitmap:rotate(temp.rotation or 0)
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local cal_x = get2D_X_Position(temp.x, v)
                    local cal_y = get2D_Y_Position(temp.y, v)
                    bitmap:setPosition(cal_x, cal_y)
                    bitmap:setOpacity(temp.opacity * 2.55)
                    bitmap:setVisible(visible)
                end
            end
        elseif v.type == "text_ring" or v.type == "text_curved" then
            local bitmap = v.drawable
            if bitmap ~= nil then
                --if temp.opacity == false or temp.opacity == nil or temp.opacity == -1 or temp.opacity == 0 or visible == false then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    bitmap:setVisible(false)
                else
                    if v.type == "text_curved" and (v.actualText ~= temp.text or color_changed) then
                        -- print("test",v.actualColor,temp.color)
                        WatchSkin:createTextCurved(v) --, temp)
                        bitmap = v.drawable
                 --       print(v.type,k, v.actualText, temp.text, temp.opacity, var_digits, visible, v.display)
                    end
                    if v.type == "text_ring" and (v.actualText ~= temp.text or color_changed) then
                        -- print("test",v.actualColor,temp.color)
                        WatchSkin:createTextRing(v)
                        bitmap = v.drawable
                    end
                    --print("text_ring x,y",temp.x,temp.y, temp.x * temp.anim_scale_x, 256 - (256-temp.y) * temp.anim_scale_y)
                    bitmap:setAnchorPoint(cc.p(0,0)):setScale(temp.anim_scale_x, temp.anim_scale_y)
                    bitmap:rotate(temp.rotation or 0)
                    -- Apply unified 2D position calculation with fullscreen offset compensation
                    local text_x = get2D_X_Position(temp.x, v)
                    local text_y = get2D_Y_Position(temp.y, v)
                    bitmap:setPosition(text_x, text_y)
                    bitmap:setOpacity(temp.opacity * 2.55)
                    bitmap:setColor(temp.color)
                    bitmap:setVisible(visible)
                end
            end
        elseif v.type == 'chart' then
            -- Chart layer: update data and redraw
            if v.layerNode ~= nil and v.drawable ~= nil then
                if temp.opacity == 0 or temp.opacity == -1 or visible == false then
                    v.layerNode:setVisible(false)
                    -- DrawNodes don't respect parent visibility, must set them invisible too
                    v.drawable:setVisible(false)
                    if v.dotsDrawable then
                        v.dotsDrawable:setVisible(false)
                    end
                else
                    v.layerNode:setVisible(visible)
                    -- Restore DrawNodes visibility
                    v.drawable:setVisible(true)
                    if v.dotsDrawable then
                        v.dotsDrawable:setVisible(true)
                    end

                    -- Update chart styling parameters from temp (evaluated layer data)
                    -- NOTE: Do NOT overwrite v.opacity with temp.opacity - it destroys the expression!
                    v.lineWidth = tonumber(temp.line_width) or v.lineWidth or 10
                    v.markerSize = tonumber(temp.marker_size) or v.markerSize or 10
                    v.barThickness = tonumber(temp.bar_thickness) or v.barThickness or 50
                    v.topOpacity = tonumber(temp.top_opacity) or v.topOpacity or 100
                    v.bottomOpacity = tonumber(temp.bottom_opacity) or v.bottomOpacity or 100

                    -- Apply position and transformations to the chart layer
                    local chart_x = get2D_X_Position(temp.x, v)
                    local chart_y = get2D_Y_Position(temp.y, v)
                    v.layerNode:setPosition(chart_x, chart_y)
                    v.layerNode:setRotation(temp.rotation or 0)
                    v.layerNode:setScale(temp.anim_scale_x, temp.anim_scale_y)
                    v.layerNode:setOpacity(temp.opacity * 2.55)

                    -- Update chart data and redraw
                    self:updateChart(v)
                end
            end
        end

        ::continue:: -- Label for goto continue (skip to next iteration in updateMilli loop)
    end
end

-- Draw rounded rectangle using geometry (circles + rectangles) to a RenderTexture
-- cornerType: optional parameter to control which corners are rounded (0-16)
--   Default (nil or 1) = all corners rounded
--   See decodeRoundedCornerType() for corner type mappings
function WatchSkin:drawRoundedRectGeometry(width, height, radius, color, cornerType)
    -- Decode corner type (default to all rounded)
    cornerType = tonumber(cornerType) or 1
    local corners = self:decodeRoundedCornerType(cornerType)
    -- Corners in Cocos2D-x coordinates (TL=high Y, BL=low Y)
    -- Due to Y-inversion: User's top → Cocos bottom, User's bottom → Cocos top
    local roundCocosTL = corners[1]  -- Cocos TL (high Y) = User's BL (bottom-left on screen)
    local roundCocosTR = corners[2]  -- Cocos TR (high Y) = User's BR (bottom-right on screen)
    local roundCocosBL = corners[3]  -- Cocos BL (low Y) = User's TL (top-left on screen)
    local roundCocosBR = corners[4]  -- Cocos BR (low Y) = User's TR (top-right on screen)

    -- Create RenderTexture with the specified dimensions
    local renderTexture = cc.RenderTexture:create(width, height)

    -- Begin drawing with transparent background
    renderTexture:beginWithClear(0, 0, 0, 0)

    -- Create DrawNode for drawing shapes
    local drawNode = cc.DrawNode:create()

    -- Convert hex color to RGB (0-1 range)
    local r, g, b, a = 1, 1, 1, 1
    if type(color) == "string" and #color >= 6 then
        r = tonumber("0x" .. color:sub(1, 2)) / 255
        g = tonumber("0x" .. color:sub(3, 4)) / 255
        b = tonumber("0x" .. color:sub(5, 6)) / 255
    end
    local colorValue = cc.c4f(r, g, b, a)

    -- Calculate how much space is needed for rounded corners
    local leftRadius = (roundCocosTL or roundCocosBL) and radius or 0
    local rightRadius = (roundCocosTR or roundCocosBR) and radius or 0
    local topRadius = (roundCocosTL or roundCocosTR) and radius or 0  -- Top in Cocos = high Y
    local bottomRadius = (roundCocosBL or roundCocosBR) and radius or 0  -- Bottom in Cocos = low Y

    -- Draw center rectangles
    -- Vertical center rectangle
    local vertWidth = width - leftRadius - rightRadius
    if vertWidth > 0 then
        local origin = cc.p(leftRadius, 0)
        local dest = cc.p(leftRadius + vertWidth, height)
        drawNode:drawSolidRect(origin, dest, colorValue)
    end

    -- Horizontal center rectangle
    local horizHeight = height - topRadius - bottomRadius
    if horizHeight > 0 then
        local origin = cc.p(0, bottomRadius)
        local dest = cc.p(width, bottomRadius + horizHeight)
        drawNode:drawSolidRect(origin, dest, colorValue)
    end

    -- Draw corners (circles for rounded, rectangles for sharp)
    -- Cocos BL corner (low X, low Y) = User's TL (top-left on screen)
    if roundCocosBL then
        drawNode:drawSolidCircle(cc.p(radius, radius), radius, 0, 50, 1, 1, colorValue)
    else
        -- Sharp corner - fill with rectangle
        drawNode:drawSolidRect(cc.p(0, 0), cc.p(radius, radius), colorValue)
    end

    -- Cocos BR corner (high X, low Y) = User's TR (top-right on screen)
    if roundCocosBR then
        drawNode:drawSolidCircle(cc.p(width - radius, radius), radius, 0, 50, 1, 1, colorValue)
    else
        -- Sharp corner - fill with rectangle
        drawNode:drawSolidRect(cc.p(width - radius, 0), cc.p(width, radius), colorValue)
    end

    -- Cocos TL corner (low X, high Y) = User's BL (bottom-left on screen)
    if roundCocosTL then
        drawNode:drawSolidCircle(cc.p(radius, height - radius), radius, 0, 50, 1, 1, colorValue)
    else
        -- Sharp corner - fill with rectangle
        drawNode:drawSolidRect(cc.p(0, height - radius), cc.p(radius, height), colorValue)
    end

    -- Cocos TR corner (high X, high Y) = User's BR (bottom-right on screen)
    if roundCocosTR then
        drawNode:drawSolidCircle(cc.p(width - radius, height - radius), radius, 0, 50, 1, 1, colorValue)
    else
        -- Sharp corner - fill with rectangle
        drawNode:drawSolidRect(cc.p(width - radius, height - radius), cc.p(width, height), colorValue)
    end

    -- Add DrawNode to RenderTexture
    drawNode:setPosition(0, 0)
    drawNode:visit()

    -- Finish rendering
    renderTexture:endToLua()

    -- Return the sprite from the RenderTexture
    local sprite = cc.Sprite:createWithTexture(renderTexture:getSprite():getTexture())
    sprite:setTextureRect(cc.rect(0, 0, width, height))
    sprite:setAnchorPoint(0.5, 0.5)

    return sprite
end

function WatchSkin:drawShape(temp, posx , posy, angle)
    if posx==nil then
        posx=256
        posy=256
    end
    local w=0
    local h=0
    temp.width=tonumber(temp.width) or 0
    temp.m_width=tonumber(temp.m_width) or 0
    if (temp.m_width > 0) then
        w = temp.m_width
        h = tonumber(temp.m_height)
    else
        w = temp.width
        h = tonumber(temp.height)
    end

    local bitmap="shape_square.png"
    if temp.shape == "Circle" then
        bitmap ="shape_circle.png"
    elseif temp.shape == "Square" then
        bitmap ="shape_square.png"
    elseif temp.shape == "Star" then
        bitmap ="shape_star.png"
    elseif temp.shape == "Triangle" then
        bitmap ="shape_triangle.png"
    elseif temp.shape == "Pentagon" then
        bitmap ="shape_pentagon.png"
    elseif temp.shape == "Hexagon" then
        bitmap ="shape_hexagon.png"
    elseif temp.shape == "Heart" then
        bitmap ="shape_heart.png"
    end
    if angle==nil then angle = 0 end
 --   print ("draw shape:", temp.shape, "size w,h:" , w .. ", " .. h , "pos x,y:", posx .. ", " .. posy, "ang:" .. angle)
    local sp = display.newSprite(bitmap)
    local tSizeOrig = sp:getContentSize()
    if (tSizeOrig.width~=tSizeOrig.height and w==h) then
        tSizeOrig.height=tSizeOrig.width
    end
    --temp.anim_scale_x=(tonumber(temp.anim_scale_x) or 100)
    --temp.anim_scale_y=(tonumber(temp.anim_scale_y) or 100)
    sp:setScale((w / tSizeOrig.width) * temp.anim_scale_x, (h / tSizeOrig.height) * temp.anim_scale_y)
  --  print("scale",(w / tSizeOrig.width) * temp.anim_scale_x/100, (h / tSizeOrig.height) * temp.anim_scale_y/100)
    temp.opacity=tonumber(temp.opacity) or 0
    if temp.opacity == -1 then temp.opacity = 0 end
    sp:setPosition(posx,posy):rotate(angle):setOpacity(temp.opacity * 2.55)

    --   temp.color=self:hex2rgb("181a1a")
    if temp.color~=nil then
        if (type(temp.color) == "table") then
            sp:setColor(temp.color)
        else
         --   print("shape color")
            sp:setColor(self:hex2rgb(temp.color))
        end
    end
    return sp
end

-- Create shadow layers for text or shape
-- shadowType: "Drop" or "Flat"
-- w_color: shadow color (hex string)
-- w_distance: distance for drop shadow, or number of copies for flat shadow
-- w_angle: angle in degrees (0 = right, 90 = up, 180 = left, 270 = down)
-- w_opacity: opacity of shadow (0-100)
-- createCopyFunc: function(color, opacity, offset_x, offset_y) to create a shadow copy
-- parentLayer: parent layer to add shadow copies to
-- zOrder: z-order to use for shadow copies (should be lower than main layer)
function WatchSkin:createShadowLayers(v, createCopyFunc, parentLayer, zOrder)
    if not v.shadow or v.shadow == "" then return end

    local shadowType = v.shadow
    local w_color = v.w_color or "000000"
    local w_distance = tonumber(v.w_distance) or 5
    local w_angle = tonumber(v.w_angle) or 135
    local w_opacity = tonumber(v.w_opacity) or 100

    -- Convert angle to radians (angle 0 = right, 90 = up in standard math)
    -- Screen Y is inverted (up is negative), so we negate the Y component
    local angle_rad = math.rad(w_angle)

    -- Store shadows for reference
    if not v.shadowLayers then v.shadowLayers = {} end

    if shadowType == "Drop" then
        -- Create a single shadow copy at the specified distance and angle
        local offset_x = w_distance * math.cos(angle_rad)
        local offset_y = -w_distance * math.sin(angle_rad)  -- Negative because screen Y is inverted

        local shadowCopy = createCopyFunc(w_color, w_opacity, offset_x, offset_y)
        if shadowCopy then
            shadowCopy:addTo(parentLayer, zOrder)
            table.insert(v.shadowLayers, shadowCopy)
        end
    elseif shadowType == "Flat" then
        -- Create multiple copies, each offset by 1 pixel along the angle
        local step_x = math.cos(angle_rad)
        local step_y = -math.sin(angle_rad)  -- Negative because screen Y is inverted

        -- Add from farthest to nearest so closer shadows are on top
        for i = w_distance, 1, -1 do
            local offset_x = i * step_x
            local offset_y = i * step_y

            local shadowCopy = createCopyFunc(w_color, w_opacity, offset_x, offset_y)
            if shadowCopy then
                shadowCopy:addTo(parentLayer, zOrder)
                table.insert(v.shadowLayers, shadowCopy)
            end
        end
    end
end

function WatchSkin:hex2rgb(hex)
    if (type(hex)=="number") then hex = tostring(hex)
    elseif (hex == false or hex == nil) then return cc.c3b(255,255,255)
    end
    return cc.c3b(tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6)))
end

function WatchSkin:hex24F(hex, opacity)
    if (type(hex)=="number") then --print (hex)
        hex = tostring(hex) end
    if (hex == false or hex == nil) then return cc.c4f(1,1,1,1) end
    return cc.c4f(tonumber("0x" .. hex:sub(1, 2)) / 255, tonumber("0x" .. hex:sub(3, 4)) / 255, tonumber("0x" .. hex:sub(5, 6)) / 255, (opacity or 0) / 100)
end

function WatchSkin:hex24B(hex, opacity)
    if (type(hex)=="number") then --print (hex)
        hex = tostring(hex) end
    if (hex == false or hex == nil) then return cc.c4b(255,255,255,255) end
    return cc.c4b(tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6)), (opacity or 0) *2.55)
end

function WatchSkin:touch(location)
    local touched = false
    print("touched on x:" .. location.x , " y:" .. location.y, cc.exports.displayscale)

    -- Reverse the scene offset transformations based on fullscreen mode
    -- These offsets match the scene:move() calls in onCreate() using unified functions
    if (cc.exports.fullscreen == 0) then
        -- Mode 0: Vertical centered
        location.x = location.x - getFullscreenMode0_XOffset()
    elseif (cc.exports.fullscreen == 2) then
        -- Mode 2: Horizontal centered
        location.y = location.y - getFullscreenMode2_YOffset()
    elseif (cc.exports.fullscreen == 3) then
        -- Mode 3: Vertical compatibility
        location.x = location.x - getFullscreenMode3_XOffset()
    elseif (cc.exports.fullscreen == 4) then
        -- Mode 4: Horizontal compatibility
        location.y = location.y - getFullscreenMode4_YOffset()
    end
    -- fullscreen == 1 (EXACT_FIT): no scene offset, only scale adjustment needed

    -- Apply display scale transformation (centered at 256,256)
    location.x = (location.x-256) / (cc.exports.displayscale) + 256
    location.y = (location.y-256) / (cc.exports.displayscale) + 256

    print("        on x:" .. location.x , " y:" .. location.y)
    local bb
    local action=""
    local actionDistance=1000
    for k, v in pairs(drawable) do
        if v.tap_action and v.drawable then
            local temp = evaluateDrawable(v)
            --print (v.drawable)
            if temp.opacity and temp.opacity ~= -1 then -- and temp.width ~= nil then
                if not pcall(function() bb = v.drawable:getBoundingBox() end) then
                    print("Failure boundingbox")
                    return false
                end
                local position = cc.p(v.drawable:getPosition())
              --  local touchRect = cc.rect(-bb.width / 2 + position.x, -bb.height / 2 + position.y, bb.width, bb.height)
                --print("drawable:" .. -bb.width / 2 + position.x .. " " .. -bb.height / 2 + position.y .. " " .. bb.width .. " " .. bb.height, " op:" , temp.opacity)
                --if cc.rectContainsPoint(touchRect, location) then --cc.rectContainsPoint(v.drawable:getBoundingBox(), l) then
                local distance=math.sqrt( math.pow(cc.rectGetMidX(bb)-location.x, 2) + math.pow(cc.rectGetMidY(bb)-location.y, 2))

                if cc.rectContainsPoint(bb, location) or distance < 50 then --cc.rectContainsPoint(v.drawable:getBoundingBox(), l) then
                    --print ("distance:", distance, cc.rectGetMidX(bb), cc.rectGetMidY(bb))
                    if distance < actionDistance then action = v.tap_action actionDistance = distance end
                    touched = true
                end
            end
        end
    end
    if touched == false then
        beenTouched=socket.gettime()
    else
        print("touched !! : ")

        local printi=1
        while (printi < action:len()) do
            print(action:sub(printi, printi+999))
            printi=printi+1000
        end

        wm_action(action)
    end
    return touched
end

function wm_tag(v)
    local value = _G[v:gsub('{', ''):gsub('}', '')] or ""
--    print (v, value)
    return value
end

function wm_sfx(sound)
    print("Playing", sound)
    audio.playMusic(pathZIP .. skinZIP .. "sfx/" .. sound .. ".mp3", false)
    --audio.playSound(pathZIP .. skinZIP .. "sfx/" .. sound .. ".mp3", false)
end
function wm_action(action)

    --action="w_app:Maps`com.google.android.apps.maps`com.google.android.maps.MapsActivity"
    if action == "sw_start_stop" then
        isSWstarted = not isSWstarted
        if not isSWstarted then
            istopTime = socket.gettime() - istartTime
        end
    elseif action == "color_switch_next" or action == "color_switch_select" then
        ucolor_index = ucolor_index + 1
        if ucolor_index > #ucolor_map then
            ucolor_index = 0
            ucolor = ucolor_default
        else
            ucolor = ucolor_map[ucolor_index]
        end
    elseif action == "color_switch_prev" then
        ucolor_index = ucolor_index - 1
        if ucolor_index < 0 then
            ucolor_index = #ucolor_map
            ucolor = ucolor_map[ucolor_index]
        elseif ucolor_index == 0 then
            ucolor = ucolor_default
        else
            ucolor = ucolor_map[ucolor_index]
        end
    elseif action == "sw_reset" then
        isSWstarted = false
        istartTime = 0
        istopTime = 0
    elseif string.find(action, 'w_app') or string.find(action, 'm_app') then
        local s = action:gsub('w_app:',''):gsub('m_app:',''):split("`")
        print("action:",s[1], s[2], s[3])
        local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
        local ok,ret  = luaj.callStaticMethod(className,"launchAction",{s[2].."/"..s[3]})
        if not ok then
            print("luaj error:", ret)
        else
            print("The ret is:", ret)
        end
    elseif action == "script:wm_action('m_update_weather')" or action == "m_update_weather" then
        WatchSkin:updateWeather()
    elseif string.sub(action, 1, 7) == "script:" then
        -- Handle script: prefix - execute as Lua code
        local status, error = pcall(loadstring(action:gsub("script:", "")))
        if status==false then
            print ("Error in script action", action:gsub("script:", ""), error)
        else
            print("Success")
        end
    else
        -- All other actions: pass to Java launchAction handler
        -- This includes: vol_up, vol_down, media_*, voice_search, w_agenda, widget_health, etc.
        local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
        local ok,ret  = luaj.callStaticMethod(className,"launchAction",{action})
        if not ok then
            print("luaj error:", ret)
        else
            print("launchAction success for:", action)
        end
    end
end

function wm_schedule(args)
    wm_schedule_withtime(args, socket.gettime())
end

function wm_schedule_withtime(args, timeoffset)
    local durationoffset=timeoffset
--    print("wm schedule from time:", timeoffset)
    for key,value in pairs(args) do
        --print("wm schedule " .. key, value )
        if type(value) == "table" then
            timeoffset=wm_schedule_withtime(value, timeoffset)
        end
    end
    if args.tween then
        for svar, sfunc in pairs(funcschedule) do
            if string.find(svar, 'tweens.' .. args.tween) and sfunc[2] > timeoffset then
--                print ("found another tween:" , svar, "timeoffset changed from :", timeoffset, "to",sfunc[2])
                timeoffset=sfunc[2]
            end
        end

        local from = args.from or tweens[args.tween] or 0
        local to = args.to or 0
        --print ("      from,to,duration" , from,to,args.duration)
        -- Handle easing: if it's a string, use it; if it's a function, search for matching function name; otherwise default
        local func = 'linearTween'
        if type(args.easing) == 'string' then
            func = args.easing
        elseif type(args.easing) == 'function' then
            -- Search global scope for matching function reference
            for name, value in pairs(_G) do
                if value == args.easing and type(name) == 'string' then
                    func = name
                    break
                end
            end
        end
        --local temp='tweens.' .. args.tween .. ' = linearTween(socket.gettime() - ' .. timeoffset .. ' ,' ..
        local temp='tweens.' .. args.tween .. ' = '..func..'(socket.gettime() - ' .. timeoffset .. ' ,' ..
                from .. ' ,' .. to-from .. ' ,' .. args.duration .. ')'
        local tempend = 'tweens.' .. args.tween .. ' = ' .. to
 --       print ("      func:", temp)
        local funcendtime= timeoffset + args.duration
 --       print ("      endtime:", funcendtime)
        durationoffset = funcendtime
        funcschedule['tweens.' .. args.tween .. timeoffset] = {assert(loadstring(temp)), funcendtime, assert(loadstring(tempend)), timeoffset, args.from, args.to, args.duration , args.tween}
    elseif args.action and args.action == 'sleep' then
        durationoffset = timeoffset + args.sleep
        --print ("adding ", args.sleep)
    elseif args.action and args.action == 'run_function' then
        if type(args.run_function) == 'function' then
            --print("function", tostring(args.run_function) .. " " .. timeoffset)
            --pcall(loadstring(args.run_function))
            funcschedule['run_function.' .. tostring(args.run_function)  .. timeoffset] = {args.run_function, nil, nil, timeoffset }
        else
            funcschedule['run_function.' .. args.run_function .. timeoffset] = {pcall(loadstring(args.run_function)), nil, nil, timeoffset }
        end
    end
    return durationoffset
end

-- ============================================================================
-- CHART LAYER IMPLEMENTATION
-- ============================================================================

-- Parse data points from semicolon-separated string
function WatchSkin:parseDataPoints(dataPointsStr)
    if not dataPointsStr or dataPointsStr == "" then
        return {}
    end

    local expressions = {}
    for expr in string.gmatch(dataPointsStr, "[^;]+") do
        table.insert(expressions, expr)
    end
    return expressions
end

-- Parse min/max range from "40 to 20" format
function WatchSkin:parseMinMax(minMaxStr)
    if not minMaxStr or minMaxStr == "" then
        return {auto = true}
    end

    -- Remove spaces and split by "to"
    local cleaned = string.gsub(minMaxStr, " ", "")
    local parts = {}
    for part in string.gmatch(cleaned, "[^to]+") do
        table.insert(parts, tonumber(part))
    end

    if #parts == 2 then
        return {
            auto = false,
            max = parts[1], -- First value is max
            min = parts[2]  -- Second value is min
        }
    end

    return {auto = true}
end

-- Parse chart lines (gridlines and reference lines)
function WatchSkin:parseChartLines(linesStr)
    if not linesStr or linesStr == "" then
        return {}
    end

    local lines = {}
    for lineDef in string.gmatch(linesStr, "[^`]+") do
        local parts = {}
        for part in string.gmatch(lineDef, "[^|]+") do
            table.insert(parts, part)
        end

        if #parts >= 8 then
            table.insert(lines, {
                lineType = parts[1],    -- H, V, MAX, MIN, AVG
                style = parts[2],       -- Solid, Dashed
                width = tonumber(parts[3]) or 1,
                color = parts[4],       -- Hex color string
                opacity = tonumber(parts[5]) or 100,
                numLines = tonumber(parts[6]) or 1,
                dashWidth = tonumber(parts[7]) or 5,
                gapWidth = tonumber(parts[8]) or 5
            })
        end
    end

    return lines
end

-- Parse chart labels
-- Split string by delimiter, preserving empty fields
function WatchSkin:splitString(str, delimiter)
    local result = {}
    local from = 1
    local delim_from, delim_to = string.find(str, delimiter, from, true)
    while delim_from do
        table.insert(result, string.sub(str, from, delim_from - 1))
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delimiter, from, true)
    end
    table.insert(result, string.sub(str, from))
    return result
end

function WatchSkin:parseChartLabels(labelsStr)
    if not labelsStr or labelsStr == "" then
        return {}
    end

    local labels = {}
    local labelDefs = self:splitString(labelsStr, "`")
    for _, labelDef in ipairs(labelDefs) do
        local parts = self:splitString(labelDef, "|")

        if #parts >= 10 then
            table.insert(labels, {
                position = parts[1],      -- P, A, S
                alignment = parts[2],     -- L, R, T, B, TL, TC, etc.
                maxCount = tonumber(parts[3]) or 1,
                text = parts[4],          -- Can contain {variables}
                font = parts[5],
                color = parts[6],         -- Hex color string
                size = tonumber(parts[7]) or 12,
                opacity = tonumber(parts[8]) or 100,
                xOffset = tonumber(parts[9]) or 0,
                yOffset = tonumber(parts[10]) or 0
            })
        end
    end

    return labels
end

-- Create chart layer
function WatchSkin:createChartLayer(v, layer, layerId)
    --print("Creating chart layer:", v.chart_type)

    -- Initialize chart data structure
    v.chartType = v.chart_type or "line"
    v.chartWidth = tonumber(v.width) or 100
    v.chartHeight = tonumber(v.height) or 100

    -- Parse data points
    v.dataPointExpressions = self:parseDataPoints(v.data_points)
    v.dataValues = {}  -- Will be filled in update loop

    -- Parse min/max
    v.minMax = self:parseMinMax(v.min_max)

    -- Chart styling
    if v.chartType == "line" then
        v.lineColor = v.color3
        v.dotColor = v.color4
        v.lineWidth = tonumber(v.line_width) or 10
        v.markerSize = tonumber(v.marker_size) or 10
    else -- bar
        v.topColor = v.color
        v.bottomColor = v.color2
        v.topOpacity = tonumber(v.top_opacity) or 100
        v.bottomOpacity = tonumber(v.bottom_opacity) or 100
        v.barThickness = tonumber(v.bar_thickness) or 50
        v.cornerType = tonumber(v.corner_type) or 1
    end

    -- Parse lines and labels
    v.chartLines = self:parseChartLines(v.lines)
    v.chartLabels = self:parseChartLabels(v.labels)

    -- Create Cocos2D nodes for rendering
    v.layerNode = cc.Layer:create()

    -- Create separate DrawNodes for proper z-ordering
    v.drawable = cc.DrawNode:create()  -- For gridlines and bars/lines
    v.dotsDrawable = cc.DrawNode:create()  -- For line chart dots (drawn on top)

    v.drawable:addTo(v.layerNode, 1)  -- z-order 1
    v.dotsDrawable:addTo(v.layerNode, 2)  -- z-order 2 (on top)

    -- Don't set position here - layerNode will be positioned by update loop
    -- All drawing is done with center offsets to achieve center alignment

    v.layerNode:addTo(layer, layerId)

    --print("Chart layer created with", #v.dataPointExpressions, "data points")
end

-- No remapping needed - shader now handles corner types correctly
function WatchSkin:remapCornerTypeBarToProgress(barCornerType)
    local cornerNum = tonumber(barCornerType) or 1
    return cornerNum
end

-- Decode corner type specifically for PROGRESS BARS (horizontal, left-to-right)
-- This is separate from bar graph corner types
function WatchSkin:decodeProgressCornerType(cornerType)
    -- Custom table for horizontal progress bars
    -- Based on empirical testing: what each type actually produces
    local progressPatterns = {
        [0]  = {false, false, false, false}, -- All sharp
        [1]  = {true, true, true, true},     -- All rounded
        [2]  = {true, true, false, true},    -- Type 2: BL sharp (from testing)
        [3]  = {true, true, true, false},    -- Type 3: BR sharp
        [4]  = {true, false, true, true},    -- Type 4: TR sharp (tested correct)
        [5]  = {true, true, true, false},    -- Type 5: BR sharp (from testing)
        [6]  = {false, false, true, true},   -- Type 6: TL+TR sharp
        [7]  = {true, true, false, false},   -- Type 7: BL+BR sharp
        [8]  = {true, false, true, false},   -- Type 8: TR+BR sharp
        [9]  = {false, true, true, false},   -- Type 9: TL+BR sharp (from testing)
        [10] = {true, false, false, true},   -- Type 10: TR+BL sharp
        [11] = {false, true, false, true},   -- Type 11: TL+BL sharp (what user wants for 9)
        [12] = {false, true, true, true},    -- Type 12: TL sharp
        [13] = {true, false, true, true},    -- Type 13: TR sharp
        [14] = {true, true, false, true},    -- Type 14: BL sharp
        [15] = {true, true, true, false},    -- Type 15: BR sharp
        [16] = {false, false, false, false}  -- All sharp
    }

    return progressPatterns[cornerType] or {false, false, false, false}
end

-- Decode corner type using lookup table
function WatchSkin:decodeCornerType(cornerType)
    -- Lookup table: corner_type -> {topLeft, topRight, bottomLeft, bottomRight}
    -- true = rounded, false = sharp
    local cornerPatterns = {
        [0]  = {false, false, false, false}, -- All sharp
        [1]  = {true, true, true, true},     -- 0000 - All rounded
        [2]  = {true, true, true, false},    -- 0001 - Bottom-right only
        [3]  = {true, true, false, true},    -- 0010 - Bottom-left only
        [4]  = {true, false, true, true},    -- 0100 - Top-right only
        [5]  = {false, true, true, true},    -- 1000 - Top-left only
        [6]  = {true, true, false, false},   -- 0011 - Bottom corners
        [7]  = {false, false, true, true},   -- 1100 - Top corners
        [8]  = {true, false, true, false},   -- 0101 - Right corners
        [9]  = {false, true, false, true},   -- 1010 - Left corners
        [10] = {true, false, false, true},   -- 0110 - Diagonal (TR, BL)
        [11] = {false, true, true, false},   -- 1001 - Diagonal (TL, BR)
        [12] = {true, false, false, false},  -- 0111 - All except top-left
        [13] = {false, true, false, false},  -- 1011 - All except top-right
        [14] = {false, false, true, false},  -- 1101 - All except bottom-left
        [15] = {false, false, false, true},  -- 1110 - All except bottom-right
        [16] = {false, false, false, false}  -- All sharp
    }

    return cornerPatterns[cornerType] or {false, false, false, false}
end

-- Decode corner type for ROUNDED layers (geometry-based)
-- Mentioned corners are SHARP, rest are ROUNDED
-- NOTE: Y-axis is inverted in Cocos2D-x rendering (Y=0 at bottom)
--       User's TL (top-left on screen) → Cocos BL (low Y)
--       User's BL (bottom-left on screen) → Cocos TL (high Y)
function WatchSkin:decodeRoundedCornerType(cornerType)
    -- Lookup table: corner_type -> {cocosTL, cocosTR, cocosBL, cocosBR}
    -- Array represents Cocos2D-x coordinates (TL=high Y, BL=low Y)
    -- true = rounded, false = sharp
    local cornerPatterns = {
        [0]  = {true, true, true, true},     -- 0 = all rounded
        [1]  = {true, true, true, true},     -- 1 = all rounded
        [2]  = {true, true, true, false},    -- 2 = user TR → cocos BR sharp
        [3]  = {true, true, false, true},    -- 3 = user TL → cocos BL sharp
        [4]  = {true, false, true, true},    -- 4 = user BR → cocos TR sharp
        [5]  = {false, true, true, true},    -- 5 = user BL → cocos TL sharp
        [6]  = {true, true, false, false},   -- 6 = user TL+TR → cocos BL+BR sharp
        [7]  = {false, false, true, true},   -- 7 = user BL+BR → cocos TL+TR sharp
        [8]  = {true, false, true, false},   -- 8 = user TR+BR → cocos TR+BR sharp
        [9]  = {false, true, false, true},   -- 9 = user TL+BL → cocos TL+BL sharp
        [10] = {false, true, true, false},   -- 10 = user TL+BR → cocos TL+BR sharp
        [11] = {true, false, false, true},   -- 11 = user TR+BL → cocos TR+BL sharp
        [12] = {false, false, false, true},  -- 12 = user TL+TR+BR → cocos all except BR
        [13] = {false, false, true, false},  -- 13 = user TL+TR+BL → cocos all except TR
        [14] = {true, false, false, false},  -- 14 = user TR+BL+BR → cocos all except BL
        [15] = {false, true, false, false},  -- 15 = user TL+BL+BR → cocos all except BL
        [16] = {false, false, false, false}  -- 16 = all sharp
    }

    return cornerPatterns[cornerType] or {true, true, true, true}
end

-- Draw dashed line
function WatchSkin:drawDashedLine(node, x1, y1, x2, y2, color, lineWidth, dashWidth, gapWidth)
    local dx = x2 - x1
    local dy = y2 - y1
    local length = math.sqrt(dx * dx + dy * dy)
    local angle = math.atan2(dy, dx)

    local currentDist = 0
    local isDash = true

    while currentDist < length do
        local segmentLength = isDash and dashWidth or gapWidth
        local nextDist = math.min(currentDist + segmentLength, length)

        if isDash then
            local sx = x1 + currentDist * math.cos(angle)
            local sy = y1 + currentDist * math.sin(angle)
            local ex = x1 + nextDist * math.cos(angle)
            local ey = y1 + nextDist * math.sin(angle)
            -- Use drawSegment for width support
            node:drawSegment(cc.p(sx, sy), cc.p(ex, ey), lineWidth / 4, color)
        end

        currentDist = nextDist
        isDash = not isDash
    end
end

-- Evaluate expression (data point)
function WatchSkin:evaluateChartExpression(expr)
    -- Replace variables with their current values
    expr = string.gsub(expr, "{([^}]+)}", function(varName)
        return tostring(_G[varName] or 0)
    end)

    -- Evaluate as Lua expression
    local func, err = loadstring("return " .. expr)
    if func then
        local success, result = pcall(func)
        if success then
            return tonumber(result) or 0
        end
    end

    return 0
end

-- Evaluate label text with context variables
function WatchSkin:evaluateChartLabelText(text, context)
    return string.gsub(text, "{([^}]+)}", function(varName)
        return tostring(context[varName] or "")
    end)
end

-- Convert hex color string to cc.c4f
function WatchSkin:hexToC4f(hex, opacity)
    opacity = opacity or 100
    local r = tonumber(string.sub(hex, 1, 2), 16) or 255
    local g = tonumber(string.sub(hex, 3, 4), 16) or 255
    local b = tonumber(string.sub(hex, 5, 6), 16) or 255
    return cc.c4f(r / 255, g / 255, b / 255, opacity / 100)
end

-- Draw chart gridlines and reference lines
function WatchSkin:drawChartLines(v, minY, maxY, rangeY)
    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    for _, line in ipairs(v.chartLines) do
        local color = self:hexToC4f(line.color, line.opacity)

        if line.lineType == "H" then
            -- Horizontal gridlines
            local spacing = v.chartHeight / (line.numLines + 1)
            for i = 1, line.numLines do
                local y = i * spacing + offsetY
                if line.style == "Dashed" then
                    self:drawDashedLine(v.drawable, offsetX, y, v.chartWidth + offsetX, y,
                        color, line.width, line.dashWidth, line.gapWidth)
                else
                    v.drawable:drawSegment(cc.p(offsetX, y), cc.p(v.chartWidth + offsetX, y), line.width / 4, color)
                end
            end

        elseif line.lineType == "V" then
            -- Vertical gridlines - align with data point centers
            local spacing = v.chartWidth / line.numLines
            for i = 1, line.numLines do
                -- Position at center of each segment, same as data points
                local x = (i - 0.5) * spacing + offsetX
                if line.style == "Dashed" then
                    self:drawDashedLine(v.drawable, x, offsetY, x, v.chartHeight + offsetY,
                        color, line.width, line.dashWidth, line.gapWidth)
                else
                    v.drawable:drawSegment(cc.p(x, offsetY), cc.p(x, v.chartHeight + offsetY), line.width / 4, color)
                end
            end

        elseif line.lineType == "MAX" then
            local y = ((v.calculatedMax - minY) / rangeY) * v.chartHeight + offsetY
            if line.style == "Dashed" then
                self:drawDashedLine(v.drawable, offsetX, y, v.chartWidth + offsetX, y,
                    color, line.width, line.dashWidth, line.gapWidth)
            else
                v.drawable:drawSegment(cc.p(offsetX, y), cc.p(v.chartWidth + offsetX, y), line.width / 4, color)
            end

        elseif line.lineType == "MIN" then
            local y = ((v.calculatedMin - minY) / rangeY) * v.chartHeight + offsetY
            if line.style == "Dashed" then
                self:drawDashedLine(v.drawable, offsetX, y, v.chartWidth + offsetX, y,
                    color, line.width, line.dashWidth, line.gapWidth)
            else
                v.drawable:drawSegment(cc.p(offsetX, y), cc.p(v.chartWidth + offsetX, y), line.width / 4, color)
            end

        elseif line.lineType == "AVG" then
            local y = ((v.calculatedAvg - minY) / rangeY) * v.chartHeight + offsetY
            if line.style == "Dashed" then
                self:drawDashedLine(v.drawable, offsetX, y, v.chartWidth + offsetX, y,
                    color, line.width, line.dashWidth, line.gapWidth)
            else
                v.drawable:drawSegment(cc.p(offsetX, y), cc.p(v.chartWidth + offsetX, y), line.width / 4, color)
            end
        end
    end
end

-- Draw line chart
function WatchSkin:drawLineChart(v, minY, maxY, rangeY)
    local numPoints = #v.dataValues
    if numPoints == 0 then return end

    -- Use same spacing as bar chart for alignment
    local spacing = v.chartWidth / numPoints

    local lineColor = self:hexToC4f(v.lineColor, tonumber(v.opacity) or 100)
    local dotColor = self:hexToC4f(v.dotColor, tonumber(v.opacity) or 100)

    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    -- Draw lines between points (on main drawable, z-order 1)
    for i = 1, numPoints - 1 do
        -- Position at center of each segment, same as bar chart
        local x1 = (i - 0.5) * spacing + offsetX
        local y1 = ((v.dataValues[i] - minY) / rangeY) * v.chartHeight + offsetY
        local x2 = (i + 0.5) * spacing + offsetX
        local y2 = ((v.dataValues[i + 1] - minY) / rangeY) * v.chartHeight + offsetY

        -- Use drawSegment for lines with width support
        v.drawable:drawSegment(cc.p(x1, y1), cc.p(x2, y2), v.lineWidth / 4, lineColor)
    end

    -- Draw dots at each point (on dotsDrawable, z-order 2 - on top)
    for i, value in ipairs(v.dataValues) do
        -- Position at center of each segment, same as bar chart and labels
        local x = (i - 0.5) * spacing + offsetX
        local y = ((value - minY) / rangeY) * v.chartHeight + offsetY

        v.dotsDrawable:drawDot(cc.p(x, y), v.markerSize / 4, dotColor)
    end
end

-- Draw bar chart
function WatchSkin:drawBarChart(v, minY, maxY, rangeY)
    local numBars = #v.dataValues
    if numBars == 0 then return end

    local spacing = v.chartWidth / numBars
    local barWidth = math.min(v.barThickness, spacing * 0.8)

    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    -- Decode corner type
    local corners = self:decodeCornerType(v.cornerType)

    for i, value in ipairs(v.dataValues) do
        local x = (i - 0.5) * spacing - barWidth / 2 + offsetX
        local barHeight = ((value - minY) / rangeY) * v.chartHeight
        local y = offsetY

        -- Corner radius based on bar width
        local cornerRadius = math.min(v.radius or 10, barWidth / 2)

        -- Create gradient by drawing multiple horizontal slices
        local numSlices = math.max(10, math.floor(barHeight / 2))  -- At least 10 slices for smooth gradient
        local sliceHeight = barHeight / numSlices

        for slice = 0, numSlices - 1 do
            -- Calculate interpolation factor (0 at bottom, 1 at top)
            local t = slice / math.max(1, numSlices - 1)

            -- Interpolate opacity between bottom and top
            local opacity = v.bottomOpacity + (v.topOpacity - v.bottomOpacity) * t

            -- Get color with interpolated opacity
            local sliceColor = self:hexToC4f(v.topColor, opacity)

            -- Calculate slice position
            local sliceY = y + slice * sliceHeight

            -- Calculate slice width based on rounded corners
            local sliceX = x
            local sliceWidth = barWidth

            -- Apply rounding to corners if enabled and bar is tall enough
            if barHeight > cornerRadius * 2 then  -- Need at least 2x radius for both top and bottom
                local distFromTop = (y + barHeight) - sliceY
                local distFromBottom = sliceY - y

                -- Top corners: if this slice is within the corner radius from the top
                if distFromTop <= cornerRadius then
                    -- Calculate the horizontal offset using circular arc
                    -- For a circle: x^2 + y^2 = r^2, so x = sqrt(r^2 - y^2)
                    local yFromCenter = cornerRadius - distFromTop
                    local xOffset = 0

                    if yFromCenter >= 0 and yFromCenter <= cornerRadius then
                        xOffset = cornerRadius - math.sqrt(math.max(0, cornerRadius * cornerRadius - yFromCenter * yFromCenter))
                    end

                    -- Apply rounding to top-left corner
                    if corners[1] then  -- Top-left
                        sliceX = sliceX + xOffset
                        sliceWidth = sliceWidth - xOffset
                    end

                    -- Apply rounding to top-right corner
                    if corners[2] then  -- Top-right
                        sliceWidth = sliceWidth - xOffset
                    end
                end

                -- Bottom corners: if this slice is within the corner radius from the bottom
                if distFromBottom <= cornerRadius then
                    -- Calculate the horizontal offset using circular arc
                    local yFromCenter = cornerRadius - distFromBottom
                    local xOffset = 0

                    if yFromCenter >= 0 and yFromCenter <= cornerRadius then
                        xOffset = cornerRadius - math.sqrt(math.max(0, cornerRadius * cornerRadius - yFromCenter * yFromCenter))
                    end

                    -- Apply rounding to bottom-left corner
                    if corners[3] then  -- Bottom-left
                        sliceX = sliceX + xOffset
                        sliceWidth = sliceWidth - xOffset
                    end

                    -- Apply rounding to bottom-right corner
                    if corners[4] then  -- Bottom-right
                        sliceWidth = sliceWidth - xOffset
                    end
                end
            elseif barHeight > cornerRadius then  -- Only top corners if bar is tall enough
                local distFromTop = (y + barHeight) - sliceY

                -- Top corners only
                if distFromTop <= cornerRadius then
                    local yFromCenter = cornerRadius - distFromTop
                    local xOffset = 0

                    if yFromCenter >= 0 and yFromCenter <= cornerRadius then
                        xOffset = cornerRadius - math.sqrt(math.max(0, cornerRadius * cornerRadius - yFromCenter * yFromCenter))
                    end

                    if corners[1] then  -- Top-left
                        sliceX = sliceX + xOffset
                        sliceWidth = sliceWidth - xOffset
                    end

                    if corners[2] then  -- Top-right
                        sliceWidth = sliceWidth - xOffset
                    end
                end
            end

            -- Draw slice as solid rectangle with adjusted width for rounded corners
            local verts = {
                cc.p(sliceX, sliceY),
                cc.p(sliceX + sliceWidth, sliceY),
                cc.p(sliceX + sliceWidth, sliceY + sliceHeight),
                cc.p(sliceX, sliceY + sliceHeight)
            }

            v.drawable:drawSolidPoly(verts, 4, sliceColor)
        end
    end
end

-- Draw chart labels
function WatchSkin:drawChartLabels(v, minY, maxY, rangeY)
    -- Clear any existing labels
    if v.labelNodes then
        for _, labelNode in ipairs(v.labelNodes) do
            if labelNode then
                labelNode:removeFromParent()
            end
        end
    end
    v.labelNodes = {}

    --print("Drawing chart labels, total labels:", #v.chartLabels)
    for _, labelDef in ipairs(v.chartLabels) do
        --print("Label position:", labelDef.position, "alignment:", labelDef.alignment, "maxCount:", labelDef.maxCount, "text:", labelDef.text)
        if labelDef.position == "P" then
            -- Data point labels
            --print("Calling drawDataPointLabels with", #v.dataValues, "data points")
            self:drawDataPointLabels(v, labelDef, minY, rangeY)
        elseif labelDef.position == "A" then
            -- Axis labels
            self:drawAxisLabels(v, labelDef, minY, maxY, rangeY)
        elseif labelDef.position == "S" then
            -- Single static label
            self:drawStaticLabel(v, labelDef)
        end
    end
end

-- Draw data point labels
function WatchSkin:drawDataPointLabels(v, labelDef, minY, rangeY)
    local numPoints = #v.dataValues
    if numPoints == 0 then return end

    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    local spacing = v.chartWidth / numPoints
    local step = math.max(1, math.ceil(numPoints / labelDef.maxCount))

    for i = 1, numPoints, step do
        local value = v.dataValues[i]
        local x = (i - 0.5) * spacing + offsetX
        local y = ((value - minY) / rangeY) * v.chartHeight + offsetY

        -- Create context for label text evaluation
        local labelContext = {
            value = value,
            value0dp = string.format("%.0f", value),
            value1dp = string.format("%.1f", value),
            value2dp = string.format("%.2f", value),
            index = i - 1,
            min = v.calculatedMin,
            max = v.calculatedMax,
            avg = v.calculatedAvg,
            count = numPoints
        }

        local labelText = self:evaluateChartLabelText(labelDef.text, labelContext)

        --print("Creating data point label, text template:", labelDef.text, "evaluated:", labelText)

        -- Create label with system font (fallback approach used elsewhere in code)
        local label = cc.Label:createWithSystemFont(labelText, "arial", labelDef.size)
        if label then
            local labelX = x + labelDef.xOffset
            -- Add extra offset to ensure label is above the marker (marker size + small gap)
            local labelY = y + labelDef.yOffset + (v.markerSize or 0) / 2 + 5
            --print("Label created at position:", labelX, labelY, "size:", labelDef.size)
            label:setPosition(labelX, labelY)
            label:setAnchorPoint(cc.p(0.5, 0))  -- Bottom-center anchor so label sits above point
            local color = self:hexToC4f(labelDef.color, 100)
            label:setColor(cc.c3b(color.r * 255, color.g * 255, color.b * 255))
            label:setOpacity(labelDef.opacity * 255 / 100)
            label:addTo(v.layerNode, 3)  -- z-order 3 (on top of DrawNodes)
            table.insert(v.labelNodes, label)
        else
            --print("ERROR: Failed to create label!")
        end
    end
end

-- Draw axis labels
function WatchSkin:drawAxisLabels(v, labelDef, minY, maxY, rangeY)
    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    local positions = {}

    -- Generate axis positions based on alignment
    if labelDef.alignment == "L" or labelDef.alignment == "R" then
        -- Vertical axis
        for i = 0, labelDef.maxCount - 1 do
            local percent = i / math.max(1, labelDef.maxCount - 1)
            local y = percent * v.chartHeight
            local value = minY + percent * (maxY - minY)
            table.insert(positions, {x = 0, y = y, value = value})
        end
    else -- T or B
        -- Horizontal axis
        for i = 0, labelDef.maxCount - 1 do
            local percent = i / math.max(1, labelDef.maxCount - 1)
            local x = percent * v.chartWidth
            table.insert(positions, {x = x, y = 0, value = i})
        end
    end

    for _, pos in ipairs(positions) do
        local labelContext = {
            value = pos.value,
            value0dp = string.format("%.0f", pos.value),
            value1dp = string.format("%.1f", pos.value),
            value2dp = string.format("%.2f", pos.value),
            min = minY,
            max = maxY,
            avg = v.calculatedAvg,
            count = #v.dataValues
        }

        local labelText = self:evaluateChartLabelText(labelDef.text, labelContext)

        --print("Creating axis label, text template:", labelDef.text, "evaluated:", labelText)

        -- Create label with system font
        local label = cc.Label:createWithSystemFont(labelText, "arial", labelDef.size)
        if label then
            -- Position based on alignment
            local x, y = pos.x + offsetX, pos.y + offsetY
            if labelDef.alignment == "L" then
                x = offsetX + labelDef.xOffset
                y = pos.y + offsetY
            elseif labelDef.alignment == "R" then
                x = v.chartWidth + offsetX + labelDef.xOffset
                y = pos.y + offsetY
            elseif labelDef.alignment == "T" then
                x = pos.x + offsetX
                y = v.chartHeight + offsetY + labelDef.yOffset
            else -- B
                x = pos.x + offsetX
                y = offsetY + labelDef.yOffset
            end

            --print("Axis label created at position:", x, y, "size:", labelDef.size)
            label:setPosition(x, y)
            label:setAnchorPoint(cc.p(0.5, 0.5))  -- Center anchor point
            local color = self:hexToC4f(labelDef.color, 100)
            label:setColor(cc.c3b(color.r * 255, color.g * 255, color.b * 255))
            label:setOpacity(labelDef.opacity * 255 / 100)
            label:addTo(v.layerNode, 3)  -- z-order 3 (on top of DrawNodes)
            table.insert(v.labelNodes, label)
        else
            --print("ERROR: Failed to create axis label!")
        end
    end
end

-- Draw static label
function WatchSkin:drawStaticLabel(v, labelDef)
    -- Adjust coordinates for center anchor point
    local offsetX = -v.chartWidth / 2
    local offsetY = -v.chartHeight / 2

    -- Calculate position based on alignment
    local x, y = 0, 0

    if string.find(labelDef.alignment, "T") then
        y = v.chartHeight + offsetY
    elseif string.find(labelDef.alignment, "B") then
        y = offsetY
    else -- C
        y = v.chartHeight / 2 + offsetY
    end

    if string.find(labelDef.alignment, "L") then
        x = offsetX
    elseif string.find(labelDef.alignment, "R") then
        x = v.chartWidth + offsetX
    else -- C
        x = v.chartWidth / 2 + offsetX
    end

    local labelContext = {
        min = v.calculatedMin,
        max = v.calculatedMax,
        avg = v.calculatedAvg,
        count = #v.dataValues
    }

    local labelText = self:evaluateChartLabelText(labelDef.text, labelContext)

    --print("Creating static label, text template:", labelDef.text, "evaluated:", labelText)

    -- Create label with system font
    local label = cc.Label:createWithSystemFont(labelText, "arial", labelDef.size)
    if label then
        local labelX = x + labelDef.xOffset
        local labelY = y + labelDef.yOffset
        --print("Static label created at position:", labelX, labelY, "size:", labelDef.size)
        label:setPosition(labelX, labelY)
        label:setAnchorPoint(cc.p(0.5, 0.5))  -- Center anchor point
        local color = self:hexToC4f(labelDef.color, 100)
        label:setColor(cc.c3b(color.r * 255, color.g * 255, color.b * 255))
        label:setOpacity(labelDef.opacity * 255 / 100)
        label:addTo(v.layerNode, 3)  -- z-order 3 (on top of DrawNodes)
        table.insert(v.labelNodes, label)
    else
        --print("ERROR: Failed to create static label!")
    end
end

-- Render complete chart
function WatchSkin:renderChart(v)
    -- Clear previous drawing from both drawables
    v.drawable:clear()
    if v.dotsDrawable then
        v.dotsDrawable:clear()
    end

    if #v.dataValues == 0 then
        return
    end

    -- Determine Y-axis range
    local minY, maxY
    if v.minMax.auto then
        minY = v.calculatedMin
        maxY = v.calculatedMax
    else
        minY = v.minMax.min
        maxY = v.minMax.max
    end

    local rangeY = maxY - minY
    if rangeY == 0 then rangeY = 1 end  -- Avoid division by zero

    -- Draw gridlines and reference lines first
    self:drawChartLines(v, minY, maxY, rangeY)

    -- Draw chart data
    if v.chartType == "line" then
        self:drawLineChart(v, minY, maxY, rangeY)
    else
        self:drawBarChart(v, minY, maxY, rangeY)
    end

    -- Draw labels last (on top)
    self:drawChartLabels(v, minY, maxY, rangeY)
end

-- Update chart data (called from main update loop)
function WatchSkin:updateChart(v)
    -- Evaluate each data point expression
    v.dataValues = {}
    for _, expr in ipairs(v.dataPointExpressions) do
        local value = self:evaluateChartExpression(expr)
        table.insert(v.dataValues, value)
    end

    -- Calculate min, max, avg for reference lines and labels
    if #v.dataValues > 0 then
        v.calculatedMin = math.huge
        v.calculatedMax = -math.huge
        v.calculatedSum = 0

        for _, value in ipairs(v.dataValues) do
            v.calculatedMin = math.min(v.calculatedMin, value)
            v.calculatedMax = math.max(v.calculatedMax, value)
            v.calculatedSum = v.calculatedSum + value
        end

        v.calculatedAvg = v.calculatedSum / #v.dataValues
    else
        v.calculatedMin = 0
        v.calculatedMax = 0
        v.calculatedAvg = 0
    end

    -- Redraw chart
    self:renderChart(v)
end

return WatchSkin