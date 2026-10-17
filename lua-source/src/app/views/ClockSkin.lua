local ClockSkin = class("ClockSkin", cc.load("mvc").ViewBase)
local path=cc.exports.SDpath .. "/ClockSkin/"
local xmlParser = require "app.views.XmlParser"
local luaj = require "cocos.cocos2d.luaj"
local fileUtil=cc.FileUtils:getInstance()
local drawable={}
local ringDrawable={}
local myscale=512/400
local lastDrawTime=os.time()
local oldday=os.date("%w")
local skin=""
local offsetX=CC_DESIGN_RESOLUTION.width / 2  -- 256
local offsetY=CC_DESIGN_RESOLUTION.height / 2 -- 256
local animTime=0
local animTimeRound=0
local pathskin=path
local array80Index=0
require 'socket'
require "app.views.WatchSkinUtils"

--[[function file_exists(name)
    local f=io.open(name,"r")
    if f~=nil then io.close(f) return true end
    print("file not found")
    return false
end]]

function ClockSkin:initView(layer, ring)
    print ("ClockSkin:initView() ring:", ring)
    local destpath=path
    if ring==true then
        skin="ring.zip"
    else
        skin=self:getSkin()
    end
    if (string.find(skin, "zip")) then
     --   skin = "WatchTmp/"
     --   self:setSkin(skin)
     --   destpath = cc.exports.SDpath .. "/"
        skin = skin .. ':'

        -- Use ZipHelper to detect if clock_skin.xml is in a subfolder
        local subfolderPrefix = ""
        pcall(function()
            local zipHelperClass = "com/ailife/ClockSkinCoco/ZipHelper"
            local sig = "(Ljava/lang/String;)Ljava/lang/String;"
            local zipFilePath = path .. skin:gsub(":$", "")  -- Remove trailing ':'
            print("Checking for subfolder in: " .. zipFilePath)
            local ok, result = luaj.callStaticMethod(zipHelperClass, "findClockSkinXmlPath", {zipFilePath}, sig)
            if ok and result and result ~= "" then
                subfolderPrefix = result
                skin = skin .. subfolderPrefix
                print("Clock skin resources in subfolder: " .. subfolderPrefix)
            elseif ok and result == "" then
                print("Clock skin resources in root of archive")
            else
                print("Could not determine subfolder, falling back to old method")
                -- Fallback to old method if ZipHelper fails
                local subpath = fileUtil:getStringFromFile(path .. skin .. "clock_skin.xml")
                if (subpath == "") then
                    local p=zipFilePath:gsub(".[^.]+$","")
                    local p_base = p:match(".*/(.+)$") or p  -- Extract filename without path
                    skin = skin .. p_base .. '/'
                    print("Using fallback subfolder: " .. p_base .. "/")
                end
            end
        end)
    end

    pathskin=path .. skin
    if fileUtil:isFileExist(pathskin .. "bg.mp4") then
        --local video=ccexp.VideoPlayer:create()
        --print( "loading MP4", pathskin .. "bg.mp4")
        --listMethods(video)
        --video:setFileName(pathskin .. "bg.mp4")
        --video:play()
    end
    array80Index=0
    local xmlTree, xmlError = xmlParser:ParseXmlFile(pathskin .. "clock_skin.xml")
    -- Show error if parse failed OR if there was a parse error (even with partial tree)
    if xmlTree == nil or xmlError then
        pcall(function()
            if luaj then
                local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                local title = "Clock Skin Parse Error"
                local message = "Failed to parse clock_skin.xml"
                if xmlError then
                    message = message .. ":\n\n" .. tostring(xmlError)
                end
                local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                if not ok then
                    print("Failed to show error dialog:", ret)
                end
            end
        end)
        return
    end
    drawable = ClockSkin:parseClockSkin(xmlTree)
    for k,v in pairs(drawable) do
