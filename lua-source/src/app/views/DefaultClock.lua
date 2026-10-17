local DefaultClock = class("DefaultClock", cc.load("mvc").ViewBase)
require 'socket'

-- Import WatchSkinUtils for system info globals
require("app.views.WatchSkinUtils")

-- UI elements
local mainLayer, tutorialLayer
local label_time, label_seconds, label_ampm, label_date
local label_help_text, label_fps
local label_android_version, label_language, label_ram_disk, label_ul_version
local label_device_model
local label_weather, label_location
local label_battery
local progress_bg, progress_bar

-- State
local showTutorial = false
local lastFrameTime = 0
local frameCount = 0
local currentFps = 0
local lastInitWatchTime = 0

-- Convert watch.xml coordinates (center-origin) to Cocos2D-x (bottom-left origin)
-- watch.xml: x=0,y=0 is center; positive y is up
-- Cocos2D-x: x=0,y=0 is bottom-left; positive y is up
local function xmlToCocos(x, y)
    return display.cx + x, display.cy - y
end

function DefaultClock:onCreate()
    -- Create main clock layer
    mainLayer = display.newLayer()
    mainLayer:addTo(self)

    -- Create tutorial layer (hidden by default)
    tutorialLayer = display.newLayer()
    tutorialLayer:setVisible(false)
    tutorialLayer:addTo(self)

    -- Initialize global variables from WatchSkinUtils
    if updateSystemInfoVars then
        updateSystemInfoVars()
    end

    -- Request Java to send device data
    self:initWatch()

    -- === MAIN CLOCK LAYER ===

    -- Large time display (HH:MM)
    label_time = cc.Label:createWithSystemFont("00:00", "Roboto-Regular", 80)
    label_time:setTextColor(cc.c4b(255, 255, 255, 255))
    local tx, ty = xmlToCocos(-32, -164)
    label_time:setPosition(tx, ty)
    label_time:addTo(mainLayer)

    -- Seconds (smaller, top right of time)
    label_seconds = cc.Label:createWithSystemFont("00", "Roboto-Regular", 18)
    label_seconds:setTextColor(cc.c4b(255, 255, 255, 255))
    local sx, sy = xmlToCocos(103, -191)
    label_seconds:setPosition(sx, sy)
    label_seconds:addTo(mainLayer)

    -- AM/PM indicator
    label_ampm = cc.Label:createWithSystemFont("AM", "Roboto-Regular", 18)
    label_ampm:setTextColor(cc.c4b(255, 255, 255, 255))
    local ax, ay = xmlToCocos(107, -138)
    label_ampm:setPosition(ax, ay)
    label_ampm:addTo(mainLayer)

    -- Date (blue color)
    label_date = cc.Label:createWithSystemFont("2025/01/01 - Mon", "Roboto-Regular", 27)
    label_date:setTextColor(cc.c4b(63, 99, 227, 255)) -- #3f63e3
    local dx, dy = xmlToCocos(0, -98)
    label_date:setPosition(dx, dy)
    label_date:addTo(mainLayer)

    -- Seconds progress bar background (gray)
    local pbx, pby = xmlToCocos(0, -51)
    progress_bg = cc.DrawNode:create()
    progress_bg:drawSolidRect(cc.p(-150, -6), cc.p(150, 6), cc.c4f(0.33, 0.32, 0.32, 1)) -- #545252
    progress_bg:setPosition(pbx, pby)
    progress_bg:addTo(mainLayer)

    -- Seconds progress bar foreground (green)
    progress_bar = cc.DrawNode:create()
    progress_bar:setPosition(pbx, pby)
    progress_bar:addTo(mainLayer)

    -- Help text (red, clickable)
    label_help_text = cc.Label:createWithSystemFont("Long press to change me\nShort press for tutorial", "Roboto-Regular", 15)
    label_help_text:setTextColor(cc.c4b(178, 0, 0, 255)) -- #b20000
    local hx, hy = xmlToCocos(0, 0)
    label_help_text:setPosition(hx, hy)
    label_help_text:addTo(mainLayer)

    -- FPS counter
    label_fps = cc.Label:createWithSystemFont("fps:0", "Roboto-Regular", 15)
    label_fps:setTextColor(cc.c4b(255, 255, 255, 255))
    local fx, fy = xmlToCocos(0, 42)
    label_fps:setPosition(fx, fy)
    label_fps:addTo(mainLayer)

    -- Android version and language
    label_android_version = cc.Label:createWithSystemFont("android version: 0", "Roboto-Regular", 10)
    label_android_version:setTextColor(cc.c4b(255, 255, 255, 255))
    local avx, avy = xmlToCocos(-45, 70)
    label_android_version:setPosition(avx, avy)
    label_android_version:addTo(mainLayer)

    label_language = cc.Label:createWithSystemFont("language: en", "Roboto-Regular", 10)
    label_language:setTextColor(cc.c4b(255, 255, 255, 255))
    local lx, ly = xmlToCocos(67, 69)
    label_language:setPosition(lx, ly)
    label_language:addTo(mainLayer)

    -- RAM and Disk info
    label_ram_disk = cc.Label:createWithSystemFont("RAM: 0% of 0GB, DISK: 0% of 0GB", "Roboto-Regular", 10)
    label_ram_disk:setTextColor(cc.c4b(255, 255, 255, 255))
    local rdx, rdy = xmlToCocos(0, 90)
    label_ram_disk:setPosition(rdx, rdy)
    label_ram_disk:addTo(mainLayer)

    -- Universal Launcher version
    label_ul_version = cc.Label:createWithSystemFont("Universal Launcher version: 4.0", "Roboto-Regular", 10)
    label_ul_version:setTextColor(cc.c4b(255, 255, 255, 255))
    local ulx, uly = xmlToCocos(0, 111)
    label_ul_version:setPosition(ulx, uly)
    label_ul_version:addTo(mainLayer)

    -- Device model info
    label_device_model = cc.Label:createWithSystemFont("Model: ", "Roboto-Regular", 10)
    label_device_model:setTextColor(cc.c4b(255, 255, 255, 255))
    local dmx, dmy = xmlToCocos(0, 130)
    label_device_model:setPosition(dmx, dmy)
    label_device_model:addTo(mainLayer)

    -- Weather info (green)
    label_weather = cc.Label:createWithSystemFont("-- (--/--) - --", "Roboto-Regular", 23)
    label_weather:setTextColor(cc.c4b(41, 123, 0, 255)) -- #297b00
    local wx, wy = xmlToCocos(0, 150)
    label_weather:setPosition(wx, wy)
    label_weather:addTo(mainLayer)

    -- Location (green)
    label_location = cc.Label:createWithSystemFont("0.000, 0.000 - Unknown", "Roboto-Regular", 12)
    label_location:setTextColor(cc.c4b(41, 123, 0, 255)) -- #297b00
    local locx, locy = xmlToCocos(0, 178)
    label_location:setPosition(locx, locy)
    label_location:addTo(mainLayer)

    -- Battery level (yellow/orange)
    label_battery = cc.Label:createWithSystemFont("Battery: --%", "Roboto-Regular", 20)
    label_battery:setTextColor(cc.c4b(255, 165, 0, 255)) -- #ffa500 (orange)
    local batx, baty = xmlToCocos(0, -220)
    label_battery:setPosition(batx, baty)
    label_battery:addTo(mainLayer)

    -- === TUTORIAL LAYER ===
    self:createTutorialLayer()

    -- === TOUCH HANDLING ===
    self:setupTouchHandler()

    -- Start update loop
    lastFrameTime = socket.gettime()
    self:scheduleUpdate(handler(self, self.update))
