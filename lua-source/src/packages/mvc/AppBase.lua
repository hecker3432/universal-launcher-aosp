
local AppBase = class("AppBase")

function AppBase:ctor(configs)
    self.configs_ = {
        viewsRoot  = "app.views",
        modelsRoot = "app.models",
        defaultSceneName =  "DefaultClock"
    }

    for k, v in pairs(configs or {}) do
        self.configs_[k] = v
    end

    if type(self.configs_.viewsRoot) ~= "table" then
        self.configs_.viewsRoot = {self.configs_.viewsRoot}
    end
    if type(self.configs_.modelsRoot) ~= "table" then
        self.configs_.modelsRoot = {self.configs_.modelsRoot}
    end

    if DEBUG > 1 then
        dump(self.configs_, "AppBase configs")
    end

    if CC_SHOW_FPS then
        cc.Director:getInstance():setDisplayStats(true)
    end
    -- event
    self:onCreate()
end

function AppBase:run(initSceneName, skinName)
    initSceneName = initSceneName or self.configs_.defaultSceneName
    cc.Director:getInstance():stopAnimation()
    print("running:"..initSceneName)
    self:enterScene(initSceneName, nil, nil, nil, skinName)
    print("start anim:"..initSceneName)
    cc.Director:getInstance():startAnimation()
    print("end running:"..initSceneName)
end

function AppBase:enterScene(sceneName, transition, time, more, skinName)
    if (skinName ~= nil ) then print("enter:"..sceneName .. " with skin:" .. skinName) end
    local view = self:createView(sceneName, skinName)
    if view==nil then print("view is nil") else print("view created !") end
    print("launching showWithScene")
    view:showWithScene(transition, time, more)
    print("showWithScene:success")
    return view
end

function AppBase:createView(name, skinName)
    --print("createView:"..name)
    if DEBUG > 1 then
        dump(self.configs_, "AppBase configs")
    end
    for _, root in ipairs(self.configs_.viewsRoot) do
        local packageName = string.format("%s.%s", root, name)
        --print("view packageName:" .. packageName)
        local status, view = xpcall(function()
                return require(packageName)
            end, function(msg)
            if not string.find(msg, string.format("'%s' not found:", packageName)) then
                print("load view error: ", msg)
            end
        end)
        local t = type(view)
        --print("view type " .. t)
        if status and (t == "table" or t == "userdata") then
            return view:create(self, name, skinName)
        end
    end
    error(string.format("AppBase:createView() - not found view \"%s\" in search paths \"%s\"",
        name, table.concat(self.configs_.viewsRoot, ",")), 0)
end

function AppBase:onCreate()
 --   self:removeAllChildren()
end

return AppBase
