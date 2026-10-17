
cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("res/")

require "config"
require "cocos.init"

cc.exports.myApp = nil
cc.exports.batteryLevelInfo=50
cc.exports.batteryCharging="false"
cc.exports.displayscale = 1.0
cc.exports.fullscreen= 0
--cc.exports.aspect_ratio = 1.0
cc.exports.skin = "notset"
cc.exports.isReloading = false
cc.exports.pendingReload = false
cc.exports.heart=0
cc.exports.sbo=0
cc.exports.skinsteps=0
cc.exports.calorie=0
cc.exports.distance=0
cc.exports.targetSteps=10000
-- Heart rate shift register (10 values)
cc.exports.shr=0     -- Latest heart rate value
cc.exports.shr_1=0   -- One older
cc.exports.shr_2=0
cc.exports.shr_3=0
cc.exports.shr_4=0
cc.exports.shr_5=0
cc.exports.shr_6=0
cc.exports.shr_7=0
cc.exports.shr_8=0
cc.exports.shr_9=0   -- Oldest value
cc.exports.sthr=0    -- Highest heart rate tracked
cc.exports.distanceunit=0  -- 0 = kilometers, 1 = miles
cc.exports.unreadNotification=0
cc.exports.missedCalls=0

cc.exports.BTstate=0
cc.exports.Wifistate=0
cc.exports.GPSstate=0
cc.exports.Notifstate=0
cc.exports.gsmLevel=0
cc.exports.gsmType=0
cc.exports.wifiSignalStrength=0
cc.exports.wifiIpAddress="0.0.0.0"
cc.exports.totalStorageMB=0
cc.exports.usedStorageMB=0
cc.exports.totalRamMB=0
cc.exports.usedRamMB=0
cc.exports.batteryTemperature=0

-- Alarm data
cc.exports.alarmEnabled=0
cc.exports.alarmHour=""
cc.exports.alarmMinute=""

-- Device constants (set once at startup)
cc.exports.androidApiVersion=0
cc.exports.systemLanguage=""
cc.exports.deviceName=""
cc.exports.deviceModel=""
cc.exports.deviceManufacturer=""
cc.exports.watchName=""
cc.exports.osType=""
cc.exports.appVersionName=""

ucolor_index =0
ucolor = '777777'

cc.exports.__G__SETSYSTEMINFO__= function(msg)
    print("__G__SETSYSTEMINFO__", msg)
    local s = msg:split("`")
    -- Original fields
    cc.exports.Wifistate=tonumber(s[1]) or 0
    cc.exports.BTstate=tonumber(s[2]) or 0
    cc.exports.GPSstate=tonumber(s[3]) or 0
    cc.exports.Notifstate=tonumber(s[4]) or 0
    cc.exports.gsmLevel=tonumber(s[5]) or 0
    cc.exports.gsmType=tonumber(s[6]) or 0
    -- New fields
    cc.exports.wifiSignalStrength=tonumber(s[7]) or 0
    cc.exports.wifiIpAddress=s[8] or "0.0.0.0"
    cc.exports.totalStorageMB=tonumber(s[9]) or 0
    cc.exports.usedStorageMB=tonumber(s[10]) or 0
    cc.exports.totalRamMB=tonumber(s[11]) or 0
    cc.exports.usedRamMB=tonumber(s[12]) or 0
    cc.exports.batteryTemperature=tonumber(s[13]) or 0
    -- Alarm fields
    cc.exports.alarmEnabled=tonumber(s[14]) or 0
    cc.exports.alarmHour=s[15] or ""
    cc.exports.alarmMinute=s[16] or ""
end

cc.exports.__G__SETMEMORY__= function(msg)
--    print("__G__SETMEMORY__", msg)
    if (msg == nil or msg == "") then return end
    local status, error = pcall(loadstring(msg))
    if not status then
        print ("error in SETMEMORY:", error)
    end
end

cc.exports.__G__SETCONSTANT__= function(msg)
    print("__G__SETCONSTANT__", msg)
    local s = msg:split("`")
    cc.exports.androidApiVersion=tonumber(s[1]) or 0
    cc.exports.systemLanguage=s[2] or ""
    cc.exports.deviceName=s[3] or ""
    cc.exports.deviceModel=s[4] or ""
    cc.exports.deviceManufacturer=s[5] or ""
    cc.exports.watchName=s[6] or ""
    cc.exports.osType=s[7] or ""
    cc.exports.appVersionName=s[8] or ""
