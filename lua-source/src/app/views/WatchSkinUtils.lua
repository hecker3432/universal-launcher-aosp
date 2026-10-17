--
-- Created by IntelliJ IDEA.
-- User: ecrochem
-- Date: 22/02/2017
-- Time: 15:19
-- To change this template use File | Settings | File Templates.
--

-- Global TAGs declaration / initialization
tweens = {}
abright = true

-- Weather shorthand variables
wp=0
wh=0
wm="C"
whp="0%"
wws=0
wwd=0
wwdb="NE"
wwdbb="NNE"
wcl=0
wr=0
wlu=0
wt=0
wtd="0°C"
wth=0
wthd="0°C"
wtl=0
wtld="0°C"
wci="01d"
wct=""
wsr="06:00"
wss="18:00"
wsrp=0.25
wssp=0.75

-- Location variables
alat=0
alon=0
alatd="0°"
alond="0°"
alatdd=""
alondd=""
aalt=0

-- Forecast shorthand variables
wf0dci="01d"
wf0dth=0
wf0dtl=0
wf0dt=0
wf0dct=""
wf1dci="01d"
wf1dth=0
wf1dtl=0
wf1dt=0
wf1dct=""
wf2dci="01d"
wf2dth=0
wf2dtl=0
wf2dt=0
wf2dct=""
wf3dci="01d"
wf3dth=0
wf3dtl=0
wf3dt=0
wf3dct=""
wf4dci="01d"
wf4dth=0
wf4dtl=0
wf4dt=0
wf4dct=""
wf5dci="01d"
wf5dth=0
wf5dtl=0
wf5dt=0
wf5dct=""

-- Calendar event variables (10 events with comprehensive data)
cex=false  -- Calendar events exist

c1ex=false  -- Event 1 exists
c1i=0       -- Event ID
c1t=""      -- Title
c1b=""      -- Begin time (HH:MM)
c1e=""      -- End time (HH:MM)
c1bd=""     -- Begin date (YYYY-MM-DD)
c1ed=""     -- End date (YYYY-MM-DD)
c1ad=false  -- All day event
c1l=""      -- Location
c1c="ff0000" -- Color (hex RRGGBB)
c1cal=""    -- Calendar name
c1br=0      -- Begin rotation (0-360)
c1bp=0      -- Begin percent (0-100)
c1er=0      -- End rotation (0-360)
c1ep=0      -- End percent (0-100)

c2ex=false
c2i=0
c2t=""
c2b=""
c2e=""
c2bd=""
c2ed=""
c2ad=false
c2l=""
c2c="ff0000"
c2cal=""
c2br=0
c2bp=0
c2er=0
c2ep=0

c3ex=false
c3i=0
c3t=""
c3b=""
c3e=""
c3bd=""
c3ed=""
c3ad=false
c3l=""
c3c="ff0000"
c3cal=""
c3br=0
c3bp=0
c3er=0
c3ep=0

drs = 0
drm = 0
drh = 0
drh0 = 0
drss = 0
drh24 = 0

dm = 0
br = 0 -- batteryRotate * 2
pbr = 0 -- batteryRotate * 2
bc = 'Discharging'
pbc = 'Discharging'
dd = 0
ddz = string.format("%02d", 1)
ddy = os.date("%j") -- Calendar.DAY_OF_YEAR
dz=os.date("%Z") or 'CET'
--print("timezone", dz)
ddw = os.date("%a") --'" + ddw + "'"
ddw1 = string.sub(ddw, 1, 1) --'" + ddw2 + "'"
ddw2 = string.sub(ddw, 1, 2) --'" + ddw2 + "'"
ddww = os.date("%A") --'" + ddww + "'"
ddw0 = os.date("%w") --'" + t_week+1 + "'"

-- Future days (1-7 days ahead) - initialized with placeholder values
ddww_1 = "Monday"
ddw_1 = "Mon"
ddw2_1 = "Mo"
ddw1_1 = "M"

ddww_2 = "Tuesday"
ddw_2 = "Tue"
ddw2_2 = "Tu"
ddw1_2 = "T"

ddww_3 = "Wednesday"
ddw_3 = "Wed"
ddw2_3 = "We"
ddw1_3 = "W"

ddww_4 = "Thursday"
ddw_4 = "Thu"
ddw2_4 = "Th"
ddw1_4 = "T"

ddww_5 = "Friday"
ddw_5 = "Fri"
ddw2_5 = "Fr"
ddw1_5 = "F"

ddww_6 = "Saturday"
ddw_6 = "Sat"
ddw2_6 = "Sa"
ddw1_6 = "S"

ddww_7 = "Sunday"
ddw_7 = "Sun"
ddw2_7 = "Su"
ddw1_7 = "S"

dn = 0
dnn = 0
dnnn = os.date("%b")
dnnnn = os.date("%B")

dy = string.sub("2000", 2, 3)
dyy = 0

dh = 0
dh11 = 0
dh24 = 0
dh23 = 0
dhz = string.format("@@%02d", dh)
dh11z = string.format("@@%02d", dh11)
dh23z = string.format("@@%02d", dh23)
dh24z = string.format("@@%02d", dh24)