--        print(k,v.name)
        v.centerX=offsetX+v.centerX*myscale
        v.centerY=offsetY-v.centerY*myscale
        if v.name~=nil then
            if string.find(v.name:lower(), "png") then
                --print("loading sprite:".. pathskin .. v.name)
                --if file_exists(pathskin .. v.name) then
                if fileUtil:isFileExist(pathskin .. v.name) then
                    local sp=display.newSprite(pathskin .. v.name)
                    v.drawable = sp
                    v.drawable:setPosition(v.centerX,v.centerY):setScale(myscale)
                    v.drawable:addTo(layer)
                end
            elseif string.find(v.name:lower(), "xml") then
                print("loading animation with name:".. v.name)
                local xmlTree, xmlError = xmlParser:ParseXmlFile(pathskin .. v.name)
                -- Show error if parse failed OR if there was a parse error (even with partial tree)
                if xmlTree == nil or xmlError then
                    pcall(function()
                        if luaj then
                            local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                            local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                            local title = "Animation XML Parse Error"
                            local message = "Failed to parse animation file: " .. tostring(v.name)
                            if xmlError then
                                message = message .. "\n\n" .. tostring(xmlError)
                            end
                            local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                            if not ok then
                                print("Failed to show error dialog:", ret)
                            end
                        end
                    end)
                else
                    local cache = cc.AnimationCache:getInstance()
                    local animation = ClockSkin:loadDrawableArray(xmlTree, v, nil)
                    cache:addAnimation(animation, v.name)
                end

                if v.arraytype == 0 or v.arraytype == '21' or v.arraytype == '62' then --animation
                    print("real animation started")

                    local sp = cc.Sprite:create()
        -- REM           local action = cc.Animate:create(animation)
        -- REM           sp:runAction(cc.RepeatForever:create(action))
                    v.drawables = v.name   -- ADDED
                    v.drawable = sp
                    v.drawable:setPosition(v.centerX,v.centerY):setScale(myscale)
                else
                    v.drawable = display.newLayer()
                    v.drawables = v.name
                end

                v.drawable:addTo(layer)
           end
        else
            print("loading arraytype:".. v.arraytype)
            if v.arraytype == '99' then
                local sp=display.newSprite("clock_battery_panel.png")
                v.drawable = display.newLayer()
                sp:addTo(v.drawable)
                v.batteryText = cc.Label:createWithSystemFont("test","arial",20)
                v.batteryText:addTo(v.drawable)
                v.batteryText:setAnchorPoint(cc.p(0,0))
                sp:setPosition(v.centerX,v.centerY):setScale(myscale)
                v.batteryText:setPosition(v.centerX+sp:getBoundingBox().width/2+5,v.centerY-8):setScale(myscale)
            else
                v.drawable = display.newLayer()
            end
            v.drawable:addTo(layer)
        end
    end
    if ring==true then
        ringDrawable=drawable
    elseif #ringDrawable>0 then
        for i=1,#drawable do
            ringDrawable[#ringDrawable+1] = drawable[i]  --corrected bug. if t1[#t1+i] is used, indices will be skipped
        end
        drawable = ringDrawable
    end
    --  self:initWatch()
end

function ClockSkin:onEnter()
    print("ClockSkin:onEnter")
    if self.onCreate then self:onCreate() end

    -- Clear reload flag and check for pending reload
    if cc.exports.isReloading then
        print("ClockSkin loaded, clearing reload flag")
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

function ClockSkin:onExit()
    print("ClockSkin:onExit - cleaning up scene")

    -- Stop the update loop to prevent crashes during scene destruction
    pcall(function()
        self:unscheduleUpdate()
        print("ClockSkin update loop stopped cleanly")
    end)

    -- Clear drawable references to help with garbage collection
    pcall(function()
        drawable = {}
        ringDrawable = {}
        print("Cleared drawable arrays")
    end)

    print("ClockSkin:onExit complete")
end

function ClockSkin:forceReload()
    print("ClockSkin:forceReload - forcing watch face reload")
    -- This method forces a complete reload by calling myApp:run()
    -- This is exactly what happens when switching watch faces via __G__SETSKIN__
    -- It recreates the entire scene with proper initialization

    if cc.exports.myApp and cc.exports.skin then
        cc.exports.myApp:run("ClockSkin", cc.exports.skin)
    else
        print("ClockSkin:forceReload - ERROR: myApp or skin not available")
    end
end

function ClockSkin:onCreate()
    self:removeAllChildren()

    cc.Director:getInstance():getTextureCache():removeAllTextures()
    local layer=display.newLayer():addTo(self)
    print ("ClockSkin:onCreate()")
    if (cc.exports.fullscreen == 0) then
        -- Mode 0: Vertical centered (fixed bug)
        self:move(round(offsetX*(display.sizeInPixels.width/display.sizeInPixels.height)-offsetX)+1,0)
    elseif (cc.exports.fullscreen == 2) then
        -- Mode 2: Horizontal centered
        self:move(0, round((2*offsetY*(display.sizeInPixels.height/display.sizeInPixels.width)-2*offsetY)/2)+1)
    elseif (cc.exports.fullscreen == 3) then
        -- Mode 3: Vertical compatibility (old mode 0 with bug)
        self:move(round(offsetX*(display.sizeInPixels.width/display.sizeInPixels.height)-offsetX)/2+1,0)
    elseif (cc.exports.fullscreen == 4) then
        -- Mode 4: Horizontal compatibility (old mode 2, top-aligned)
        self:move(0, round(2*offsetY*(display.sizeInPixels.height/display.sizeInPixels.width)-2*offsetY)+1)
    end
    --if ring then
    if fileUtil:isFileExist(path .. "ring.zip") then
        self:initView(layer, true) -- load ring
        local sublayer=display.newLayer():addTo(layer)
        self:initView(sublayer, false)  -- add the real skin
        sublayer:setScale(.75)
    else
        self:initView(layer, false)
    end

    lastDrawTime=0
    local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
    local sigs = "()Ljava/lang/String;"
    local ok,ret  = luaj.callStaticMethod(className,"loadMemory",nil,sigs)
    if not ok then
        print("luaj error:", ret)
    else
        cc.exports.__G__SETMEMORY__(ret)
    end
    --if (cc.exports.fullscreen == 2) then self:move(0, display.height-display.width) end
  --  if (cc.exports.fullscreen == 2) then display.getRunningScene():move(0, round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)+1) end
    print ("Launching update")
    self:scheduleUpdate(handler(self, self.update))
    print ("ClockSkin:onCreate() success")
end

function ClockSkin:parseClockSkin(xmlTree)
    drawable={}
    if xmlTree~=nil then
        for i,xmlNode in pairs(xmlTree.ChildNodes) do
            if(xmlNode.Name=="drawable") then
                local draw={}
                draw.centerX = 0
                draw.centerY = 0
                draw.startAngle = 0
                draw.rotatemode = 3
                draw.angle = 0
                draw.rotate = 0
                draw.arraytype = 0
                draw.direction = 1
                draw.mulrotate = 1
                draw.colorarray=nil
                draw.size = 0
                draw.referenceTime=false
    --            print(i, "   Name=", xmlNode.Name , " value=",xmlNode.Value);
                for i,subXmlNode in pairs(xmlNode.ChildNodes) do
                    if(subXmlNode.Value) then
    --                    print("   Name=", subXmlNode.Name , " value=",subXmlNode.Value);
                        draw[subXmlNode.Name] = subXmlNode.Value
                        for key, value in pairs(subXmlNode.Attributes) do
    --                        print("   AttrName=" , key , " value=" , value);
                            if (key == "repeat") then
                                draw.repeats = value / 1000
                            end
                        end
                    elseif (subXmlNode.Name=="referenceTime") then
                        draw.referenceTime=true
                        for key, value in pairs(subXmlNode.Attributes) do
                            draw[key] = value
    --                        print("referenceTime:", key, draw[key])
                        end
                        draw.month = draw.month or (draw.year and 1) or nil
                        draw.day = draw.day or (draw.month and 1) or nil
                        draw.hour = draw.hour or (draw.day and 0) or nil
                        draw.minute = draw.minute or (draw.hour and 0) or nil
                        draw.second = draw.second or (draw.minute and 0) or nil
                    end
                end
        --        if (draw.animationStartDelay) then draw.animationStartDelay=-draw.animationStartDelay end

                table.insert(drawable, #drawable+1, draw)
            end
        end
    end
    return drawable
end

function ClockSkin:loadDrawableArray(xmlTree, v, animation)
    if animation==nil then animation = cc.Animation:create() end
    if xmlTree~=nil then
        v.size=0
        local totalsize=0
        v.indexes = {}
        v.sizes = {}
        for i,xmlNode in pairs(xmlTree.ChildNodes) do
            if(xmlNode.Name=="image" and xmlNode.Value ~= nil) then
                print("loading animation:" .. pathskin .. xmlNode.Value)
                local fanim=pathskin .. xmlNode.Value
                if fileUtil:isFileExist(fanim) then
                    print("...ok")
                    animation:addSpriteFrameWithFile(fanim)
                    v.indexes[v.size] = totalsize
                    v.sizes[v.size] = 1
                    totalsize=totalsize+1
                    v.size=v.size+1
                end
            elseif(xmlNode.Name=="animationItem") then
                for ii,xmlNodeC in pairs(xmlNode.ChildNodes) do
                --    print (ii, xmlNodeC.Name, xmlNodeC.Value)
                    if(xmlNodeC.Name=="name" and xmlNodeC.Value ~= nil) then
            --            print("loading animation:" .. pathskin .. xmlNodeC.Value)
                        local fanim=pathskin .. xmlNodeC.Value
                        if fileUtil:isFileExist(fanim) then
            --                print("...ok")
                            animation:addSpriteFrameWithFile(fanim)
                            v.size=v.size+1
                        end
                    elseif(xmlNodeC.Name=="duration" and xmlNodeC.Value ~= nil) then
                        v.framerate = xmlNodeC.Value
                    end
                end
            elseif (xmlNode.Name=="name") then
            --    print("loading sub animation with name:".. xmlNode.Value)
                for key, value in pairs(xmlNode.Attributes) do
                    --        print("   Name=" .. key .. " value=" .. value);
                    if (key == "repeat") then
                        if (v.repeats == nil) then v.repeats = {} end
                        v.repeats[v.size] = value / 1000
                    end
                end
                local xmlTree2, xmlError2 = xmlParser:ParseXmlFile(pathskin .. xmlNode.Value)
                -- Show error if parse failed OR if there was a parse error (even with partial tree)
                if xmlTree2 == nil or xmlError2 then
                    pcall(function()
                        if luaj then
                            local className = "com/ailife/ClockSkinCoco/ErrorDialogHelper"
                            local sig = "(Ljava/lang/String;Ljava/lang/String;)V"
                            local title = "Included XML Parse Error"
                            local message = "Failed to parse included file: " .. tostring(xmlNode.Value)
                            if xmlError2 then
                                message = message .. "\n\n" .. tostring(xmlError2)
                            end
                            local ok, ret = luaj.callStaticMethod(className, "showLuaError", {title, message}, sig)
                            if not ok then
                                print("Failed to show error dialog:", ret)
                            end
                        end
                    end)
                else
                    local sub={}
                    animation=ClockSkin:loadDrawableArray(xmlTree2, sub, animation)
                    --    print ("totalsize", totalsize, sub.size, v.size)

                    --    if (v.repeats == nil) then v.repeats = {} end
                    --    v.repeats[v.size] = 5

                    v.indexes[v.size] = totalsize
                    v.sizes[v.size] = sub.size
                    totalsize=totalsize+sub.size
                    v.size=v.size+1
                end
            end
        end
        v.framerate = tonumber(v.framerate) or 30
        v.frametime = tonumber(v.frametime) or 0
        if v.frametime > 0 then v.framerate = 1 / v.frametime end
     --   print ("frame", v.framerate)
        animation:setDelayPerUnit(1 / v.framerate) --0.05)
        animation:setRestoreOriginalFrame(true)
    end
    return animation