end

cc.exports.__G__RESETSKIN__= function(msg)
    cc.exports.skin = "notset"
    return cc.exports.__G__SETSKIN__(msg)
end

cc.exports.__G__SETSKIN__= function(msg)
    print("__G__SETSKIN__" , "new:", msg, "old:", cc.exports.skin)
    if (msg == cc.exports.skin) then return msg
    else
        print("__G__SETSKIN__ updating skin")
        cc.exports.skin = msg

        -- Debug: print routing decision
        print("ROUTING DEBUG: msg='" .. tostring(msg) .. "'")
        print("ROUTING DEBUG: contains .watch?", string.find(msg, "%.watch") ~= nil)
        print("ROUTING DEBUG: contains .face?", string.find(msg, "%.face") ~= nil)
        print("ROUTING DEBUG: contains zip?", string.find(msg, "zip") ~= nil)
        print("ROUTING DEBUG: is empty?", msg == "")

        if (string.find(msg, "%.watch") or string.find(msg, "%.face")) then
            print("ROUTING: Using WatchSkin for .watch/.face file")
            cc.exports.myApp:run("WatchSkin", msg)
        elseif msg=="" then
            print("ROUTING: Using DefaultClock (empty skin)")
            --if io.exists(cc.exports.SDpath .. "/ClockSkin/default.watch") then
            --    msg = "default.watch"
            --    cc.exports.skin = msg
            --    cc.exports.myApp:run("WatchSkin", msg)
            --else
                cc.exports.myApp:run("DefaultClock", msg)
            --end
        elseif (string.find(msg, "zip")) then
            print("ROUTING: Using ClockSkin for .zip file")
            cc.exports.myApp:run("ClockSkin", msg)
        else
            print("ROUTING: Using ClockSkin with folder (no extension)")
            cc.exports.myApp:run("ClockSkin", msg .. '/')
        end
    end

    return msg
end

cc.exports.__G__SETSCALE__= function(msg)
    --print("__G__SETSCALE__"..msg)
    --display.getRunningScene():setScale(msg)
    cc.exports.displayscale=tonumber(msg) or 1
end

cc.exports.__G__FORCERELOAD__= function(msg)
    print("__G__FORCERELOAD__ called - forcing watch face reload")

    local socket = require('socket')
    local currentTime = socket.gettime()

    -- Check if already reloading
    if cc.exports.isReloading then
        print("Reload already in progress, queuing this reload request")
        cc.exports.pendingReload = true
        return "queued"
    end

    -- CRITICAL: Debounce rapid reload requests (< 500ms apart)
    -- This prevents crashes from slider movements or rapid button presses
    if cc.exports.lastReloadTime and (currentTime - cc.exports.lastReloadTime) < 0.5 then
        print("Debouncing: Ignoring reload request too soon after previous reload (" ..
              string.format("%.3f", currentTime - cc.exports.lastReloadTime) .. "s)")
        return "debounced"
    end

    -- Mark that we're starting a reload
    cc.exports.isReloading = true
    cc.exports.pendingReload = false
    cc.exports.lastReloadTime = currentTime

    -- Save memory before reloading to persist displayscale and all variables
    local scene = display.getRunningScene()
    if not scene then
        -- Scene not ready yet (early call during GL initialization)
        cc.exports.isReloading = false
        print("WARN: No running scene yet, deferring reload")
        return "no_scene"
    end

    local children = scene:getChildren()
    if not children or #children == 0 then
        -- Scene exists but has no children yet
        cc.exports.isReloading = false
        print("WARN: Scene has no children yet, deferring reload")
        return "no_children"
    end

    for i = 1, #children do
        local child = children[i]
        if child.__cname == "WatchSkin" or child.__cname == "ClockSkin" then
            -- Call savememory to persist cc.exports.displayscale and all var_* variables
            if child.savememory then
                print("Saving Lua memory before reload")
                child:savememory()
            end

            -- Now call forceReload if available
            if child.forceReload then
                print("Calling forceReload() after memory save")
                child:forceReload()
                return "success"
            end
        end
    end

    -- If we get here, reload failed - clear the flag
    cc.exports.isReloading = false
    print("WatchSkin/ClockSkin not found, cannot force reload")
    return "failed"
