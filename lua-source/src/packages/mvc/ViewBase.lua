local ViewBase = class("ViewBase", cc.Layer)

local skin="Calibre_36"
local lastTouch=0
local lastTouchLocation=nil
local luaj = require "cocos.cocos2d.luaj"
local doubleTap=false
local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
require "socket"

-- Ultra Battery Saver (UBS) password authentication
local UBS = {
    locked = false,
    password = "",
    passwordType = "keypad",
    inputBuffer = {},
    touchDownTime = 0,
    touchDownX = 0,
    touchDownY = 0,
    screenWidth = 0,
    screenHeight = 0,
    MORSE_LONG_PRESS_THRESHOLD = 0.3,  -- 300ms in seconds
    TAP_DISTANCE_THRESHOLD = 30  -- Max 30 pixels movement for tap
}

-- Global function called from Java to lock and start password authentication
function setUBSLocked(password, passwordType)
    print("UBS: Locked with " .. passwordType .. " password")
    UBS.locked = true
    UBS.password = password
    UBS.passwordType = passwordType
    UBS.inputBuffer = {}

    -- Get screen dimensions
    local visibleSize = cc.Director:getInstance():getVisibleSize()
    UBS.screenWidth = visibleSize.width
    UBS.screenHeight = visibleSize.height

    print("UBS: Screen size " .. UBS.screenWidth .. "x" .. UBS.screenHeight)
end

-- Global function called from Java via Cocos2dxLuaJavaBridge
-- Receives "password|type" string and calls setUBSLocked
function __G__SETUBSLOCKED__(data)
    print("UBS: Received lock command from Java: " .. data)

    -- Parse "password|type" format
    local separatorPos = string.find(data, "|")
    if separatorPos then
        local password = string.sub(data, 1, separatorPos - 1)
        local passwordType = string.sub(data, separatorPos + 1)
        setUBSLocked(password, passwordType)
    else
        print("ERROR: Invalid UBS lock data format: " .. data)
    end
end

-- Process touch for keypad input (9-grid)
function UBS:processKeypadTouch(x, y)
    -- Divide screen into 3x3 grid
    -- 1 2 3  (top)
    -- 4 5 6  (middle)
    -- 7 8 9  (bottom)

    -- Invert Y because Cocos2D-x has origin at bottom-left
    -- We want row 1 at the top, but y=0 is at bottom in Cocos
    local invertedY = self.screenHeight - y

    local cellWidth = self.screenWidth / 3
    local cellHeight = self.screenHeight / 3

    local col = math.floor(x / cellWidth) + 1  -- 1, 2, or 3
    local row = math.floor(invertedY / cellHeight) + 1 -- 1, 2, or 3

    -- Clamp to valid range
    col = math.max(1, math.min(3, col))
    row = math.max(1, math.min(3, row))

    -- Calculate keypad number (1-9)
    local number = (row - 1) * 3 + col

    print(string.format("UBS: Keypad calc: (%.1f,%.1f) invY=%.1f -> cell(%d,%d) = %d (screen=%dx%d, cellSize=%.1fx%.1f)",
        x, y, invertedY, col, row, number, self.screenWidth, self.screenHeight, cellWidth, cellHeight))

    return tostring(number)
end

-- Process touch for morse code input
function UBS:processMorseTouch(duration)
    if duration < self.MORSE_LONG_PRESS_THRESHOLD then
        return "0"  -- Short press
    else
        return "1"  -- Long press
    end
end

-- Add input to rolling window buffer and check password
function UBS:addInputAndCheck(input)
    -- Add to buffer
    table.insert(self.inputBuffer, input)

    -- Keep buffer size = password length
    local passwordLength = string.len(self.password)
    while #self.inputBuffer > passwordLength do
        table.remove(self.inputBuffer, 1)
    end

    -- Check if buffer matches password
    local bufferString = table.concat(self.inputBuffer)

    print(string.format("UBS: Buffer check - entered='%s' (len=%d), password='%s' (len=%d), match=%s",
        bufferString, string.len(bufferString), self.password, passwordLength,
        tostring(bufferString == self.password)))

    if bufferString == self.password then
        print("UBS: Password correct! Unlocking...")
        self:unlockViewPager()
    else
        print(string.format("UBS: Password incorrect. Buffer has %d/%d chars",
            string.len(bufferString), passwordLength))
    end