end

function DefaultClock:createTutorialLayer()
    -- Semi-transparent background
    local bg = cc.DrawNode:create()
    bg:drawSolidRect(cc.p(0, 0), cc.p(display.width, display.height), cc.c4f(0, 0, 0, 0.85))
    bg:addTo(tutorialLayer)

    -- Tutorial instructions with 50px margin on left and right
    local margin = 50
    local centerX = display.cx
    local centerY = display.cy

    -- Top: Swipe down for quick settings
    local label_top = cc.Label:createWithSystemFont("Swipe down to access quick settings", "Roboto-Regular", 16)
    label_top:setTextColor(cc.c4b(255, 255, 0, 255))
    label_top:setPosition(centerX, display.height - 60)
    label_top:addTo(tutorialLayer)

    -- Bottom: Swipe up for widgets
    local label_bottom = cc.Label:createWithSystemFont("Swipe up to access widgets", "Roboto-Regular", 16)
    label_bottom:setTextColor(cc.c4b(255, 255, 0, 255))
    label_bottom:setPosition(centerX, 60)
    label_bottom:addTo(tutorialLayer)

    -- Left: Swipe right for notifications
    local label_left = cc.Label:createWithSystemFont("Swipe right\nto access\nnotifications", "Roboto-Regular", 14)
    label_left:setTextColor(cc.c4b(255, 255, 0, 255))
    label_left:setPosition(margin + 40, centerY)
    label_left:addTo(tutorialLayer)

    -- Right: Swipe left for apps
    local label_right = cc.Label:createWithSystemFont("Swipe left\nto access\ninstalled apps", "Roboto-Regular", 14)
    label_right:setTextColor(cc.c4b(255, 255, 0, 255))
    label_right:setPosition(display.width - margin - 40, centerY)
    label_right:addTo(tutorialLayer)

    -- Upper center: Double tap and long press instructions
    local label_upper_center = cc.Label:createWithSystemFont(
        "Double tap to open watch face settings dialog\n\n" ..
        "Long press to change watch face",
        "Roboto-Regular", 14)
    label_upper_center:setTextColor(cc.c4b(255, 255, 255, 255))
    label_upper_center:setPosition(centerX, centerY + 100)
    label_upper_center:addTo(tutorialLayer)

    -- Lower center: Pen icon and tap to go back
    local label_lower_center = cc.Label:createWithSystemFont(
        "Press the pen icon in the quick settings\nto go to launcher settings\n\n" ..
        "Tap anywhere to go back",
        "Roboto-Regular", 14)
    label_lower_center:setTextColor(cc.c4b(255, 255, 255, 255))
    label_lower_center:setPosition(centerX, centerY - 100)
    label_lower_center:addTo(tutorialLayer)