end

function ClockSkin:update()
    --[[if cc.exports.aspect_ratio  < 1 then
        if (cc.exports.fullscreen == 0) then
            self:setScale(cc.exports.aspect_ratio)
        else
            self:setScale(1, cc.exports.aspect_ratio)
        end
    end]]
   -- if (cc.exports.fullscreen == 2) then self:move(0, display.height-display.width) end
  --  if (cc.exports.fullscreen == 2) then display.getRunningScene():move(0, round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)+1) end
    display.getRunningScene():setScale(cc.exports.displayscale)
    local status, error = pcall(function() ClockSkin:updateMilli() end )
    if status==false and not self.error then
        print ("Error in update()", error)
        self.error = true
    end
end

function ClockSkin:interpolate(fraction, timeDivider, mode, mulrotate)
    if (mode == 0) then --smooth
        return fraction
    end

    local rest=0
    if (tonumber(mulrotate) >= 0) then
        rest, fraction = math.modf(mulrotate * fraction)
        rest = rest / mulrotate
        timeDivider = timeDivider / mulrotate
    else
        fraction = (fraction / math.abs(mulrotate)) % 1
        mulrotate = 1
    end

    if (mode == 1) then -- quartz
        local smoothMovementTime = 0.1 / timeDivider
        if (fraction < (1 - smoothMovementTime)) then return rest end
        return rest + (fraction - 1 + smoothMovementTime) / smoothMovementTime   / mulrotate -- quartz (with smooth movement)
    elseif (mode == 2) then -- quartz with overshoot
        local overshootTime = 0.2
        overshootTime = overshootTime / timeDivider
        local halfOvershootTime = overshootTime / 2
        local overshootSize = 0.25
        if (fraction < overshootTime) then
            if (fraction < halfOvershootTime) then
                return rest + (-1 + fraction / halfOvershootTime * (1 + overshootSize)) / mulrotate
            end
            return rest + (overshootSize - (fraction - halfOvershootTime) / halfOvershootTime * overshootSize) / mulrotate
        end
        return rest
    elseif (mode == 3) then --outElastic (mode 3)
        if (fraction < 1 / timeDivider) then
            return rest + outElastic(fraction * timeDivider,-1,1,1)  / mulrotate --outElastic(milli,-1,1,1)
        end
        return rest
    else --if (mode == 4) then -- jump
        return rest
    end
end

