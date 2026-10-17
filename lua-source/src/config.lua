-- 0 - disable debug info, 1 - less debug info, 2 - verbose debug info
DEBUG = 0

-- use framework, will disable all deprecated API, false - use legacy API
CC_USE_FRAMEWORK = true

-- show FPS on screen
CC_SHOW_FPS = false

-- disable create unexpected global variable
CC_DISABLE_GLOBAL = false

-- for module display
CC_DESIGN_RESOLUTION = {
    width = 512,
    height = 512,
    autoscale = "FIXED_HEIGHT",  --"SHOW_ALL",
    callback = function(framesize)
        if (cc.exports == nil or cc.exports.fullscreen == 0 or cc.exports.fullscreen == 3) then
            -- Mode 0: Vertical centered (fixed)
            -- Mode 3: Vertical compatibility (old mode 0)
            return {autoscale = "FIXED_HEIGHT"}  --{autoscale = "SHOW_ALL"}
        elseif (cc.exports.fullscreen == 1) then
            -- Mode 1: Stretch
            return {autoscale = "EXACT_FIT"}
        else
            -- Mode 2: Horizontal centered
            -- Mode 4: Horizontal compatibility (old mode 2)
            return {autoscale = "FIXED_WIDTH"}  --"FIXED_HEIGHT"}
        end
    end
}