dm = 0
dmz = string.format("@@%02d", dm)

dht = '' --'" + numberToString(t_hour12) + "'"
dht24 = '' --'" + numberToString(t_hour) + "'"
dmat = '' --'" + numberToString(t_minute) + "'"
dmtt = '' --'" + numberToString(t_minute/10) + "'"
dmot = '' --'" + numberToString(t_minute%10) + "'"
dmo = '' --'" + numberToString(t_minute%10) + "'"
dhutc12 = 0
dhutc12z = 0
dhutc24 = 0
dhutc24z = 0
dutcoff=0

tz1t=0

bl = 0
pbl = 0

dss = 0
dssz = string.format("@@%03d", 0)
ds = 0
dsz = string.format("@@%02d", 0)
dsps = 0

dtp = 0

wmp = 0 --phase

swh = 0
swm = 0
sws = 0
swsst = 0
swss = string.format("@@%02d", swsst / 10)
swsss = string.format("@@%03d", swsst)
swr = false
swrm = 0
swrs = 0
swrss = 0

sgx = 0 -- xyz[0]
sgy = 0 -- xyz[1]
sgz = 0 -- xyz[2]
sax = 0 -- xyz[0]
say = 0 -- xyz[1]
saz = 0 -- xyz[2]
ssc = cc.exports.skinsteps -- stepCount
shr = 0 -- lastHeartRate
sthr = 0 -- Highest heart rate
shrp = 0 -- Heart rate percentage (shr/sthr)
scr = 0
sct = 0

-- Alarm data (from cc.exports)
aalo = 0  -- alarm on (0 or 1 if alarm within 24 hours)
aalh23z = ""  -- alarm hour (24-hour format, empty if no alarm)
aalmz = ""  -- alarm minute (empty if no alarm)
sctd = 0
scb = "SW"
scbb = "SW"
sctdb = "0° SW"
sctdbb = "0° SSW"

da = 'AM' --" + (isAM ? "AM" : "PM") + "'"
dw = 0 -- cal.get(Calendar.WEEK_OF_YEAR)
pblp = 0 --'" + batteryLevel + "%%'"
blp = 0 --'" + batteryLevel + "%%'"
whp = 0
wl = 0
wt = 0
--wws = "000"
--wsrp = 0
--wssp = 0
wtd = 0
wwdbb = 0
--wsr = 0
--wss = 0
wf0dth = 0
wf1dth = 0
wf2dth = 0
wf3dth = 0
wf4dth = 0
wf5dth = 0
wf0dtl = 0
wf1dtl = 0
wf2dtl = 0
wf3dtl = 0
wf4dtl = 0
wf5dtl = 0
wf0dt = 0
wf1dt = 0
wf2dt = 0
wf3dt = 0
wf4dt = 0
wf5dt = 0
wth = 0
wtl = 0

pbtc = 0
pbtf = 0
pbtcd = 0
pbtfd = 0

-- Battery temperature (from cc.exports)
btc = 0  -- Battery temperature Celsius
btf = 0  -- Battery temperature Fahrenheit
btcd = "0°C"  -- Battery temperature Celsius with degree symbol
btfd = "0°F"  -- Battery temperature Fahrenheit with degree symbol

-- Memory stats (from cc.exports)
amu = 0    -- used memory (GB)
amuf = "0GB"  -- used memory formatted
amup = 0   -- used memory percentage
amf = 0    -- free memory (GB)
amff = "0GB"  -- free memory formatted
amfp = 0   -- free memory percentage
amt = 0    -- total memory (GB)
amtf = "0GB"  -- total memory formatted

-- Disk/Storage stats (from cc.exports)
adu = 0    -- used disk space (GB)
aduf = "0GB"  -- used disk space formatted
adup = 0   -- used disk space percentage
adf = 0    -- free disk space (GB)
adff = "0GB"  -- free disk space formatted
adfp = 0   -- free disk space percentage
adt = 0    -- total disk space (GB)
adtf = "0GB"  -- total disk space formatted

-- Network status (from cc.exports)
ncc = false  -- cellular connected
pws = 0    -- wifi signal strength (0-1)
pwc = false  -- wifi connected
nc = false   -- network connected (cellular or wifi)
nwip = "0.0.0.0"  -- wifi IP address
ncs = 0    -- cellular signal strength (0-1)
nbc = false  -- bluetooth connected
ngc = false  -- GPS enabled
cnc = 0    -- notification count

-- Events 4-10 (defined earlier with c1-c3)
c4ex=false
c4i=0
c4t=""
c4b=""
c4e=""
c4bd=""
c4ed=""
c4ad=false
c4l=""
c4c="ff0000"
c4cal=""
c4br=0
c4bp=0
c4er=0
c4ep=0

c5ex=false
c5i=0
c5t=""
c5b=""
c5e=""
c5bd=""
c5ed=""
c5ad=false
c5l=""
c5c="ff0000"
c5cal=""
c5br=0
c5bp=0
c5er=0
c5ep=0