end

cc.exports.__G__SETDISPLAY__= function(msg)
    --print("__G__SETDISPLAY__"..msg)
    cc.exports.skindisplay=tonumber(msg)

	local director = cc.Director:getInstance()
--    local glView = director:getOpenGLView()
--    if nil == glView then
--        glView = cc.GLViewImpl:create("Lua Empty Test")
--        director:setOpenGLView(glView)
--    end

    -- Handle new FPS values directly (0=unlimited, 1, 5, 15, 25, 40, 60)
    if cc.exports.skindisplay == 0 then
        -- Unlimited FPS (use 1/60 as practical max)
        director:setAnimationInterval(1/1000)
    elseif cc.exports.skindisplay == 1 then
        director:setAnimationInterval(1/1)
    elseif cc.exports.skindisplay == 5 then
        director:setAnimationInterval(1/5)
    elseif cc.exports.skindisplay == 15 then
        director:setAnimationInterval(1/15)
    elseif cc.exports.skindisplay == 25 then
        director:setAnimationInterval(1/25)
    elseif cc.exports.skindisplay == 40 then
        director:setAnimationInterval(1/40)
    elseif cc.exports.skindisplay == 60 then
        director:setAnimationInterval(1/60)
    else
        -- Fallback to 25 FPS for any unexpected value
        director:setAnimationInterval(1/25)
    end
end

cc.exports.__G__SETFULLSCREEN__= function(msg)
    --print("__G__SETFULLSCREEN__"..msg)
    local newfullscreen = tonumber(msg) or 0
    if cc.exports.fullscreen ~= newfullscreen then
        print("Fullscreen mode changed from " .. cc.exports.fullscreen .. " to " .. newfullscreen)

        -- Update fullscreen mode first so the scene recreation uses the new mode
        cc.exports.fullscreen=newfullscreen

        -- Update autoscale based on new fullscreen mode
        display.setAutoScale(CC_DESIGN_RESOLUTION)

        -- Check if already reloading
        if cc.exports.isReloading then
            print("Reload already in progress for fullscreen change, queuing this reload")
            cc.exports.pendingReload = true
            return
        end

        -- Mark that we're starting a reload
        cc.exports.isReloading = true
        cc.exports.pendingReload = false

        -- Save memory and force reload
        local scene = display.getRunningScene()
        local reloaded = false

        if scene then
            local children = scene:getChildren()
            for i = 1, #children do
                local child = children[i]
                if child.__cname == "WatchSkin" or child.__cname == "ClockSkin" then
                    -- Save memory first
                    if child.savememory then
                        print("Saving Lua memory before fullscreen reload")
                        child:savememory()
                    end

                    -- Then force reload
                    if child.forceReload then
                        print("Calling forceReload() for fullscreen mode change")
                        child:forceReload()
                        reloaded = true
                        break
                    end
                end
            end
        end

        -- Fallback to full scene reset if view not found or forceReload failed
        if not reloaded then
            cc.exports.isReloading = false  -- Clear flag on failure
            print("View forceReload not available, using __G__RESETSKIN__")
            cc.exports.__G__RESETSKIN__(cc.exports.skin)
        end
    end
    --  if (cc.exports.fullscreen == 2) then display.getRunningScene():move(0, round(512*(display.sizeInPixels.height/display.sizeInPixels.width)-512)+1) end
end

cc.exports.__G__SETSTEPS__= function(msg)
    --print("__G__SETSTEPS__"..msg)
    local s = msg:split("`")
    cc.exports.skinsteps=tonumber(s[1]) or 0
    cc.exports.calorie=tonumber(s[2]) or 0
    cc.exports.distance=tonumber(s[3]) or 0
    cc.exports.targetSteps=tonumber(s[4]) or 10000
    cc.exports.distanceunit=tonumber(s[5]) or 0  -- 0 = kilometers
end