end

function DefaultClock:setupTouchHandler()
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:setSwallowTouches(true)

    listener:registerScriptHandler(function(touch, event)
        local location = touch:getLocation()

        if showTutorial then
            -- If tutorial is showing, any tap hides it
            return true
        else
            -- Check if tap is on the red help text
            local helpPos = cc.p(label_help_text:getPosition())
            local helpSize = label_help_text:getContentSize()
            local helpRect = cc.rect(
                helpPos.x - helpSize.width / 2,
                helpPos.y - helpSize.height / 2,
                helpSize.width,
                helpSize.height
            )

            if cc.rectContainsPoint(helpRect, location) then
                return true
            end
        end

        return false
    end, cc.Handler.EVENT_TOUCH_BEGAN)

    listener:registerScriptHandler(function(touch, event)
        if showTutorial then
            -- Hide tutorial
            showTutorial = false
            tutorialLayer:setVisible(false)
            mainLayer:setVisible(true)
        else
            -- Show tutorial
            showTutorial = true
            tutorialLayer:setVisible(true)
            mainLayer:setVisible(false)
        end
    end, cc.Handler.EVENT_TOUCH_ENDED)

    local eventDispatcher = self:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, self)
end

function DefaultClock:onExit()
    print("DefaultClock:onExit - cleaning up scene")

    -- Stop the update loop to prevent crashes during scene destruction
    pcall(function()
        self:unscheduleUpdate()
        print("DefaultClock update loop stopped cleanly")
    end)

    print("DefaultClock:onExit complete")
end