c6ex=false
c6i=0
c6t=""
c6b=""
c6e=""
c6bd=""
c6ed=""
c6ad=false
c6l=""
c6c="ff0000"
c6cal=""
c6br=0
c6bp=0
c6er=0
c6ep=0

c7ex=false
c7i=0
c7t=""
c7b=""
c7e=""
c7bd=""
c7ed=""
c7ad=false
c7l=""
c7c="ff0000"
c7cal=""
c7br=0
c7bp=0
c7er=0
c7ep=0

c8ex=false
c8i=0
c8t=""
c8b=""
c8e=""
c8bd=""
c8ed=""
c8ad=false
c8l=""
c8c="ff0000"
c8cal=""
c8br=0
c8bp=0
c8er=0
c8ep=0

c9ex=false
c9i=0
c9t=""
c9b=""
c9e=""
c9bd=""
c9ed=""
c9ad=false
c9l=""
c9c="ff0000"
c9cal=""
c9br=0
c9bp=0
c9er=0
c9ep=0

c10ex=false
c10i=0
c10t=""
c10b=""
c10e=""
c10bd=""
c10ed=""
c10ad=false
c10l=""
c10c="ff0000"
c10cal=""
c10br=0
c10bp=0
c10er=0
c10ep=0

-- Use device constants from cc.exports (set by SystemInfoProvider)
aname = cc.exports.deviceName or "WatchCoco"
amodel = cc.exports.deviceModel or ""
aman = cc.exports.deviceManufacturer or "Ricktop"
awname = cc.exports.watchName or "Universal Launcher"
aos = cc.exports.osType or "Full Android"
aosv = cc.exports.androidApiVersion or 0
alangcode = cc.exports.systemLanguage or "en"
ulver = cc.exports.appVersionName or "4.0"
around = true
atyre = false
abss  = 0--	Milliseconds since bright (-1 for dim)	150
alat = 0 --	Current latitude	40.7127
alon = 0 --	Current longitude	74.0059
alatd = 0 -- Current latitude (degrees)	40.7127°
alond = 0 -- Current longitude (degrees)	74.0059°
alatdd = 0 -- Current latitude (degrees + direction)	40.7127°N
alondd = 0

scal = 0
sdst = 0
stsc = 0

-- Target values and percentages
sdstu = "KM"  -- Distance unit
stdst = 10    -- Target distance
stcal = 400   -- Target calories
sscp = 0      -- Step count percentage
sdstp = 0     -- Distance percentage
scalp = 0     -- Calorie percentage

ucolor = '777777' -- nor supported yet
ucolor_default = ucolor
ucolor_map = {"5987b2","20b2aa","a10d09","0bf9ab","ffa419","e6f0fa","f0e6fa","faecf3","f6f5f0","e6effa","e6e6fa","ffcccc","306a9f","fef65b","ffcccc","e6e6fa","a1090d","a10900","12e6a0","660066","cce5cc","004c64","20b2aa","40e0d0","7fffd4","fff8e7","f04b23","d8b2d8","008aa0","3b444b","ac8141","1e90ff","838da6","8b0000","ffcccc","e5f2e5","cce5cc","fbe6fb","ffffcc","000000","ffffff"}
ucolor_index=0

old_month=100
old_monthdays=0

-- Function to convert Android API level to version name
function apiLevelToVersion(apiLevel)
    local versionMap = {
        [35] = "15", [34] = "14", [33] = "13", [32] = "12L", [31] = "12",
        [30] = "11", [29] = "10", [28] = "9", [27] = "8.1", [26] = "8.0",
        [25] = "7.1", [24] = "7.0", [23] = "6.0", [22] = "5.1", [21] = "5.0",
        [19] = "4.4", [18] = "4.3", [17] = "4.2", [16] = "4.1", [15] = "4.0.3",
        [14] = "4.0", [13] = "3.2", [12] = "3.1", [11] = "3.0", [10] = "2.3.3"
    }
    return versionMap[apiLevel] or tostring(apiLevel)
end