function ClockSkin:updateMilli()
    local a,milli = math.modf(socket.gettime())
    local currentTime = os.time()

    local cal=os.date("*t")
    local calh=tonumber(os.date("%H",currentTime))
    local calm=cal.min  --os.date("%M")
    local cals=cal.sec  --os.date("%S")
    local calmo=cal.month -- 1-13
    local cald=cal.day   -- 1-31
    local caly=cal.year

    local directionR={}
    local direction
    local batteryLevel=tonumber(cc.exports.batteryLevelInfo) or 0 --second * 100 / 60 --cc.exports.batteryLevelInfo
    local heart = tonumber(cc.exports.heart) or 0
    local pedo = tonumber(cc.exports.skinsteps) or 0
    local calo = tonumber(cc.exports.calorie) or 0
    local distance = tonumber(cc.exports.distance) or 0
    local targetSteps = tonumber(cc.exports.targetSteps) or 10000
    local distanceunit = tonumber(cc.exports.distanceunit) or 0

    --local moon = cc.exports.moonphase
    --if moon == 0 then moon = 6 end
    local weather,a = math.modf(cc.exports.weatherIcon / 10)  -- format is xxw
    local temp = cc.exports.temperature

    -- Get current weekday for day change detection
    local weekday = os.date("%w")

    -- Refresh watch data on day change or periodically based on FPS
    -- Low FPS (1-5): refresh every 60 seconds
    -- Higher FPS (15+): refresh every 5 seconds
    if (oldday ~= weekday or (currentTime-lastDrawTime > 5 and cc.exports.skindisplay >= 15)
            or (currentTime-lastDrawTime > 60 and cc.exports.skindisplay <= 5)) then
        oldday=weekday
        lastDrawTime = currentTime
        self:initWatch()
    end
    for k,v in pairs(drawable) do
        local bitmap=v.drawable
        local delay=tonumber(v.delay) or 0
        local animDelay = tonumber(v.animationStartDelay) or 0
        local vmilli = (milli - delay/1000)


        local calendar=os.date("*t",currentTime+vmilli)
        local hour24=tonumber(os.date("%H",currentTime+vmilli))  -- 0-23
        local hour23=hour24
        local hour=tonumber(os.date("%I",currentTime+vmilli))   --  0-11
        local hour12=hour
        local hour11=hour
        if hour11==12 then hour11 = 0 end
        if hour24==0 then hour24 = 24 end
        if (cc.exports.is24) then hour=hour23
        else if hour==0 then hour = 12 end
        end
        local minute=calendar.min  --os.date("%M")
        local second=calendar.sec  --os.date("%S")
        local month=calendar.month -- 1-13
        local day=calendar.day   -- 1-31
        local weekday=os.date("%w",currentTime+vmilli)  -- [0-6 = Sunday-Saturday]
        local year = calendar.year
    --    local moon=round(calculateMoonPhase(year, month, day)/30*7) -- put 7 instead of 6 previously...
        --    print(vmilli, math.modf(vmilli))
        a,vmilli=math.modf(vmilli)
        if vmilli<0 then vmilli=1+vmilli end
        local vhour = hour

        local refTime=0
        if v.referenceTime == true then
            refTime=os.time{year=v.year or caly, month=v.month or calmo, day=v.day or cald,
                hour=v.hour or calh, minute=v.minute or calm, sec=v.second or cals }
            animTime=os.time{year=year, month=month, day=day,
                hour=hour23, minute=minute, sec=second}+vmilli+animDelay/1000
         --   print ("ref:",refTime,"current:",animTime,"startime:",v.starttime)
        else
            animTime=hour23*60*60+minute*60+second+vmilli+animDelay/1000
        end

        animTimeRound=hour23*60*60

        --    print(delay,minute,vminute,second,vsecond,milli,vmilli)
        if v.hourFormat == "0-11" then vhour = hour11
        elseif v.hourFormat == "1-12" then vhour = hour12
        elseif v.hourFormat == "0-23" then vhour = hour23
        elseif v.hourFormat == "1-24" then vhour = hour24 end

        if directionR[v.rotate] == nil then directionR[v.rotate] = 1 end
        if tonumber(v.direction) == 2 then
            directionR[v.rotate]=-directionR[v.rotate]    -- to reproduce the original bug
        end
        direction = directionR[v.rotate]
        local rotation=0
        local delta=0
        local mov = tonumber(v.movement) or 0

        if v.rotate+0>0 and bitmap~=nil then
            bitmap:setPosition(v.centerX+0,v.centerY+0)

            if v.rotate == '1' then  -- hour smooth
                --rotation=direction*(30*hour+minute/2)
                rotation=direction*30*(vhour + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate))
            elseif v.rotate == '2' then -- minute smooth
                --rotation=direction*(6*minute+second/10)
                rotation=direction*6*(minute + ClockSkin:interpolate(second/60+vmilli/60,60,mov,v.mulrotate))
           --     print (second/60+milli/60)
            elseif v.rotate == '3' then  -- second smooth
                --rotation=direction*6*(second + milli)
                rotation=direction*6*(second + ClockSkin:interpolate(vmilli,1,mov,v.mulrotate))
            elseif v.rotate == '4' then  -- month
                rotation=direction*30*month
            elseif v.rotate == '5' then  -- week
                local index = weekday-1
                if index<0 then index=6 end
                rotation=direction*360*index/7
            elseif v.rotate == '6' then  -- battery
                rotation=direction*batteryLevel/100
                if v.startAngle+0>0 then
                    rotation = rotation * (v.startAngle - v.angle);
                else
                    rotation = rotation * (180 - v.angle);
                end
            elseif v.rotate == '7' then  -- day/night
            --    rotation=direction*(15*hour23+minute/4)
			--	rotation=direction*(15*hour23 + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate)/4)
                rotation=direction*15*(hour23 + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate))
            elseif v.rotate == '8' then  -- hour
            --    rotation=direction*(30*hour+minute/2)
                rotation=direction*30*(vhour + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate))
            elseif v.rotate == '9' then  -- minute
            --    rotation=direction*(6*minute+second/10)
                rotation=direction*6*(minute + ClockSkin:interpolate(second/60+vmilli/60,60,mov,v.mulrotate))
            elseif v.rotate == '10' then  -- second
           --     rotation=direction*6*(second + milli)
                rotation=direction*6*(second + ClockSkin:interpolate(vmilli,1,mov,v.mulrotate))
            elseif v.rotate == '11' or v.rotate == '20' then  -- days
                rotation=direction*(day-1) * (360 / 31)
            elseif v.rotate == '12' then  -- battery
                --batteryLevel=5
                rotation=direction*(0 + (batteryLevel) * (360 / 100))
                rotation = v.startAngle + 180 + rotation * (v.angle / 360)
            elseif v.rotate == '13' then  -- various
                if v.rotatemode == '1' then --hour
                    rotation=direction*30*(vhour + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate))
                elseif v.rotatemode == '2' then --minute
                    rotation=direction*6*(minute + ClockSkin:interpolate(second/60+vmilli/60,60,mov,v.mulrotate))
                elseif v.rotatemode == '3' then --second
                    rotation=direction*6*(second + ClockSkin:interpolate(vmilli,1,mov,v.mulrotate))
                elseif v.rotatemode == '4' then --month
                    rotation=direction*30*month
                elseif v.rotatemode == '5' then --week
                    local index = weekday-1
                    if index<0 then index=6 end
                    rotation=direction*360*index/7
                elseif v.rotatemode == '6' then --battery
                    rotation=direction*batteryLevel/100
                    if v.startAngle+0>0 then
                        rotation = rotation * (v.startAngle - v.angle);
                    else
                        rotation = rotation * (180 - v.angle);
                    end
                elseif v.rotatemode == '7' then --24h
                    rotation=direction*(15*hour23 + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate)/4)
                elseif v.rotatemode == '8' then --steps
                    rotation=direction*(pedo / targetSteps) * 360
                elseif v.rotatemode == '11' then --??
                    rotation=direction*6*second
                elseif v.rotatemode == '12' then --??
                    rotation=direction*6*second
                elseif v.rotatemode == '13' then --??
                    rotation=direction*6*second
                end
                rotation = v.startAngle + 180 + rotation * (v.angle / 360)
            elseif v.rotate == '14' then  -- pendulum
                if (math.fmod(second,2)==0) then rotation=direction*6*(1-vmilli) else rotation=direction*6*vmilli end
            elseif v.rotate == '101' then  -- steps/targetSteps
                rotation=direction*(pedo / targetSteps) * 360
            --    print(pedo , targetSteps, 1.0 * pedo / targetSteps)
            end
            -- add multirotate
            if tonumber(v.mulrotate) >= 0 then
                rotation = v.mulrotate * rotation + v.angle
            else
                rotation = rotation / math.abs(v.mulrotate) + v.angle
            end
            -- add shadow effect
            if v.rotate == '8' or v.rotate == '9' or v.rotate == '10' then
                if (rotation < 0) then rotation = rotation + 360 end
                if (rotation >= 0 and rotation < 90.0) then
                    delta = 3.5 * (rotation / 90)
                elseif (rotation < 90 or rotation >= 270) then
                    delta = 3.5 * ((rotation - 360) / 90)
                else
                    delta = 3.5 * ((180 - rotation) / 90)
                end
            end
            if v.drawables then
                --    print((hour24*60*60+minute*60+second) , milli, v.framerate, v.size, (hour24*60*60+minute*60+second+milli) * v.framerate)
              --  bitmap:setDisplayFrameWithAnimationName(v.drawables, animTime * v.framerate % v.size)

                if (v.repeats == nil) then
                    bitmap:setDisplayFrameWithAnimationName(v.drawables, animTime * v.framerate % v.size)  -- loop
                else
                    local im = 0
                    if (v.starttime == nil) then v.starttime = refTime end --0 end --animTime end
                    if (v.repeats == 0) then -- no repeat
                        im = (animTime-(v.starttime or 0)) * v.framerate
                    else
                        im = ((animTime-(v.starttime or 0))% v.repeats) * v.framerate
                    end
                    if (im >= v.size) then im = v.size-1 end
                    bitmap:setDisplayFrameWithAnimationName(v.drawables, im)
                end
            end

            bitmap:rotate(rotation + delta)
        else
            local text
            local index
            if v.arraytype == 0 or v.arraytype == '21' or v.arraytype == '62' then  -- animation
                if v.drawables then
                --    print((hour24*60*60+minute*60+second) , milli, v.framerate, v.size, (hour24*60*60+minute*60+second+milli) * v.framerate)
                --    bitmap:setDisplayFrameWithAnimationName(v.drawables, animTime * v.framerate % v.size)
                    if (v.repeats == nil) then
                        bitmap:setDisplayFrameWithAnimationName(v.drawables, animTime * v.framerate % v.size)  -- loop
                    else
                        local im = 0
                        if (v.starttime == nil) then v.starttime = refTime end -- = 0 end --animTime end
                        if (v.repeats == 0) then -- no repeat
                            im = (animTime-(v.starttime or 0)) * v.framerate
                        else
                            im = ((animTime-(v.starttime or 0))% v.repeats) * v.framerate
                        end
                        if (im >= v.size) then im = v.size-1 end
                        bitmap:setDisplayFrameWithAnimationName(v.drawables, im)
                    end
                end
            elseif v.arraytype == '1' then  -- YYYY-MM-DD
                text=string.format("@@%02d-%02d-%02d", year, month, day)
            elseif v.arraytype == '2' then  -- MM-DD
                text=string.format("@@%02d-%02d", month, day)
            elseif v.arraytype == '3' then  -- MM
                ClockSkin:drawImage(v, month-1)
            elseif v.arraytype == '4' then  -- DD
                text=string.format("@@%02d", day)
            elseif v.arraytype == '5' then  -- weekday
                if weekday==0 then index=7 else index=weekday end
                ClockSkin:drawImage(v, index)
            elseif v.arraytype == '6' then  -- HH:MM
                if (second % 2 == 0 or (v.sizes ~= nil and (v.sizes[10] or 0)>1)) then
                    text=string.format("@@%02d:@@%02d", vhour, minute)
                else
                    text=string.format("@@%02d @@%02d", vhour, minute)
                end
                if ((not cc.exports.is24 and v.hourFormat == nil) or v.hourFormat == "1-12" or v.hourFormat == "0-11") then
                    if (tonumber(hour24) > 11) then text = text .. "p" else text = text .. "%" end
                end
            elseif v.arraytype == '7' then  -- HH
                text=string.format("@@%02d", vhour)
            elseif v.arraytype == '8' then  -- MM
                text=string.format("@@%02d", minute)
            elseif v.arraytype == '9' then  -- SS
                text=string.format("@@%02d", second)
            elseif v.arraytype == '10' then  -- weather
                ClockSkin:drawImage(v, weather)
            elseif v.arraytype == '11' then  -- temp
                text=string.format("@@%02d%%", temp)
            elseif v.arraytype == '12' then  -- steps
                if (pedo > 99999) then pedo = 99999 end
                if (pedo < 10) then
                    text=string.format("@@----%d", pedo)
                elseif (pedo < 100) then
                    text=string.format("@@---%d", pedo)
                elseif (pedo < 1000) then
                    text=string.format("@@--%d", pedo)
                elseif (pedo < 10000) then
                    text=string.format("@@-%d", pedo)
                else
                    text=string.format("@@%d", pedo)
                end
            elseif v.arraytype == '13' then  -- heart
                --text=heart
                if (heart < 100) then
                    text=string.format("@@-%d", heart)
                else
                    text=string.format("@@%d", heart)
                end
            elseif v.arraytype == '14' then  -- battery
                if (batteryLevel < 10) then
                    text=string.format("@@--%d%%", batteryLevel)
                elseif (batteryLevel < 100) then
                    text=string.format("@@-%d%%", batteryLevel)
                else
                    text=string.format("@@%d%%", batteryLevel)
                end
            elseif v.arraytype == '15' then  -- special second
                ClockSkin:drawSpecialSecond(v, second)
            elseif v.arraytype == '16' or v.arraytype == '31' then  -- year 4 digits
                text=year
            elseif v.arraytype == '17' then  -- battery with circle
                ClockSkin:drawCircleProgress(v, batteryLevel, 100)
            elseif v.arraytype == '18' then  -- steps with circle
                ClockSkin:drawCircleProgress(v, pedo, targetSteps)
            elseif v.arraytype == '19' then  --
                --print(v.size, moon, round((calculateMoonPhase(year, month, day)-1)/30*(v.size-1)))
                ClockSkin:drawImage(v, round((calculateMoonPhase(year, month, day)-1)/29*(v.size-1)))
            elseif v.arraytype == '24' then  -- battery by image
                ClockSkin:drawImage(v, math.floor(batteryLevel/10))
            elseif v.arraytype == '50' then  -- missed calls by image
                if (cc.exports.missedCalls == 0) then
                    text=string.format("@@", cc.exports.missedCalls)
                elseif (cc.exports.missedCalls < 10) then
                    text=string.format("@@0%d", cc.exports.missedCalls)
                elseif (cc.exports.missedCalls < 100) then
                    text=string.format("@@%d", cc.exports.missedCalls)
                end
            elseif v.arraytype == '51' then  -- unread SMS by image
                if (cc.exports.unreadNotification == 0 ) then
                    text=string.format("@@", cc.exports.unreadNotification)
                elseif (cc.exports.unreadNotification < 10) then
                    text=string.format("@@0%d", cc.exports.unreadNotification)
                elseif (cc.exports.unreadNotification < 100) then
                    text=string.format("@@%d", cc.exports.unreadNotification)
                end
            elseif v.arraytype == '54' then  -- calorie
                if (calo > 9999) then calo = 9999 end
                if (calo < 10) then
                    text=string.format("@@---%d", calo)
                elseif (calo < 100) then
                    text=string.format("@@--%d", calo)
                elseif (calo < 1000) then
                    text=string.format("@@-%d", calo)
                else
                    text=string.format("@@%d", calo)
                end
            elseif v.arraytype == '55' then  -- unread SMS + missed calls by image
                if (cc.exports.unreadNotification+cc.exports.missedCalls == 0) then
                    text=string.format("@@", cc.exports.unreadNotification+cc.exports.missedCalls)
                elseif (cc.exports.unreadNotification+cc.exports.missedCalls < 10) then
                    text=string.format("@@0%d", cc.exports.unreadNotification+cc.exports.missedCalls)
                elseif (cc.exports.unreadNotification+cc.exports.missedCalls < 100) then
                    text=string.format("@@%d", cc.exports.unreadNotification+cc.exports.missedCalls)
                end
            elseif v.arraytype == '61' then  -- battery by image
                local battImg=0
                if (v.size > 1) then
                    local n = 100 / (v.size - 1)
                    for index = 0, v.size - 1 do
                        if ((index * n < batteryLevel) and (batteryLevel <= (index + 1) * n)) then
                            battImg = index + 1
                            break
                        end
                    end
                    if (batteryLevel < 5) then battImg=0 end
                    if (batteryLevel == 100) then battImg=v.size-1 end

                    ClockSkin:drawImage(v, battImg)
                end
            --elseif v.arraytype == '62' then  -- animation see 0
            elseif v.arraytype == '63' then  -- battery by image + charging
                local battImg=0
                if (v.size > 2) then
                    local n = 100 / (v.size - 2)
                    for index = 0, v.size - 1 do
                        if ((index * n < batteryLevel) and (batteryLevel <= (index + 1) * n)) then
                            battImg = index + 1
                            break
                        end
                    end
                    if (batteryLevel < 5) then battImg=0 end
                    if (batteryLevel == 100) then battImg=v.size-2 end
                    if (cc.exports.batteryCharging == 'true') then battImg = v.size-1 end

                    ClockSkin:drawImage(v, battImg)
                end
            elseif v.arraytype == '65' then  -- am / pm
                if ((not cc.exports.is24 and v.hourFormat == nil) or v.hourFormat == "1-12" or v.hourFormat == "0-11") then
                    if (tonumber(hour24) > 11) then ClockSkin:drawImage(v, 1) else ClockSkin:drawImage(v, 0) end
                    v.drawable:setVisible(true)
                else
                    v.drawable:setVisible(false)
                end

            elseif v.arraytype == '66' then  -- steps / target steps
                local stepsImg=0
                if (v.size > 1) then
                    local n = 100 / (v.size - 1)
                    local per = round(100 * pedo / targetSteps)

                    for index = 0, v.size - 1 do
                        if ((index * n < per) and (per <= (index + 1) * n)) then
                            stepsImg = index + 1
                            break
                        end
                    end
                    if (per < 5) then stepsImg=0 end
                    if (per == 100) then stepsImg=v.size-1 end

                    ClockSkin:drawImage(v, stepsImg)
                end

            elseif v.arraytype == '67' then  -- gsm signal
                ClockSkin:drawImage(v, cc.exports.gsmLevel%v.size)
            elseif v.arraytype == '68' then  -- gsm type signal
                ClockSkin:drawImage(v, cc.exports.gsmType%v.size)
            elseif v.arraytype == '69' then  -- BT signal
                ClockSkin:drawImage(v, cc.exports.BTstate%v.size)
            elseif v.arraytype == '70' then  -- GPS signal
                ClockSkin:drawImage(v, cc.exports.GPSstate%v.size)
            elseif v.arraytype == '71' then  -- WIFI signal
                ClockSkin:drawImage(v, cc.exports.Wifistate%v.size)
                --print("wifi", cc.exports.Wifistate, cc.exports.Wifistate%v.size, v.size)
            elseif v.arraytype == '72' then  -- wrist gesture
                ClockSkin:drawImage(v, cc.exports.Notifstate%v.size)
            elseif v.arraytype == '73' then  -- notif on
                ClockSkin:drawImage(v, 0)
            elseif v.arraytype == '74' then  -- progress ?

            elseif v.arraytype == '75' then  -- image slider
                ClockSkin:drawImageSlider(v, second, vmilli)
            elseif v.arraytype == '80' then  -- background
                 ClockSkin:drawImage(v, array80Index%v.size)
            elseif v.arraytype == '81' then  -- hour
            --print("array 81", array80Index%v.size,  array80Index, v.size)
                 ClockSkin:drawImage(v, array80Index%v.size)
                 rotation=direction*30*(vhour + ClockSkin:interpolate(minute/60+(second+vmilli)/3600,3600,mov,v.mulrotate))
                 v.char:rotate(rotation)
            elseif v.arraytype == '82' then  -- minute
                 ClockSkin:drawImage(v, array80Index%v.size)
                 rotation=direction*6*(minute + ClockSkin:interpolate(second/60+vmilli/60,60,mov,v.mulrotate))
                 v.char:rotate(rotation)
            elseif v.arraytype == '83' then  -- seconds
                 ClockSkin:drawImage(v, array80Index%v.size)
                 rotation=direction*6*(second + ClockSkin:interpolate(vmilli,1,mov,v.mulrotate))
                 v.char:rotate(rotation)
            elseif v.arraytype == '97' then  -- text pedometer
                text=string.format("@@%d", pedo)
            elseif v.arraytype == '98' then  -- text heatrate
                text=string.format("@@%d", heart)
            elseif v.arraytype == '99' then  -- charging
                if cc.exports.batteryCharging == 'true' then
                    v.drawable:setVisible(true)
                    v.batteryText:setString(string.format("%d%%", batteryLevel))
                else
                    v.drawable:setVisible(false)
                end
            elseif v.arraytype == '101' then  -- YY-MM-DD
                text=string.format("@@%02d-%02d-%02d", year%100, month, day)

            elseif (v.arraytype == '1001' or v.arraytype == '60') then  -- distance
                if distance < 10 then
                    text=string.format("@@0%.1f", math.floor(distance*10)/10)
                else
                    text=string.format("@@%.1f", math.floor(distance*10)/10)
                end
             --   print("Distance:", distance, text)
            elseif v.arraytype == '1002' then  -- distance unit
                ClockSkin:drawImage(v, distanceunit)
            elseif v.arraytype == '1011' then  -- temperature unit
                if (cc.exports.isCelsius) then ClockSkin:drawImage(v, 0) else ClockSkin:drawImage(v, 1) end
            end

            if text ~= nil then
                local w=ClockSkin:drawText(v, ''..text)
           --     print (text, v.centerX, w/2,v.centerX-round(w/2))
                v.drawable:setAnchorPoint(cc.p(0.5,0.5))
           --??     v.drawable:setPosition(v.centerX-round(w/2),v.centerY+0)
                v.drawable:setPosition(v.centerX-w/2,v.centerY+0)
            end
            v.init=true
        end
    end