cc.exports.__G__SETINFOS__= function(msg)
    print("__G__SETINFOS__"..msg)
    local s = msg:split("`")
    cc.exports.heart=tonumber(s[1]) or 0
    if s[2]=='24H' then
        cc.exports.is24=true
    else
        cc.exports.is24=false
    end
    cc.exports.skinday=s[3]:gsub("Ã»","u"):gsub("^%l", string.upper)   --:upper()
    cc.exports.skinmonth=s[4]:gsub("Ã»","u"):gsub("^%l", string.upper)  --:upper()
    cc.exports.batteryLevelInfo=s[5]+0
    cc.exports.batteryCharging=s[6]

    cc.exports.unreadNotification=tonumber(s[7]) or 0
    cc.exports.missedCalls=tonumber(s[8]) or 0

    if (cc.exports.batteryCharging == "true") then bc = "Charging" else bc = "Discharging" end
end

cc.exports.__G__SETHEARTRATE__= function(msg)
    print("__G__SETHEARTRATE__"..msg)

    -- Parse comma-separated values for shift register
    local values = {}
    for value in string.gmatch(msg, "([^,]+)") do
        table.insert(values, tonumber(value) or 0)
    end

    -- Set shift register values (shr = latest, shr_1 = one older, etc.)
    cc.exports.shr = values[1] or 0
    cc.exports.shr_1 = values[2] or 0
    cc.exports.shr_2 = values[3] or 0
    cc.exports.shr_3 = values[4] or 0
    cc.exports.shr_4 = values[5] or 0
    cc.exports.shr_5 = values[6] or 0
    cc.exports.shr_6 = values[7] or 0
    cc.exports.shr_7 = values[8] or 0
    cc.exports.shr_8 = values[9] or 0
    cc.exports.shr_9 = values[10] or 0

    -- Track highest heart rate
    if cc.exports.shr > cc.exports.sthr then
        cc.exports.sthr = cc.exports.shr
    end

    -- Keep heart variable for backward compatibility
    cc.exports.heart = cc.exports.shr
end

cc.exports.__G__SETBLOODOXYGEN__= function(msg)
    print("__G__SETBLOODOXYGEN__"..msg)
    cc.exports.sbo=tonumber(msg) or 0
end

function round(x)
    if x%2 ~= 0.5 then
        return math.floor(x+0.5)
    end
    return x-0.5
end
-- from 1 to 30
local prevMoonCalc = 0
local prevMoonDay = 0
function calculateMoonPhase(year, month, day)
    if (day == prevMoonDay) then
        return prevMoonCalc
    else
        prevMoonDay = day
    end
    local n = math.floor(12.37 * (year -1900 + ((1.0 * month - 0.5)/12.0)))
    local RAD = 3.14159265/180.0
    local t = n / 1236.85
    local t2 = t * t
    local as = 359.2242 + 29.105356 * n
    local am = 306.0253 + 385.816918 * n + 0.010730 * t2
    local xtra = 0.75933 + 1.53058868 * n + ((1.178e-4) - (1.55e-7) * t) * t2
    xtra = xtra + (0.1734 - 3.93e-4 * t) * math.sin(RAD * as) - 0.4068 * math.sin(RAD * am)
    local i=0
    if (xtra > 0.0) then i=math.floor(xtra) else i=math.ceil(xtra - 1.0) end
    local j1 = julday(year,month,day)
    local jd = (2415020 + 28 * n) + i
    prevMoonCalc = (j1-jd + 30)%30 + 1
    return prevMoonCalc
end
function julday(year, month, day)
    if (year < 0) then year = year+1 end
    local jy = year
    local jm = month +1
    if (month <= 2) then jy = jy-1	jm = jm + 12 end
    local jul = math.floor(365.25 *jy) + math.floor(30.6001 * jm) + day + 1720995
    if (day+31*(month+12*year) >= (15+31*(10+12*1582))) then
        local ja = math.floor(0.01 * jy)
        jul = jul + 2 - ja + math.floor(0.25 * ja)
    end
    return jul
end

function convertToF(temp)
    return math.modf((temp*9/5+32) *10) / 10 --math.modf((temp-32)*5/9 *10) / 10
end