-- Function to update system info variables from cc.exports
function updateSystemInfoVars()
    -- Device constants
    aname = cc.exports.deviceName or aname
    amodel = cc.exports.deviceModel or amodel
    aman = cc.exports.deviceManufacturer or aman
    awname = cc.exports.watchName or awname
    aos = cc.exports.osType or aos
    aosv = apiLevelToVersion(cc.exports.androidApiVersion or 0)
    alangcode = cc.exports.systemLanguage or alangcode
    ulver = cc.exports.appVersionName or ulver

    -- Battery temperature (in tenths of degrees C from Java, so divide by 10)
    local tempC = cc.exports.batteryTemperature or 0
    btc = tempC
    btf = tempC * 9.0 / 5.0 + 32
    btcd = string.format("%d°C", math.floor(btc))
    btfd = string.format("%d°F", math.floor(btf))

    -- Memory stats (convert MB to GB)
    local totalRamGB = (cc.exports.totalRamMB or 0) / 1024
    local usedRamGB = (cc.exports.usedRamMB or 0) / 1024
    local freeRamGB = totalRamGB - usedRamGB

    amt = totalRamGB
    amu = usedRamGB
    amf = freeRamGB
    amtf = string.format("%.1fGB", totalRamGB)
    amuf = string.format("%.1fGB", usedRamGB)
    amff = string.format("%.1fGB", freeRamGB)
    amup = totalRamGB > 0 and math.floor((usedRamGB / totalRamGB) * 100) or 0
    amfp = 100 - amup

    -- Storage stats (convert MB to GB)
    local totalStorageGB = (cc.exports.totalStorageMB or 0) / 1024.0
    local usedStorageGB = (cc.exports.usedStorageMB or 0) / 1024.0
    local freeStorageGB = totalStorageGB - usedStorageGB

    adst = totalStorageGB
    adsu = usedStorageGB
    adsf = freeStorageGB
    adstf = string.format("%.1fGB", adst)
    adsuf = string.format("%.1fGB", adsu)
    adsff = string.format("%.1fGB", adsf)
    adsup = adst > 0 and math.floor((adsu / adst) * 100) or 0
    adsfp = 100 - adsup

    -- Network status
    pwc = (cc.exports.Wifistate or 0) == 1
    nbc = (cc.exports.BTstate or 0) == 1
    ngc = (cc.exports.GPSstate or 0) == 1
    ncc = (cc.exports.gsmType or 0) > 0

    -- Signal strengths (normalize to 0-1 range)
    pws = (cc.exports.wifiSignalStrength or 0) / 100
    ncs = (cc.exports.gsmLevel or 0) / 3

    -- Network connected (cellular or wifi)
    nc = ncc or pwc

    -- WiFi IP
    nwip = cc.exports.wifiIpAddress or "0.0.0.0"

    -- Notification count
    cnc = cc.exports.unreadNotification or 0

    -- GPS location with direction
    -- Convert latitude and longitude to include direction (N/S/E/W)
    if alat and alatd and type(alatd) == "string" and alatd ~= "0°" then
        -- Extract numeric value from alatd if it's a string with ° symbol
        local lat_val = tonumber(alatd:match("[-]?%d+%.?%d*")) or alat
        if lat_val >= 0 then
            alatdd = string.format("%.4f°N", lat_val)
        else
            alatdd = string.format("%.4f°S", math.abs(lat_val))
        end
    elseif alat then
        if alat >= 0 then
            alatdd = string.format("%.4f°N", alat)
        else
            alatdd = string.format("%.4f°S", math.abs(alat))
        end
    end

    if alon and alond and type(alond) == "string" and alond ~= "0°" then
        -- Extract numeric value from alond if it's a string with ° symbol
        local lon_val = tonumber(alond:match("[-]?%d+%.?%d*")) or alon
        if lon_val >= 0 then
            alondd = string.format("%.4f°E", lon_val)
        else
            alondd = string.format("%.4f°W", math.abs(lon_val))
        end
    elseif alon then
        if alon >= 0 then
            alondd = string.format("%.4f°E", alon)
        else
            alondd = string.format("%.4f°W", math.abs(alon))
        end
    end

    -- Alarm data
    aalo = cc.exports.alarmEnabled or 0
    -- Format with leading zeros: 05:00 instead of 5:0
    if cc.exports.alarmHour ~= "" and cc.exports.alarmMinute ~= "" then
        aalh23z = string.format("%02d", tonumber(cc.exports.alarmHour) or 0)
        aalmz = string.format("%02d", tonumber(cc.exports.alarmMinute) or 0)
    else
        aalh23z = ""
        aalmz = ""
    end
end

function get_days_in_month(month, year)
    if (month == old_month) then return old_monthdays end
    local days_in_month = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
    local d = days_in_month[month]

    -- check for leap year
    if (month == 2) then
        if (math.mod(year,4) == 0) then
            if (math.mod(year,100) == 0)then
                if (math.mod(year,400) == 0) then
                    d = 29
                end
            else
                d = 29
            end
        end
    end
    old_monthdays=d
    old_month=month
    return d
end

function bitand(a, b)
    local result = 0
    local bitval = 1
    while a > 0 and b > 0 do
        if a % 2 == 1 and b % 2 == 1 then -- test the rightmost bits
            result = result + bitval      -- set the current bit
        end
        bitval = bitval * 2 -- shift left
        a = math.floor(a/2) -- shift right
        b = math.floor(b/2)
    end
    return result
end
local function nand(x,y,z)
    z=z or 2^16
    if z<2 then
        return 1-x*y
    else
        return nand((x-x%z)/z,(y-y%z)/z,math.sqrt(z))*z+nand(x%z,y%z,math.sqrt(z))
    end
end
math["not"]=function(y,z)
    return nand(nand(0,0,z),y,z)
end
math["and"]=function(x,y,z)
    return nand(math["not"](0,z),nand(x,y,z),z)
end
math["or"]=function(x,y,z)
    return nand(math["not"](x,z),math["not"](y,z),z)
end
math["xor"]=function(x,y,z)
    return math["and"](nand(x,y,z),math["or"](x,y,z),z)