end

function ClockSkin:drawText(v, text)
    local sp, c=nil,''
    local posx=0
    text=text:gsub('@@', '')
--    print ("drawtext", text)
    if v.size == 0 then return 0 end
    if v.char == nil then v.char = {} end

    if (v.oldtext ~= text and v.indexes ~= nil) then -- something has changed need to reset animations..
        local old=''
        if (v.starttime == nil) then v.starttime={} end
        if (v.oldtext == nil) then
            for i = 1,string.len(text) do v.starttime[i] = animTimeRound end
        else
            for i = string.len(text)+1,string.len(v.oldtext) do  -- hidding old text chars
                if v.char[i] then
                    sp = v.char[i]
                    sp:setVisible(false)
                end
            end
            for i = 1,string.len(text) do
                c=string.sub(text,i,i)
                old=string.sub(v.oldtext,i,i)
                if (c ~= old) then
            --        print (old,c,animTime)
                    v.starttime[i] = animTime end
            end
        end
        v.oldtext = text
    end
    for i = 1,string.len(text) do
        if (v.init == nil and v.drawables ~= nil) or (v.char[i] == nil) then
--            print ("creating with " .. v.drawables)
            sp = cc.Sprite:create()
            sp:setAnchorPoint(cc.p(0,.5))

            v.char[i] = sp
            sp:addTo(v.drawable)
        else
            sp = v.char[i]
        end
        c=string.sub(text,i,i)
        local visible=not (c == " ")
        if (c == "-" or c == ":" or c == " " or c == ".") then
            if v.size > 10 then c=10 else c=-1 end
        elseif (c == "%") then
            if v.size > 11 then c=11 else c=-1 end
        --    if v.size > 10 and c == -1 and v.arraytype ~= '6' then c=10 end
        elseif (c == "p") then
            if v.size > 12 then c=12 else c=-1 end
            --    if v.size > 10 and c == -1 then c=10 end
        end
        c=tonumber(c) or -1
 --       print (string.sub(text,i,i), "=>", c, v.size)
        if not (c == -1) and c < v.size then
  --          print (string.sub(text,i,i), "=>", c)

            if (v.indexes == nil) then
                sp:setDisplayFrameWithAnimationName(v.drawables, c)
            else
                if (v.repeats == nil or v.repeats[c] == nil) then
                    sp:setDisplayFrameWithAnimationName(v.drawables, v.indexes[c] + animTime * v.framerate % v.sizes[c])  -- loop
                elseif (v.repeats[c] == 0) then -- no repeat
                    local im = (animTime-(v.starttime[i] or 0)) * v.framerate
                    if (im >= v.sizes[c]) then im = v.sizes[c]-1 end
                    sp:setDisplayFrameWithAnimationName(v.drawables, v.indexes[c] + im)
                else
                    local im = ((animTime-(v.starttime[i] or 0)) % v.repeats[c]) * v.framerate
                    if (im >= v.sizes[c]) then im = v.sizes[c]-1 end
                    sp:setDisplayFrameWithAnimationName(v.drawables, v.indexes[c] + im)
                end
            end


            sp:setScale(myscale):setVisible(visible)
            --   local l = sp:getBoundingBox().width
            --   sp:setPosition(-l*string.len(text)/2+posx,0)
            sp:setPosition(posx,0)
            if c < 11 then posx=posx+sp:getBoundingBox().width end
        --    if (v.arraytype == '14') then print(text, c,i, posx) end

            --        if c <= 11 then posx=posx+sp:getBoundingBox().width end
            --posx=posx+sp:getContentSize().width
    --        print (string.sub(text,i,i), "=>", posx)
        end
    end
    return posx