function mapWeatherIcon(icon)
    -- Map Java internal icon codes to OpenWeatherMap-style icon codes
    -- Day codes: 0x00-0x7F, Night codes: 0x80-0xFF
    if icon == 0 or icon == 0x82 then
        return 1  -- Clear sky (01d/01n)
    elseif icon == 0x0B or icon == 0x8D then
        return 2  -- Few clouds (02d/02n)
    elseif icon == 0x0C or icon == 0x8E then
        return 3  -- Scattered clouds (03d/03n)
    elseif icon == 0x0D or icon == 0x8F then
        return 4  -- Overcast (04d/04n)
    elseif icon == 0x57 then
        return 10  -- Rain (10d/10n) - includes drizzle
    elseif icon == 0x2C then
        return 11  -- Thunderstorm (11d/11n)
    elseif icon == 0x37 then
        return 13  -- Snow (13d/13n)
    elseif icon == 0x26 or icon == 0x4B then
        return 50  -- Mist/Fog (50d/50n)
    elseif icon == 0x61 then
        return 13  -- Sleet (map to snow: 13d/13n)
    elseif icon == 0x42 then
        return 13  -- Blizzard (map to snow: 13d/13n)
    else
        -- Fallback: use old logic for unknown codes
        icon = math.fmod(icon, 10)
        if icon == 5 then icon = 9
        elseif icon == 6 then icon = 10
        elseif icon == 7 then icon = 11
        elseif icon == 8 then icon = 13
        elseif icon == 9 then icon = 50
        end
        return icon
    end
end

function convertDirectionToText(direction, precision)
    local dirText2 = { 'N', 'NNE',  'NE', 'ENE',   'E',  'ESE',   'SE',  'SSE',    'S',  'SSW',   'SW',  'WSW',    'W',  'WNW',   'NW',  'NNW',    'N' }
    local dirList2 = {   0, 11.25, 33.75, 56.25, 78.75, 101.25, 123.75, 146.25, 168.75, 191.25, 213.75, 236.25, 258.75, 281.25, 303.75, 326.25, 348.75, 360 }
    local dirText1 = { 'N', 'NE',  'E',  'SE',   'S',  'SW',   'W',  'NW',   'N' }
    local dirList1 = {   0, 22.5, 67.5, 112.5, 157.5, 202.5, 247.5, 292.5, 337.5, 360 }

    if (precision == 2) then
        for i = 1, 17 do
            if direction >= dirList2[i] and direction < dirList2[i+1] then return dirText2[i] end
        end
    else
        for i = 1, 9 do
            if direction >= dirList1[i] and direction < dirList1[i+1] then return dirText1[i] end
        end
    end
end