end
function convertJSON(text)
    text=text
    :gsub('%[{','<Watch>\n{')
    :gsub('}%]','}\n</Watch>')
    :gsub('\\/','/')

    :gsub('"hash"','"path"')
    :gsub('"r"','"rotation"')
    :gsub('"font_hash"','"font"')
    :gsub('"size"','"text_size"')

    :gsub('.ttf"','"')
    :gsub('"low_power_color"%s*:%s*"?([^,}"]+)"?',function (v)
        local col= string.format('%06X', math["and"](tonumber(v), 0xffffff))
        return '"color_dim":"'..col..'"'
    end)
    :gsub('"color"%s*:%s*"?([^,}"]+)"?',function (v)
        local col= string.format('%06X', math["and"](tonumber(v), 0xffffff))
        return '"color":"'..col..'"'
    end)
    :gsub('"alignment"%s*:%s*"?([^,}"]+)"?',function (val)
        if (val == '0') then return '"alignment":"tl"'
        elseif (val == '1') then return '"alignment":"bc"'
        elseif (val == '4') then return '"alignment":"cc"'
        end
    end)
    :gsub('"x"%s*:%s*"?([^,}"]+)"?',function (v)
        return string.format('"x":"%s"',"(tonumber("..v..")-160)*512/320")
    end)
    :gsub('"y"%s*:%s*"?([^,}"]+)"?',function (v)
        return string.format('"y":"%s"',"(tonumber("..v..")-160)*512/320")
    end)
    :gsub('"width"%s*:%s*"?([^,}"]+)"?',function (v)
        return string.format('"width":"%s"',"(tonumber("..v.."))*512/320")
    end)
    :gsub('"height"%s*:%s*"?([^,}"]+)"?',function (v)
        return string.format('"height":"%s"',"(tonumber("..v.."))*512/320")
    end)
    :gsub('"opacity"%s*:%s*"?([^,}"]+)"?',function (v)
        if (tonumber(v) > 100) then v = 100 end
        return string.format('"opacity":"%s"',v)
    end)
    :gsub('"low_power":false','"display":b')
    :gsub('"low_power":true','"display":bd')
    :gsub('"([^:]+)"%s*:%s*"?([^,}"]+)"?,?',
        function (k,v)
            return string.format('%s="%s" ',k,v)
        end)
    :gsub('{','<Layer '):gsub('},?','/>\n')

    :gsub('#WCT#','{wt}')
    :gsub('#WM#','{wm}')
    :gsub('#WTH#','{wth}')
    :gsub('#WTL#','{wtl}')
    :gsub('#Dh#','{dh}')
    :gsub('#DmZ#','{dmz}')
    :gsub('#DE#','{ddw}')
    :gsub('#DMMM#','{dnnn}')
    :gsub('#Dd#','{dd}')
    :gsub('#Dyyyy#','{dyy}')
    :gsub('#DWFK#','{drh}')
    :gsub('#DWFKS#','{drh}')
    :gsub('#DWFM#','{drm}')
    :gsub('#DWFS#','{drs}')
    :gsub('#DWFSS#','{drss}')
    :gsub('#BLP#','{blp}')
    return text
end



function listMethods(object)
  for key,value in pairs(getmetatable(object)) do
        print("Method:", key, value)
    end
end

-- decoding
local b='ABCgEFGHIJK4MNOPQRSTUVWXYZabcdefDhijklmnopqrstuvwxyz0123L56789+/'
function dec64(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data
    :gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end)
    :gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

function shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function RGBtoHSV(hex)
    local r, g, b
    r=tonumber("0x" .. hex:sub(1, 2))
    g=tonumber("0x" .. hex:sub(3, 4))
    b=tonumber("0x" .. hex:sub(5, 6))
    local h, s, v
    local min, max, delta
    min = math.min(math.min(r, g), b)
    max = math.max(math.max(r, g), b)

    -- V
    v = max / 2.55
    delta = max - min

    -- S
    if (max ~= 0 ) then
        s = 100 * delta / max
    else
        s = 0
        h = -1
        return {h,s,v}
    end

    -- H
    if ( r == max ) then
        h = ( g - b ) / delta -- between yellow & magenta
    elseif ( g == max ) then
        h = 2 + ( b - r ) / delta  -- // between cyan & yellow
    else
        h = 4 + ( r - g ) / delta  -- // between magenta & cyan
    end
    h = h*60  --     degrees

    if ( h < 0 ) then
        h = h + 360
    end
    return {h,s,v}
end

function numberToString(value)
    local text = ''

    local n=tonumber(value) or 0
    if n == 0 then text = text .. "zero"
    elseif n == 1 then text = text .. "one"
    elseif n == 2 then text = text .. "two"
    elseif n == 3 then text = text .. "three"
    elseif n == 4 then text = text .. "four"
    elseif n == 5 then text = text .. "five"
    elseif n == 6 then text = text .. "six"
    elseif n == 7 then text = text .. "seven"
    elseif n == 8 then text = text .. "eight"
    elseif n == 9 then text = text .. "nine"
    elseif n == 10 then text = text .. "ten"
    elseif n == 11 then text = text .. "eleven"
    elseif n == 12 then text = text .. "twelve"
    elseif n == 13 then text = text .. "thirteen"
    elseif n == 14 then text = text .. "fourteen"
    elseif n == 15 then text = text .. "fifteen"
    elseif n == 16 then text = text .. "sixteen"
    elseif n == 17 then text = text .. "seventeen"
    elseif n == 18 then text = text .. "eighteen"
    elseif n == 19 then text = text .. "nineteen"
    elseif n == 20 then text = text .. "twenty"
    elseif n == 30 then text = text .. "thirty"
    elseif n == 40 then text = text .. "forty"
    elseif n == 50 then text = text .. "fifty"
    elseif n > 50 then text = numberToString(50) .. '-' .. numberToString(n - 50)
    elseif n > 40 then text = numberToString(40) .. '-' .. numberToString(n - 40)
    elseif n > 30 then text = numberToString(30) .. '-' .. numberToString(n - 30)
    elseif n > 20 then text = numberToString(20) .. '-' .. numberToString(n - 20) end

    return text