end

function ClockSkin:drawImage(v, index)
    index = tonumber(index)
    if v.init == nil and v.drawables ~= nil then
        print ("creating with " .. v.drawables)
        local sp = cc.Sprite:create()
        sp:addTo(v.drawable)
        v.char=sp
        v.starttime = animTimeRound
    end
    --print ("draw image:", index, v.size)
    --if (index < v.size) then
        --v.char:setDisplayFrameWithAnimationName(v.drawables, index)

        if (v.indexes == nil and index < v.size) then
            v.char:setDisplayFrameWithAnimationName(v.drawables, index)
        else
            if (v.repeats == nil or v.repeats[index] == nil) then
                v.char:setDisplayFrameWithAnimationName(v.drawables, v.indexes[index] + animTime * v.framerate % v.sizes[index])  -- loop
            elseif (v.repeats[index] == 0) then -- no repeat
                local im = (animTime-(v.starttime or 0)) * v.framerate
                if (im >= v.sizes[index]) then im = v.sizes[index]-1 end
                v.char:setDisplayFrameWithAnimationName(v.drawables, v.indexes[index] + im)
            else
                local im = ((animTime-(v.starttime or 0)) % v.repeats[index]) * v.framerate
                if (im >= v.sizes[index]) then im = v.sizes[index]-1 end
                v.char:setDisplayFrameWithAnimationName(v.drawables, v.indexes[index] + im)
            end
        end


    --end
    v.char:setPosition(v.centerX+0,v.centerY+0):setScale(myscale)