cc.exports.__G__SETWEATHER__= function(msg)
    print("__G__SETWEATHER__"..msg)
    local s = msg:split("`")
    if s[1] == "C" then cc.exports.isCelsius=true else cc.exports.isCelsius=false end
    cc.exports.temperature=tonumber(s[2])
    cc.exports.weatherIcon=tonumber(s[3])

    cc.exports.sunrise=s[4]
    cc.exports.sunset=s[5]

    wwd = tonumber(s[6]) or 0 -- winddir
    wwdb = convertDirectionToText(wwd, 1)
    wwdbb = convertDirectionToText(wwd, 2)
    wws = tonumber(s[7]) or 0  -- windspeed
    --print ("weather wind speed", wws, math.floor((wws*1.6)*100)/100)
    wh = tonumber(s[8]) or 0 -- humidity
    whp = string.format("%d%%%%", wh)
    wp = round( (tonumber(s[9]) or 0) ) --/ 29.92 )-- pressure

    alat = (tonumber(s[10]) or 0)
    alon = (tonumber(s[11]) or 0)
    alatd = alat .. '°'
    alond = alon .. '°'

    wcl = (tonumber(s[12]) or 0)  -- cloudiness (0-100%)
    wr = (tonumber(s[13]) or 0)   -- rain/precipitation (mm)
    wlu = (tonumber(s[14]) or 0)  -- weather last update (epoch timestamp)

    --print (wwd, wwdb,wwdbb,wws,wh,whp,wp, alatd, alond, wcl, wr, wlu)

    for i=1,6 do
        cc.exports.forecastLowTemp[i]    =tonumber(s[15 + (i-1)*4])
        cc.exports.forecastHighTemp[i]   =tonumber(s[16 + (i-1)*4])
        cc.exports.forecastText[i]       =s[17 + (i-1)*4]
    --print(15 + (i-1)*4, cc.exports.forecastLowTemp[i], cc.exports.forecastHighTemp[i], cc.exports.forecastText[i])
        cc.exports.forecastWeatherIcon[i]=tonumber(s[18 + (i-1)*4])
    end

    wt = cc.exports.temperature
    wth = cc.exports.forecastHighTemp[1] or 0
    wtl = cc.exports.forecastLowTemp[1] or 0
    if cc.exports.isCelsius then
        wm = "C"
        wtd = wt .. "°C"
        wthd = wth .. "°C"
        wtld = wtl .. "°C"
    else
        cc.exports.temperature=convertToF(cc.exports.temperature)
        wt   = convertToF(wt)
        wth = convertToF(wth)
        wtl = convertToF(wtl)
        for i=1,6 do
        --    print(i,cc.exports.forecastLowTemp[i],convertToF(cc.exports.forecastLowTemp[i]))
            cc.exports.forecastLowTemp[i]    =convertToF(cc.exports.forecastLowTemp[i])
            cc.exports.forecastHighTemp[i]   =convertToF(cc.exports.forecastHighTemp[i])
        end
        wtd = wt .. "°F"
        wthd = wth .. "°F"
        wtld = wtl .. "°F"
        wm   = "F"
    end
    wci = string.format("%02d", mapWeatherIcon(cc.exports.weatherIcon)) .. 'd'
    --print ("wci",wci)
    wct = cc.exports.forecastText[1]
    wsr = cc.exports.sunrise
    wss = cc.exports.sunset
    local h,m=wsr:match("(%d+):(%d+)")
    wsrp = (h+m/60)/24
    h,m=wss:match("(%d+):(%d+)")
    wssp = (h+m/60)/24

    wf0dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[1])) .. 'd'
    wf1dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[2])) .. 'd'
    wf2dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[3])) .. 'd'
    wf3dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[4])) .. 'd'
    wf4dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[5])) .. 'd'
    wf5dci=string.format("%02d", mapWeatherIcon(cc.exports.forecastWeatherIcon[6])) .. 'd'

    wf0dth = cc.exports.forecastHighTemp[1] or 0
    wf0dtl = cc.exports.forecastLowTemp[1] or 0
    wf0dt = (wf0dth+wf0dtl)/2
    wf0dct = cc.exports.forecastText[1]

    wf1dth = cc.exports.forecastHighTemp[2] or 0
    wf1dtl = cc.exports.forecastLowTemp[2] or 0
    wf1dt = (wf1dth+wf1dtl)/2
    wf1dct = cc.exports.forecastText[2]
    --print(wf1dth, wf1dtl, wf1dt)

    wf2dth = cc.exports.forecastHighTemp[3] or 0
    wf2dtl = cc.exports.forecastLowTemp[3] or 0
    wf2dt = (wf2dth+wf2dtl)/2
    wf2dct = cc.exports.forecastText[3]

    wf3dth = cc.exports.forecastHighTemp[4] or 0
    wf3dtl = cc.exports.forecastLowTemp[4] or 0
    wf3dt = (wf3dth+wf3dtl)/2
    wf3dct = cc.exports.forecastText[4]

    wf4dth = cc.exports.forecastHighTemp[5] or 0
    wf4dtl = cc.exports.forecastLowTemp[5] or 0
    wf4dt = (wf4dth+wf4dtl)/2
    wf4dct = cc.exports.forecastText[5]

    wf5dth = cc.exports.forecastHighTemp[6] or 0
    wf5dtl = cc.exports.forecastLowTemp[6] or 0
    wf5dt = (wf5dth+wf5dtl)/2
    wf5dct = cc.exports.forecastText[6]

    return msg
end

cc.exports.__G__SETLOCATION__= function(msg)
    --print("__G__SETLOCATION__"..msg)
    local s = msg:split("`")
    for i=1,4 do
        cc.exports.location[i]       =s[(i-1)*2+1]
        cc.exports.locationOffset[i] =tonumber(s[(i-1)*2+2] or 0)
        --print(i, cc.exports.location[i], cc.exports.locationOffset[i])
    end

    return msg
end

cc.exports.skindouble=1
cc.exports.skinlong=1

cc.exports.__G__SETSELECT__= function(msg)
    --print("__G__SETSELECT__"..msg)
    local s = msg:split("`")
    cc.exports.skindouble=tonumber(s[1])
    cc.exports.skinlong=tonumber(s[2])

    return msg
end