end

function align(object, alignment)
    if (alignment == 'cr') then
        object:setAnchorPoint(cc.p(1,0.5))
    elseif (alignment == 'cl') then
        object:setAnchorPoint(cc.p(0,0.5))
    elseif (alignment == 'br') then
        object:setAnchorPoint(cc.p(1,0))
    elseif (alignment == 'bc') then
        object:setAnchorPoint(cc.p(0.5,0))
    elseif (alignment == 'bl') then
        object:setAnchorPoint(cc.p(0,0))
    elseif (alignment == 'tr') then
        object:setAnchorPoint(cc.p(1,1))
    elseif (alignment == 'tc') then
        object:setAnchorPoint(cc.p(0.5,1))
    elseif (alignment == 'tl') then
        object:setAnchorPoint(cc.p(0,1))
    else
        object:setAnchorPoint(cc.p(0.5,0.5))
    end
end

function evalText(value)
   -- print ("value before eval:", value)
    local eval=evalString(value)
   -- print ("first eval:", eval)
   -- local ok, newval = pcall(loadstring("return " .. eval:gsub('@@', "'"):gsub('""""', "''"):gsub('"""', "''")))
  --  local ok, newval = pcall(loadstring("return " .. eval:gsub('"@@"', [["`"]]):gsub('"@@', "'"):gsub('@@"', "'"):gsub('@@', "'"):gsub('""""', "''"):gsub('"""', "''")))
    local ok, newval = pcall(loadstring("return " .. eval:gsub('"@@"', [["`"]]):gsub('"@@([^@]+)@@"', "'%1'"):gsub('@@@@', "'"):gsub('@@', "'"):gsub('""""', "''"):gsub('"""', "''")))
   -- print ("second eval:", ok, newval, var_swsss_lap)
    if ok and (type(newval) == type(tonumber(eval))) then ok=false end
    if ok and newval ~= nil and newval ~= false then
        return ('' .. newval):gsub("'", '')
    end
    return ('' .. eval):gsub('@@', '')
end

function toLowerVar(s)
    local subst
    for w in string.gmatch(s, '{[%a,%d]+}') do
        subst = w:lower()
        s = s:gsub(w, subst)
    end
    return s
end

function evalString(s)
    local var, subst
    repeat
        var = string.match(s, '{([%a,%d,_%.]+)}')  -- Added %. to support dots (e.g., tweens.counter)
        if var == nil then break end

        -- Support dot notation for nested tables (e.g., tweens.c_0_100_2_st)
        if string.find(var, '%.') then
            local parts = {}
            for part in string.gmatch(var, '[^%.]+') do
                table.insert(parts, part)
            end
            subst = _G[parts[1]]
            for i = 2, #parts do
                if subst then
                    subst = subst[parts[i]]
                else
                    break
                end
            end
        else
            subst = _G[var]
        end

        if subst == nil then subst = '0'
        elseif subst == false then subst = "false"
        elseif subst == true then subst = "true"
        end
        --print("evalString replace " , var , "by" , subst)
        s = s:gsub('{'..var:gsub('%.', '%%.') ..'}', subst)  -- Escape dots in gsub pattern
    until var == '' or var == nil
    return s
end

function math.mod (a, b) return math.fmod(a, b) end

function evaluateDrawable(drawable)
    local temp = {}
    for attr, val in pairs(drawable) do
        if attr ~= 'tap_action' then
            temp[attr] = nil
            if (type(val) == 'function') then
                if not pcall(function() temp[attr] = val() end) then temp[attr] = nil end
            else
                temp[attr] = val
            end
        end
        --print(attr .. " val : " .. temp[attr])
    end

    temp.rotation = tonumber(temp.rotation) or 0
    temp.anim_scale_x=(tonumber(temp.anim_scale_x) or 100)/100
    temp.anim_scale_y=(tonumber(temp.anim_scale_y) or 100)/100
    temp.opacity = tonumber(temp.opacity) or 0

    return temp
end

function wm_vibrate(duration, repeatnumber)
    cc.Device:vibrate(duration/1000)
end

function wm_transition(transition)
  --  print ("wm_transition", transition)
    --ViewBase:showWithScene(transition, 1.0)
    --  display.wrapScene(display.getRunningScene(), transition, 1.0, nil)
end

function wm_unschedule_all()
end

function wm_action()
end