end

function ClockSkin:drawSpecialSecond(v, second)
    if v.colorarray == nil then return end
    if v.init == nil then
        if v.char == nil then v.char = {} end
        local s = v.colorarray:split(",")
        v.bright= self:hex2rgb(s[1])
        v.dark = self:hex2rgb(s[2])
        local radius = 250
        local a = math.pi / 30
        for i = 1, 60 do
            local sp = display.newSprite("shape_square.png")
            v.char[i] = sp
            local tSizeOrig = sp:getContentSize()
            v.char[i]:setScale((15 / tSizeOrig.width), (10 / tSizeOrig.height))
              :setPosition(offsetX+radius * math.cos(-a * i + math.pi/2), offsetY+radius * math.sin(-a * i + math.pi/2)):rotate(a * i * 180 / math.pi)
            v.char[i]:addTo(v.drawable):setColor(v.bright)
        end
    end
    for i = 1, 60 do
        if i <= second then
            v.char[i]:setColor(v.bright)
        else
            v.char[i]:setColor(v.dark)
        end
    end
end

function ClockSkin:drawCircleProgress(v, currentValue, maxValue)
    if v.colorarray == nil then return end

    -- Calculate number of elements based on v.size (default to 60 if not specified)
    local numElements = v.size or 60
    if numElements == 0 then numElements = 60 end

    -- Calculate percentage and number of lit elements
    local percentage = currentValue / maxValue
    if percentage > 1 then percentage = 1 end
    if percentage < 0 then percentage = 0 end
    local litElements = math.floor(percentage * numElements)

    if v.init == nil then
        if v.char == nil then v.char = {} end
        local s = v.colorarray:split(",")
        v.bright = self:hex2rgb(s[1])
        v.dark = self:hex2rgb(s[2])

        -- Get radius from XML attribute or use default
        local radius = tonumber(v.radius) or 250
        local a = (2 * math.pi) / numElements

        for i = 1, numElements do
            local sp = display.newSprite("shape_square.png")
            v.char[i] = sp
            local tSizeOrig = sp:getContentSize()
            v.char[i]:setScale((15 / tSizeOrig.width), (10 / tSizeOrig.height))
                :setPosition(offsetX + radius * math.cos(-a * i + math.pi/2),
                             offsetY + radius * math.sin(-a * i + math.pi/2))
                :rotate(a * i * 180 / math.pi)
            v.char[i]:addTo(v.drawable):setColor(v.bright)
        end
    end

    -- Update colors based on current value
    for i = 1, numElements do
        if i <= litElements then
            v.char[i]:setColor(v.bright)
        else
            v.char[i]:setColor(v.dark)
        end
    end