end

-- Call Java to unlock ViewPager
function UBS:unlockViewPager()
    self.locked = false
    self.inputBuffer = {}

    -- Call Java static method to unlock
    local ok, ret = luaj.callStaticMethod(
        "com/ailife/ClockSkinCoco/UltraBatterySaverManager",
        "unlockFromLua",
        {}
    )

    if not ok then
        print("UBS: Error calling unlockFromLua:", ret)
    else
        print("UBS: Unlock requested from Java")
    end
end

function ViewBase:dumpVariable(o, force)
    local buf="cc.exports.displayscale=" .. cc.exports.displayscale .. " ucolor_index=" ..  ucolor_index .. " ucolor='" .. (ucolor or '777777').. "' "
    for k,v in pairs(o) do
        if (type(k) == "string" and (string.find(k, 'var_') or k == "tweens")) or force then
            if type(v) == 'number' then
                buf = buf .. k .. "=" .. v .. " "
            elseif type(v) == 'string' then
                buf = buf .. k .. "='" .. v .. "' "
            elseif type(v) == 'table' then
                buf = buf .. k .. "= { "
                for ki,vi in pairs(v) do
                    if type(ki) == 'number' then
                        buf = buf .. "[" .. ki .. "] = "
                    elseif type(ki) == 'string' then
                        buf = buf .. "['" .. ki .. "'] = "
                    end

                    if type(vi) == 'number' then
                        buf = buf .. vi .. " ,"
                    elseif type(vi) == 'string' then
                        buf = buf .. "'" .. vi .. "' ,"
                    end
                end
                buf = buf .. " } "
                --    buf = buf .. k .. "={" .. ViewBase:dumpVariable(v,true) .. "} "
            end
        end
    end
    return buf
end

function ViewBase:clearVariable()
    for k,v in pairs(_G) do
        if type(k) == "string" and string.find(k, 'var_') then _G[k]=nil end
    end
    tweens={}
end

function ViewBase:savememory()
    local buf=ViewBase:dumpVariable(_G, false)
    local ok,ret  = luaj.callStaticMethod(className,"saveMemory", {buf})
    if not ok then print("luaj error:", ret) end
end

function ViewBase:setSkin(newskin)
    newskin = newskin or skin
    --if (string.find(newskin, "watch") or string.find(newskin, "zip")) then
        skin=newskin
    --else
    --    skin=newskin.."/"
    --end
    print("setSkin:" .. skin)
end

function ViewBase:getSkin()
    return skin
end

function ViewBase:touch()
    return false
end

function ViewBase:initWatch()
    print("initWatch")
    local ok,ret  = luaj.callStaticMethod(className,"initWatch")
    if not ok then print("luaj error:", ret) end
end