function DefaultClock:update()
    -- Update globals from WatchSkinUtils
    if updateSystemInfoVars then
        updateSystemInfoVars()
    end

    -- Calculate FPS
    frameCount = frameCount + 1
    local currentTime = socket.gettime()

    -- Call initWatch every 10 seconds to refresh data from Java
    if currentTime - lastInitWatchTime >= 10 then
        self:initWatch()
        lastInitWatchTime = currentTime
    end
    local elapsed = currentTime - lastFrameTime
    if elapsed >= 1.0 then
        currentFps = math.floor(frameCount / elapsed)
        frameCount = 0
        lastFrameTime = currentTime
    end

    -- Get current time
    local hour = tonumber(os.date("%H"))
    local hour12 = hour % 12
    if hour12 == 0 then hour12 = 12 end
    local minute = os.date("%M")
    local second = os.date("%S")
    local ampm = hour < 12 and "AM" or "PM"

    -- Update time labels
    label_time:setString(string.format("%02d:%s", hour12, minute))
    label_seconds:setString(second)
    label_ampm:setString(ampm)

    -- Update date
    local year = os.date("%Y")
    local month = os.date("%m")
    local day = os.date("%d")
    local dayName = os.date("%a")
    label_date:setString(string.format("%s/%s/%s - %s", year, month, day, dayName))

    -- Update milliseconds progress bar
    local a, milli = math.modf(socket.gettime())
    local progressWidth = milli * 300
    progress_bar:clear()
    progress_bar:drawSolidRect(cc.p(-150, -6), cc.p(-150 + progressWidth, 6), cc.c4f(0.16, 1, 0.06, 1)) -- #2aff0f

    -- Update FPS
    label_fps:setString(string.format("fps:%d", currentFps))

    -- Update system info (these globals come from WatchSkinUtils)
    label_android_version:setString(string.format("android version: %s", aosv or "?"))
    label_language:setString(string.format("language: %s", alangcode or "en"))
    label_ram_disk:setString(string.format("RAM: %d%% of %.0fGB, DISK: %d%% of %.0fGB",
        amup or 0, amt or 0, adsup or 0, adst or 0))
    label_ul_version:setString(string.format("Universal Launcher version: %s", ulver or "4.0"))

    -- Update device model
    local manufacturer = cc.exports.deviceManufacturer or ""
    local deviceName = cc.exports.deviceName or ""
    local deviceModel = cc.exports.deviceModel or ""
    label_device_model:setString(string.format("Model: %s %s %s", manufacturer, deviceName, deviceModel))

    -- Update weather
    local weatherTemp = wt or 0
    local weatherHigh = wth or 0
    local weatherLow = wtl or 0
    local weatherCondition = wct or "Unknown"
    if weatherCondition == "" then weatherCondition = "Unknown" end
    label_weather:setString(string.format("%d (%d/%d) - %s", weatherTemp, weatherHigh, weatherLow, weatherCondition))

    -- Update location
    local lat = alat or 0
    local lon = alon or 0
    local cityName = "Unknown"
    if cc.exports.location and cc.exports.location[1] then
        cityName = cc.exports.location[1]
    end
    if type(cityName) ~= "string" or cityName == "" then cityName = "Unknown" end
    label_location:setString(string.format("%.3f, %.3f - %s", lat, lon, cityName))

    -- Update battery
    local batteryLevel = batteryLevelInfo or 0
    local isCharging = batteryCharging == "true"
    local chargingIndicator = isCharging and " ⚡" or ""
    label_battery:setString(string.format("Battery: %d%%%s", batteryLevel, chargingIndicator))

    -- Change color based on battery level
    if batteryLevel <= 20 then
        label_battery:setTextColor(cc.c4b(255, 0, 0, 255)) -- Red for low battery
    elseif batteryLevel <= 50 then
        label_battery:setTextColor(cc.c4b(255, 165, 0, 255)) -- Orange for medium
    else
        label_battery:setTextColor(cc.c4b(0, 255, 0, 255)) -- Green for good
    end
end

return DefaultClock