function linear(t, b, c, d)
    return linearTween (t, b, c, d)
end

function linearTween (t, b, c, d)
    return c*t/d + b
end

function easeInQuad (t, b, c, d)
    t = t / d;
    return c*t*t + b;
end


-- quadratic easing out - decelerating to zero velocity
function easeOutQuad (t, b, c, d)
    t = t / d;
    return -c * t*(t-2) + b;
end

-- quadratic easing in/out - acceleration until halfway, then deceleration
function easeInOutQuad (t, b, c, d)
t = t / d/2;
if (t < 1) then return c/2*t*t + b end
t = t - 1
return -c/2 * (t*(t-2) - 1) + b;
end

-- cubic easing in - accelerating from zero velocity
function easeInCubic (t, b, c, d)
t = t / d;
return c*t*t*t + b;
end

-- cubic easing out - decelerating to zero velocity
function easeOutCubic (t, b, c, d)
t = t / d;
t = t - 1
return c*(t*t*t + 1) + b;
end

-- cubic easing in/out - acceleration until halfway, then deceleration
function easeInOutCubic (t, b, c, d)
t = t / d/2;
if (t < 1) then return c/2*t*t*t + b end
t = t - 2;
return c/2*(t*t*t + 2) + b;
end

-- quartic easing in - accelerating from zero velocity
function easeInQuart (t, b, c, d)
t = t / d;
return c*t*t*t*t + b;
end

-- quartic easing out - decelerating to zero velocity
function easeOutQuart (t, b, c, d)
t = t / d;
t = t - 1
return -c * (t*t*t*t - 1) + b;
end

-- quartic easing in/out - acceleration until halfway, then deceleration
function easeInOutQuart (t, b, c, d)
t = t / d/2;
if (t < 1) then return c/2*t*t*t*t + b end
t = t - 2;
return -c/2 * (t*t*t*t - 2) + b;
end

-- quintic easing in - accelerating from zero velocity
function easeInQuint (t, b, c, d)
t = t / d;
return c*t*t*t*t*t + b;
end

-- quintic easing out - decelerating to zero velocity
function easeOutQuint (t, b, c, d)
t = t / d;
t = t - 1
return c*(t*t*t*t*t + 1) + b;
end

-- quintic easing in/out - acceleration until halfway, then deceleration
function easeInOutQuint (t, b, c, d)
t = t / d/2;
if (t < 1) then return c/2*t*t*t*t*t + b end
t = t - 2;
return c/2*(t*t*t*t*t + 2) + b;
end

-- sinusoidal easing in - accelerating from zero velocity
function easeInSine (t, b, c, d)
return -c * math.cos(t/d * (math.pi/2)) + c + b;
end

-- sinusoidal easing out - decelerating to zero velocity
function easeOutSine (t, b, c, d)
return c * math.sin(t/d * (math.pi/2)) + b;
end

-- sinusoidal easing in/out - accelerating until halfway, then decelerating
function easeInOutSine (t, b, c, d)
return -c/2 * (math.cos(math.pi*t/d) - 1) + b;
end

-- exponential easing in - accelerating from zero velocity
function easeInExpo (t, b, c, d)
return c * math.pow( 2, 10 * (t/d - 1) ) + b;
end

-- exponential easing out - decelerating to zero velocity
function easeOutExpo (t, b, c, d)
return c * ( -math.pow( 2, -10 * t/d ) + 1 ) + b;
end

-- exponential easing in/out - accelerating until halfway, then decelerating
function easeInOutExpo (t, b, c, d)
t = t / d/2;
if (t < 1) then return c/2 * math.pow( 2, 10 * (t - 1) ) + b end
t = t - 1
return c/2 * ( -math.pow( 2, -10 * t) + 2 ) + b;
end

-- circular easing in - accelerating from zero velocity
function easeInCirc (t, b, c, d)
t = t / d;
return -c * (math.sqrt(1 - t*t) - 1) + b;
end

-- circular easing out - decelerating to zero velocity
function easeOutCirc (t, b, c, d)
t = t / d;
t = t - 1
return c * math.sqrt(1 - t*t) + b;
end

-- circular easing in/out - acceleration until halfway, then deceleration
function easeInOutCirc (t, b, c, d)
t = t / d/2;
if (t < 1) then return -c/2 * (math.sqrt(1 - t*t) - 1) + b end
t = t - 2;
return c/2 * (math.sqrt(1 - t*t) + 1) + b;
end

-- from http://stackoverflow.com/questions/5838181/mathematical-formulas-for-easing-functions-elasticease-circleease-bounceease
function outElastic(t,b,c,d)
    if (t==0) then return b end
    t = t/d
    if (t==1) then return b+c end
    local p=d*.3
    local a=c
    local s=p/4
    return (a*math.pow(2,-10*t) * math.sin( (t*d-s)*(2*math.pi)/p ) + c + b);
end

function inElastic (t,b,c,d)
    if (t==0) then return b end
    t = t/d
    if (t==1) then return b+c end
    local p=d*.3
    local a=c
    local s=p/4
    t=t-1
    local postFix =a*math.pow(2,10*t) --this is a fix, again, with post-increment operators
    return -(postFix * math.sin((t*d-s)*(2*math.pi)/p )) + b