function ViewBase:addTouch()
    local listenner = cc.EventListenerTouchOneByOne:create()
    listenner:setSwallowTouches(false)

    -- Long press detection handled by Android GestureDetector
    -- Lua only handles double tap and single tap

    listenner:registerScriptHandler(function(touch, event)
        -- UBS: If locked, intercept touch for password authentication
        if UBS.locked then
            local touchLocation = touch:getLocation()
            UBS.touchDownTime = socket.gettime()
            UBS.touchDownX = touchLocation.x
            UBS.touchDownY = touchLocation.y
            print(string.format("UBS: Touch BEGIN at (%.1f, %.1f)", touchLocation.x, touchLocation.y))
            return true  -- Swallow touch
        end

        local clock = socket.gettime()
        local diff = clock - lastTouch
        local currentLocation = touch:getLocation()

        -- Check if this is a potential double tap (within time threshold)
        if (diff < .3) then
            -- Validate distance: second touch must be within 50 pixels of first touch
            local isWithinRange = false
            if lastTouchLocation then
                local dx = currentLocation.x - lastTouchLocation.x
                local dy = currentLocation.y - lastTouchLocation.y
                local distance = math.sqrt(dx * dx + dy * dy)
                isWithinRange = (distance < 50)
            end

            if isWithinRange then
                doubleTap = true
                ViewBase:savememory()
                if cc.exports.skindouble == 1 then
                    local scale = '' .. ((cc.exports.displayscale-1)*50)
                    local ok, ret = luaj.callStaticMethod(className, "runSetScale", {scale})
                    if not ok then print("luaj error:", ret) end
                end
            end
        end

        -- Store current touch location for next comparison
        lastTouchLocation = currentLocation
        lastTouch = clock
        return true
    end, cc.Handler.EVENT_TOUCH_BEGAN)

    listenner:registerScriptHandler(function(touch, event)
        -- UBS: If locked, block all touch moves
        if UBS.locked then
            return true
        end

        return true
    end, cc.Handler.EVENT_TOUCH_MOVED)

    listenner:registerScriptHandler(function(touch, event)
        -- UBS: If locked, process password authentication
        if UBS.locked then
            local touchLocation = touch:getLocation()
            local duration = socket.gettime() - UBS.touchDownTime

            -- Calculate distance moved
            local dx = touchLocation.x - UBS.touchDownX
            local dy = touchLocation.y - UBS.touchDownY
            local distance = math.sqrt(dx * dx + dy * dy)

            print(string.format("UBS: Touch END at (%.1f, %.1f), duration=%.3fs, distance=%.1f",
                touchLocation.x, touchLocation.y, duration, distance))

            -- Only process if it's a tap (not a swipe)
            if distance <= UBS.TAP_DISTANCE_THRESHOLD then
                local input

                if UBS.passwordType == "keypad" then
                    -- Process as keypad input (9-grid)
                    input = UBS:processKeypadTouch(touchLocation.x, touchLocation.y)
                    print("UBS: Keypad input = " .. tostring(input))
                elseif UBS.passwordType == "morse" then
                    -- Process as morse code (long/short press)
                    input = UBS:processMorseTouch(duration)
                    print("UBS: Morse input = " .. tostring(input))
                end

                if input then
                    UBS:addInputAndCheck(input)
                else
                    print("UBS: ERROR - No input generated!")
                end
            else
                print(string.format("UBS: Ignoring swipe (distance=%.1f > threshold=%d)",
                    distance, UBS.TAP_DISTANCE_THRESHOLD))
            end

            return true  -- Swallow touch
        end

        local clock = socket.gettime() - lastTouch

        -- Handle short tap (if not a double tap)
        if (clock < .4 and not doubleTap) then
            self:touch(touch:getLocation())
        end

        -- Reset states
        if (clock > 1.0) then
            lastTouch = 0
        else
            doubleTap = false
        end
    end, cc.Handler.EVENT_TOUCH_ENDED)

    local eventDispatcher = self:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listenner, self)
end

function ViewBase:ctor(app, name, skinName)
    print("ViewBase:ctor ", name, skinName)
    self:clearVariable()
    self:removeAllComponents()
    -- REMOVED: Don't remove all event listeners globally during construction
    -- This was interfering with the old scene's cleanup during replaceScene()
    -- cc.Director:getInstance():getEventDispatcher():removeAllEventListeners()
    self:setSkin(skinName)

    self:enableNodeEvents()
    self.app_ = app
    self.name_ = name

    local function onNodeEvent(event)
        if "enter" == event then
            self:onEnter()
        elseif "exit" == event then
            self:onExit()
        end
    end
    self:registerScriptHandler(onNodeEvent)

    self:addTouch()

    --if self.onCreate then self:onCreate() end
end

function ViewBase:onEnter()
    print("ViewBase:onEnter")
    if self.onCreate then self:onCreate() end
    print("ViewBase:onEnter finished")
end

function ViewBase:onExit()
    print("ViewBase:onExit")
end

function ViewBase:getApp()
    return self.app_
end

function ViewBase:getName()
    return self.name_
end

function ViewBase:setName(name)
--    print("ViewBase:setName")
    self.name_=name
end

function ViewBase:showWithScene(transition, time, more)
    print("showWithScene:" .. self.name_)
    self:setVisible(true)
    local scene = display.newScene(self.name_)
    scene:addChild(self)
    -- DISABLED: Transitions keep both scenes active simultaneously, causing interference
    -- when switching watch faces (both old and new scenes share module-level variables)
    -- Always use instant scene replacement for reliable switching
    cc.Director:getInstance():replaceScene(scene)
    return self
end

return ViewBase