cc.exports.is24=false
cc.exports.skindisplay=1
cc.exports.skinmonth=os.date("%b")
cc.exports.skinday=os.date("%a")
cc.exports.skinsteps=0
cc.exports.temperature=25
cc.exports.moonphase=5
cc.exports.weatherIcon=1
cc.exports.sunrise="06:00"
cc.exports.sunset="18:00"

cc.exports.isCelsius=true
cc.exports.forecastLowTemp={0,0,0,0,0,0}
cc.exports.forecastHighTemp={0,0,0,0,0,0}
cc.exports.forecastText={"","","","","",""}
cc.exports.forecastWeatherIcon={0,0,0,0,0,0}
cc.exports.location={"","","",""}
cc.exports.locationOffset={0,0,0,0}
cc.exports.__G__SETWEATHER__("C`0`0`06:45`18:20`0`0`0`0`45.00`45.00`0`0`0`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1")
cc.exports.__G__SETLOCATION__("Paris,FR`0`London`-1`New York`-6`Moscow`6")

function string:split(sep)
    local sep, fields = sep or ":", {}
    local pattern = string.format("([^%s]+)", sep)
    self:gsub(pattern, function(c) fields[#fields + 1] = c end)
    return fields
end

-- Toast notification helper function
-- Usage: wm_toast("Hello World") for short toast
--        wm_toast("Hello World", 1) for long toast
function wm_toast(message, duration)
    local luaj = require "cocos.cocos2d.luaj"
    if not luaj then
        print("wm_toast error: luaj module not available")
        return false
    end

    local className = "com/ailife/ClockSkinCoco/ToastHelper"
    local msg = tostring(message or "")

    if msg == "" then
        print("wm_toast error: empty message")
        return false
    end

    local ok, ret
    if duration == nil then
        -- Call single parameter version (defaults to Toast.LENGTH_SHORT = 0)
        local sig = "(Ljava/lang/String;)V"
        ok, ret = luaj.callStaticMethod(className, "showToast", {msg}, sig)
    else
        -- Call two parameter version with explicit duration
        -- 0 = Toast.LENGTH_SHORT, 1 = Toast.LENGTH_LONG
        local sig = "(Ljava/lang/String;I)V"
        local dur = tonumber(duration) or 0
        ok, ret = luaj.callStaticMethod(className, "showToast", {msg, dur}, sig)
    end

    if not ok then
        print("wm_toast error:", ret)
        return false
    end

    return true
end

-- Set alarm helper function
-- Usage: wm_set_alarm("07:30") to set alarm at 7:30 AM
--        wm_set_alarm("14:45") to set alarm at 2:45 PM
function wm_set_alarm(time)
    local luaj = require "cocos.cocos2d.luaj"
    if not luaj then
        print("wm_set_alarm error: luaj module not available")
        return false
    end

    if not time or type(time) ~= "string" then
        print("wm_set_alarm error: time must be a string (e.g., '07:30')")
        return false
    end

    -- Validate time format HH:MM
    if not time:match("^%d%d:%d%d$") then
        print("wm_set_alarm error: invalid time format. Use HH:MM (e.g., '07:30')")
        return false
    end

    local action = "set_alarm_" .. time
    local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
    local sig = "(Ljava/lang/String;)V"
    local ok, ret = luaj.callStaticMethod(className, "launchAction", {action}, sig)

    if not ok then
        print("wm_set_alarm error:", ret)
        return false
    end

    print("Alarm set for:", time)
    return true
end

local function main()
    cc.exports.myApp = require("app.MyApp"):create()
    local luaj = require "cocos.cocos2d.luaj"
    local sigs = "()Ljava/lang/String;"
    local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"

    local ok,ret  = luaj.callStaticMethod(className,"getFullscreen",nil,sigs)
    if ok then
        cc.exports.fullscreen=tonumber(ret) or 0
        display.setAutoScale(CC_DESIGN_RESOLUTION)
    end
    local ok,ret  = luaj.callStaticMethod(className,"getSkin",nil,sigs)
    if not ok then
        print("luaj error:", ret)
        cc.exports.__G__SETSKIN__("")
    else
        print("The Skin is:", ret)
        cc.exports.__G__SETSKIN__(ret)
    end

    --cc.exports.myApp:run("WatchSkin","cat--mouse.watch")
    --cc.exports.myApp:run("DefaultClock")
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