end

function inOutElastic(t,b,c,d)
    if (t==0) then return b end
    t = t/d
    if (t==2) then return b+c end
    local p=d*(.3*1.5)
    local a=c
    local s=p/4
    t=t-1
    if (t < 1) then
        local postFix =a*math.pow(2,10*t) -- postIncrement is evil
        return -.5*(postFix* math.sin( (t*d-s)*(2*math.pi)/p )) + b
    end
    local postFix = a*math.pow(2,-10*t) -- postIncrement is evil
    return postFix * math.sin( (t*d-s)*(2*math.pi)/p )*.5 + c + b
end

function inExpo(t, b, c, d)
if t == 0 then return b end
return c * math.pow(2, 10 * (t / d - 1)) + b - c * 0.001
end

function outExpo(t, b, c, d)
if t == d then return b + c end
return c * 1.001 * (-math.pow(2, -10 * t / d) + 1) + b
end

function inOutExpo(t, b, c, d)
if t == 0 then return b end
if t == d then return b + c end
t = t / d * 2
if t < 1 then return c / 2 * math.pow(2, 10 * (t - 1)) + b - c * 0.0005 end
return c / 2 * 1.0005 * (-math.pow(2, -10 * (t - 1)) + 2) + b
end

function outInExpo(t, b, c, d)
if t < d / 2 then return outExpo(t * 2, b, c / 2, d) end
return inExpo((t * 2) - d, b + c / 2, c / 2, d)
end

function inBack(t, b, c, d, s)
s = s or 1.70158
t = t / d
return c * t * t * ((s + 1) * t - s) + b
end

function outBack(t, b, c, d, s)
s = s or 1.70158
t = t / d - 1
return c * (t * t * ((s + 1) * t + s) + 1) + b
end

function inOutBack(t, b, c, d, s)
s = (s or 1.70158) * 1.525
t = t / d * 2
if t < 1 then return c / 2 * (t * t * ((s + 1) * t - s)) + b end
t = t - 2
return c / 2 * (t * t * ((s + 1) * t + s) + 2) + b
end

function outInBack(t, b, c, d, s)
if t < d / 2 then return outBack(t * 2, b, c / 2, d, s) end
return inBack((t * 2) - d, b + c / 2, c / 2, d, s)
end

-- Get day of a week at year beginning
--(tm can be any date and will be forced to 1st of january same year)
-- return 1=mon 7=sun
function getYearBeginDayOfWeek(tm)
    yearBegin = os.time{year=os.date("*t",tm).year,month=1,day=1}
    yearBeginDayOfWeek = tonumber(os.date("%w",yearBegin))
    -- sunday correct from 0 -> 7
    if(yearBeginDayOfWeek == 0) then yearBeginDayOfWeek = 7 end
    return yearBeginDayOfWeek
end

-- tm: date (as retruned fro os.time)
-- returns basic correction to be add for counting number of week
--  weekNum = math.floor((dayOfYear + returnedNumber) / 7) + 1
-- (does not consider correctin at begin and end of year)
function getDayAdd(tm)
    yearBeginDayOfWeek = getYearBeginDayOfWeek(tm)
    if(yearBeginDayOfWeek < 5 ) then
        -- first day is week 1
        dayAdd = (yearBeginDayOfWeek - 2)
    else
        -- first day is week 52 or 53
        dayAdd = (yearBeginDayOfWeek - 9)
    end
    return dayAdd
end
-- tm is date as returned from os.time()
-- return week number in year based on ISO8601
-- (week with 1st thursday since Jan 1st (including) is considered as Week 1)
-- (if Jan 1st is Fri,Sat,Sun then it is part of week number from last year -> 52 or 53)
oldtm=-1
oldWeekNum=-1
function getWeekNumberOfYear(tm)
    if oldtm == tm then return oldWeekNum end
    dayOfYear = os.date("%j",tm)
    dayAdd = getDayAdd(tm)
    dayOfYearCorrected = dayOfYear + dayAdd
    if(dayOfYearCorrected < 0) then
        -- week of last year - decide if 52 or 53
        lastYearBegin = os.time{year=os.date("*t",tm).year-1,month=1,day=1}
        lastYearEnd = os.time{year=os.date("*t",tm).year-1,month=12,day=31}
        dayAdd = getDayAdd(lastYearBegin)
        dayOfYear = dayOfYear + os.date("%j",lastYearEnd)
        dayOfYearCorrected = dayOfYear + dayAdd
    end
    weekNum = math.floor((dayOfYearCorrected) / 7) + 1
    if( (dayOfYearCorrected > 0) and weekNum == 53) then
        -- check if it is not considered as part of week 1 of next year
        nextYearBegin = os.time{year=os.date("*t",tm).year+1,month=1,day=1}
        yearBeginDayOfWeek = getYearBeginDayOfWeek(nextYearBegin)
        if(yearBeginDayOfWeek < 5 ) then
            weekNum = 1
        end
    end
    oldtm = tm
    oldWeekNum = weekNum
    return weekNum
end