end

function ClockSkin:drawImageSlider(v, second, milli)
    --print("drawImageSlider called - arraytype:", v.arraytype)

    if v.drawable == nil then
        print("ERROR: v.drawable is nil for arraytype 75")
        return
    end

    --print("v.drawable exists, name:", v.name or "no name")

    -- Transform coordinates on first call (same as centerX/centerY transformation)
    if v.slider_init == nil then
        --print("INIT: Initializing slider coordinates")
        --print("  centerX:", v.centerX, "centerY:", v.centerY, "endX:", v.endX, "endY:", v.endY)
        --print("  offsetX:", offsetX, "offsetY:", offsetY, "myscale:", myscale)

        -- Start position: use already-transformed centerX/centerY
        v.slider_x1 = v.centerX
        v.slider_y1 = v.centerY

        -- End position: transform endX/endY the same way as centerX/centerY (line 101-102)
        -- Support both x2/y2 and endX/endY naming conventions
        local rawEndX = tonumber(v.x2) or tonumber(v.endX) or 0
        local rawEndY = tonumber(v.y2) or tonumber(v.endY) or 0

        v.slider_x2 = offsetX + rawEndX * myscale
        v.slider_y2 = offsetY - rawEndY * myscale

        --print("  Final positions - x1:", v.slider_x1, "y1:", v.slider_y1, "x2:", v.slider_x2, "y2:", v.slider_y2)

        v.slider_init = true
    end

    -- Get animation parameters
    -- mulrotate in deciseconds (300 = 30 seconds), fallback to duration
    local duration = tonumber(v.duration) or (tonumber(v.mulrotate) and tonumber(v.mulrotate) / 10) or 60
    -- direction: 1=left-to-right (forward), -1=right-to-left (backward)
    local direction = tonumber(v.direction) or 1
    -- mode: 0=loop, 1=ping-pong (separate parameter)
    local mode = tonumber(v.mode) or 0

    -- Calculate time position in cycle
    local timeInCycle = (second + milli) % duration
    local fraction = timeInCycle / duration

    -- Apply direction (1=forward, -1=backward)
    if direction < 0 then
        fraction = 1 - fraction
    end

    -- Apply ping-pong mode if enabled
    if mode == 1 then
        -- Ping-pong: go 0->1->0
        if fraction < 0.5 then
            fraction = fraction * 2  -- 0 to 1 in first half
        else
            fraction = (1 - fraction) * 2  -- 1 to 0 in second half
        end
    end

    -- Interpolate position
    local currentX = v.slider_x1 + (v.slider_x2 - v.slider_x1) * fraction
    local currentY = v.slider_y1 + (v.slider_y2 - v.slider_y1) * fraction

    --print("UPDATE: fraction:", fraction, "pos:", currentX, currentY, "duration:", duration, "mode:", mode)

    -- Update sprite position (v.drawable was already created in initView)
    v.drawable:setPosition(currentX, currentY)
end

function ClockSkin:hex2rgb(hex)
    return cc.c3b(tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6)))
end

function ClockSkin:touch(location)
    local touched = false
    print("touched on x:" .. location.x , " y:" .. location.y, cc.exports.displayscale)

    -- Reverse the scene offset transformations based on fullscreen mode
    -- These offsets match the scene:move() calls in onCreate()
    if (cc.exports.fullscreen == 0) then
        -- Mode 0: Vertical centered (fixed bug)
        local xOffset = round(offsetX*(display.sizeInPixels.width/display.sizeInPixels.height)-offsetX)+1
        location.x = location.x - xOffset
    elseif (cc.exports.fullscreen == 2) then
        -- Mode 2: Horizontal centered
        local yOffset = round((2*offsetY*(display.sizeInPixels.height/display.sizeInPixels.width)-2*offsetY)/2)+1
        location.y = location.y - yOffset
    elseif (cc.exports.fullscreen == 3) then
        -- Mode 3: Vertical compatibility (old mode 0 with bug)
        local xOffset = round(offsetX*(display.sizeInPixels.width/display.sizeInPixels.height)-offsetX)/2+1
        location.x = location.x - xOffset
    elseif (cc.exports.fullscreen == 4) then
        -- Mode 4: Horizontal compatibility (old mode 2, top-aligned)
        local yOffset = round(2*offsetY*(display.sizeInPixels.height/display.sizeInPixels.width)-2*offsetY)+1
        location.y = location.y - yOffset
    end
    -- fullscreen == 1 (EXACT_FIT): no scene offset, only scale adjustment needed

    -- Apply display scale transformation (centered at 256,256)
    location.x = (location.x-256) / (cc.exports.displayscale) + 256
    location.y = (location.y-256) / (cc.exports.displayscale) + 256

    print("        on x:" .. location.x , " y:" .. location.y)
    for k, v in pairs(drawable) do
        if v.arraytype == '100' then
            local actionDistance=tonumber(v.range) or 0
            local distance=math.sqrt( math.pow(v.centerX-location.x, 2) + math.pow(v.centerY-location.y, 2))
        --    print (k, v.centerX, v.centerY, "distance:", distance)
        --    print("action:",v.cls, v.pkg)

            if distance < actionDistance and v.cls and v.pkg then
         --       print ("distance:", distance)
                touched = true
                print("action:",v.cls, v.pkg)
                local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
                local ok,ret  = luaj.callStaticMethod(className,"launchAction",{v.pkg.."/"..v.cls})
                if not ok then
                    print("luaj error:", ret)
                else
                    print("The ret is:", ret)
                end
            end

        end
    end
    array80Index=array80Index+1
    return touched
end
return ClockSkin