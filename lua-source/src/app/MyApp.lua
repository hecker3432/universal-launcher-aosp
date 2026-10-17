
local MyApp = class("MyApp", cc.load("mvc").AppBase)

function MyApp:onCreate()
    math.randomseed(os.time())

    local luaj = require "cocos.cocos2d.luaj"
    cc.exports.SDpath="/mnt/sdcard"
    local sigs = "()Ljava/lang/String;"
    local className = "com/ricktop/ClockSkinCoco/CocosClockFragment"
    local ok,ret  = luaj.callStaticMethod(className,"getPath",nil,sigs)
    if not ok then
        print("luaj path error:", ret)
    else
        print("The path is:", ret)
        cc.exports.SDpath=ret
    end
    local ok,ret  = luaj.callStaticMethod(className,"getDays",nil,sigs)
    if not ok then
        print("luaj getDays error:", ret)
    else
        print("The dayList is:", ret)
        cc.exports.__G__SETMEMORY__(ret)
    end
    local ok,ret  = luaj.callStaticMethod(className,"getMonths",nil,sigs)
    if not ok then
        print("luaj getMonths error:", ret)
    else
        print("The monthList is:", ret)
        cc.exports.__G__SETMEMORY__(ret)
    end
end

return MyApp
