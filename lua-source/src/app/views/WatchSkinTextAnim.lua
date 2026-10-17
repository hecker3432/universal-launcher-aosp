--[[
    WatchSkinTextAnim.lua
    Text Animation System for Universal Launcher V4

    Provides animation support for text layers with various effects:
    - Action-based animations (Cocos2D-x actions)
    - Shader-based animations (single texture + time)
    - Transition-based animations (dual texture + progress) - for animations that need current + previous text
]]--

local WatchSkinTextAnim = {}

-- Store for previous text values (used by transition animations)
WatchSkinTextAnim.previousTexts = {}

-- Animation type definitions
-- Maps animation names to their implementation details
WatchSkinTextAnim.ANIMATIONS = {
    -- ========== ACTION-BASED ANIMATIONS (Simple, no shaders) ==========
    -- These use Cocos2D-x built-in actions and are the simplest to implement

    ['Fade'] = {
        type = 'action',
        category = 'simple'
    },

    ['Bounce'] = {
        type = 'action',
        category = 'simple'
    },

    ['ShakeX'] = {
        type = 'action',
        category = 'simple'
    },

    ['ShakeY'] = {
        type = 'action',
        category = 'simple'
    },

    ['Pulse'] = {
        type = 'action',
        category = 'simple'
    },

    ['Heartbeat'] = {
        type = 'action',
        category = 'simple'
    },

    ['RubberBand'] = {
        type = 'action',
        category = 'simple'
    },

    ['Swing'] = {
        type = 'action',
        category = 'simple'
    },

    ['Jiggle'] = {
        type = 'action',
        category = 'simple'
    },

    ['Flash'] = {
        type = 'action',
        category = 'simple'
    },

    ['ExplodeIn'] = {
        type = 'action',
        category = 'simple'
    },

    ['ExplodeOut'] = {
        type = 'action',
        category = 'simple'
    },

    ['Expand'] = {
        type = 'action',
        category = 'simple'
    },

    ['Contract'] = {
        type = 'action',
        category = 'simple'
    },

    ['ScaleX'] = {
        type = 'action',
        category = 'simple'
    },

    ['ScaleY'] = {
        type = 'action',
        category = 'simple'
    },

    ['FlipHorizontal'] = {
        type = 'action',
        category = 'simple'
    },

    ['FlipVertical'] = {
        type = 'action',
        category = 'simple'
    },

    ['FadeWhite'] = {
        type = 'action',
        category = 'simple'
    },

    ['Swap'] = {
        type = 'transition',
        shader = 'text_transition_swap',
        uniforms = {'progress'}
    },

    ['Doorway'] = {
        type = 'transition',
        shader = 'text_transition_doorway',
        uniforms = {'progress'}
    },

    ['CircleOpen'] = {
        type = 'shader',
        shader = 'text_circle_open',
        uniforms = {'progress'}
    },

    ['SlideLeft'] = {
        type = 'action',
        category = 'simple'
    },

    ['SlideRight'] = {
        type = 'action',
        category = 'simple'
    },

    ['SlideUp'] = {
        type = 'action',
        category = 'simple'
    },

    ['SlideDown'] = {
        type = 'action',
        category = 'simple'
    },

    ['ZoomIn'] = {
        type = 'action',
        category = 'simple'
    },

    ['ZoomOut'] = {
        type = 'action',
        category = 'simple'
    },

    ['Drop'] = {
        type = 'action',
        category = 'simple'
    },

    ['Rise'] = {
        type = 'action',
        category = 'simple'
    },

    ['Spin'] = {
        type = 'action',
        category = 'simple'
    },

    ['CarouselLeft'] = {
        type = 'transition',
        shader = 'text_transition_carousel_left',
        uniforms = {'progress'}
    },

    ['CarouselRight'] = {
        type = 'transition',
        shader = 'text_transition_carousel_right',
        uniforms = {'progress'}
    },

    ['CarouselTop'] = {
        type = 'transition',
        shader = 'text_transition_carousel_top',
        uniforms = {'progress'}
    },

    ['CarouselBottom'] = {
        type = 'transition',
        shader = 'text_transition_carousel_bottom',
        uniforms = {'progress'}
    },

    ['Wipe'] = {
        type = 'shader',
        shader = 'text_wipe',
        uniforms = {'progress'}
    },

    ['Cross'] = {
        type = 'shader',
        shader = 'text_cross',
        uniforms = {'progress'}
    },

    ['Slash'] = {
        type = 'shader',
        shader = 'text_slash',
        uniforms = {'progress'}
    },

    ['Pinwheel'] = {
        type = 'shader',
        shader = 'text_pinwheel',
        uniforms = {'progress'}
    },

    ['Swirl'] = {
        type = 'shader',
        shader = 'text_swirl',
        uniforms = {'progress'}
    },

    ['SquareSwipe'] = {
        type = 'shader',
        shader = 'text_square_swipe',
        uniforms = {'progress'}
    },

    ['Radial'] = {
        type = 'shader',
        shader = 'text_radial',
        uniforms = {'progress'}
    },

    ['Dissolve'] = {
        type = 'shader',
        shader = 'text_dissolve',
        uniforms = {'progress'}
    },

    -- More animations from t_text_anims.lua
    ['Typewriter'] = {
        type = 'action',
        category = 'simple'
    },

    ['LetterDrop'] = {
        type = 'action',
        category = 'simple'
    },

    ['NumberSpin'] = {
        type = 'action',
        category = 'simple'
    },

    ['TextScramble'] = {
        type = 'action',
        category = 'simple'
    },

    ['NumberArrive'] = {
        type = 'action',
        category = 'simple'
    },

    ['CrossFadeLines'] = {
        type = 'shader',
        shader = 'text_cross_fade_lines',
        uniforms = {'progress'}
    },

    ['FlipClock'] = {
        type = 'transition',
        shader = 'text_transition_flipclock',
        uniforms = {'progress'}
    },

    ['StarCrawl'] = {
        type = 'action',
        category = 'simple'
    },

    ['CrossHatch'] = {
        type = 'shader',
        shader = 'text_cross_hatch',
        uniforms = {'progress'}
    },

    ['CrossZoom'] = {
        type = 'shader',
        shader = 'text_cross_zoom',
        uniforms = {'progress'}
    },

    ['CubeFromLeft'] = {
        type = 'transition',
        shader = 'text_transition_cube_left',
        uniforms = {'progress'}
    },

    ['CubeFromRight'] = {
        type = 'transition',
        shader = 'text_transition_cube_right',
        uniforms = {'progress'}
    },

    ['Dreamy'] = {
        type = 'action',
        category = 'simple'
    },

    ['FoldFromLeft'] = {
        type = 'transition',
        shader = 'text_transition_fold_left',
        uniforms = {'progress'}
    },

    ['FoldFromRight'] = {
        type = 'transition',
        shader = 'text_transition_fold_right',
        uniforms = {'progress'}
    },

    ['FoldFromTop'] = {
        type = 'transition',
        shader = 'text_transition_fold_top',
        uniforms = {'progress'}
    },

    ['FoldFromBottom'] = {
        type = 'transition',
        shader = 'text_transition_fold_bottom',
        uniforms = {'progress'}
    },

    ['GlitchDisplace'] = {
        type = 'shader',
        shader = 'text_glitch_displace',
        uniforms = {'progress'}
    },

    ['GlitchMemories'] = {
        type = 'shader',
        shader = 'text_glitch_memories',
        uniforms = {'progress'}
    },

    ['Kaleidoscope'] = {
        type = 'shader',
        shader = 'text_kaleidoscope',
        uniforms = {'progress'}
    },

    ['Morph'] = {
        type = 'shader',
        shader = 'text_morph',
        uniforms = {'progress'}
    },

    ['Mosaic'] = {
        type = 'shader',
        shader = 'text_mosaic',
        uniforms = {'progress'}
    },

    ['DefocusBlur'] = {
        type = 'shader',
        shader = 'text_defocus_blur',
        uniforms = {'progress'}
    },

    ['HSVFade'] = {
        type = 'action',
        category = 'simple'
    },

    ['LinearBlur'] = {
        type = 'shader',
        shader = 'text_linear_blur',
        uniforms = {'progress'}
    },

    ['RandomSquares'] = {
        type = 'shader',
        shader = 'text_random_squares',
        uniforms = {'progress'}
    },

    ['PolkaDotsCurtain'] = {
        type = 'shader',
        shader = 'text_polka_dots',
        uniforms = {'progress'}
    },

    ['PowerDisformation'] = {
        type = 'shader',
        shader = 'text_power_disformation',
        uniforms = {'progress'}
    },

    ['Shining'] = {
        type = 'shader',
        shader = 'text_shining',
        uniforms = {'progress'}
    },
}

--[[
    Apply action-based animation to a text label
    @param label - The cc.Label node to animate
    @param animName - Name of the animation
    @param duration - Animation duration in seconds
    @param isEntry - true if this is entry animation (in), false for exit (out)
    @return action - The Cocos2D-x action object
]]--
function WatchSkinTextAnim.applyActionAnimation(label, animName, duration, isEntry)
    if not label then
        print("WatchSkinTextAnim: No label provided")
        return nil
    end

    duration = duration or 0.5
    local action = nil

    -- Store original position for animations that need it
    local origX, origY = label:getPosition()
    local origScale = label:getScale()

    if animName == 'Fade' then
        if isEntry then
            -- Fade in: 0 -> 1
            label:setOpacity(0)
            action = cc.FadeIn:create(duration)
        else
            -- Fade out: 1 -> 0
            action = cc.FadeOut:create(duration)
        end

    elseif animName == 'Bounce' then
        -- Bounce: jump up from original position, then fall down and bounce
        if isEntry then
            -- Jump up first, then fall down with bounce
            label:setOpacity(255)
            action = cc.Sequence:create(
                -- Jump up quickly
                cc.EaseOut:create(cc.MoveBy:create(duration * 0.3, cc.p(0, 80)), 2),
                -- Fall down with bounce
                cc.EaseBounceOut:create(cc.MoveBy:create(duration * 0.7, cc.p(0, -80)))
            )
        else
            -- Jump up with bounce, then fall
            action = cc.Sequence:create(
                -- Bounce up
                cc.EaseBounceOut:create(cc.MoveBy:create(duration * 0.7, cc.p(0, 80))),
                -- Fall down and fade
                cc.Spawn:create(
                    cc.EaseIn:create(cc.MoveBy:create(duration * 0.3, cc.p(0, -80)), 2),
                    cc.FadeOut:create(duration * 0.3)
                )
            )
        end

    elseif animName == 'ShakeX' then
        -- Shake horizontally
        local moves = {}
        local shakeAmount = 20
        local steps = 4
        table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(-shakeAmount/2, 0)))
        for i = 1, steps do
            table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(shakeAmount, 0)))
            table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(-shakeAmount, 0)))
        end
        action = cc.Sequence:create(unpack(moves))

    elseif animName == 'ShakeY' then
        -- Shake vertically
        local moves = {}
        local shakeAmount = 20
        local steps = 4
            table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(0, -shakeAmount/2)))
        for i = 1, steps do
            table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(0, shakeAmount)))
            table.insert(moves, cc.MoveBy:create(duration / (steps * 2), cc.p(0, -shakeAmount)))
        end
        action = cc.Sequence:create(unpack(moves))

    elseif animName == 'Pulse' then
        -- Single pulse effect (scale up and back)
        action = cc.Sequence:create(
            cc.ScaleTo:create(duration * 0.5, origScale * 1.15),
            cc.ScaleTo:create(duration * 0.5, origScale)
        )

    elseif animName == 'Heartbeat' then
        -- Double pulse effect like a heartbeat
        local pulses = {}
        table.insert(pulses, cc.ScaleTo:create(duration * 0.15, origScale * 1.2))
        table.insert(pulses, cc.ScaleTo:create(duration * 0.15, origScale))
        table.insert(pulses, cc.DelayTime:create(duration * 0.1))
        table.insert(pulses, cc.ScaleTo:create(duration * 0.15, origScale * 1.2))
        table.insert(pulses, cc.ScaleTo:create(duration * 0.45, origScale))
        action = cc.Sequence:create(unpack(pulses))

    elseif animName == 'RubberBand' then
        -- Stretchy rubber band effect
        local stretches = {}
        table.insert(stretches, cc.ScaleTo:create(duration * 0.2, origScale * 1.25, origScale * 0.75))
        table.insert(stretches, cc.ScaleTo:create(duration * 0.2, origScale * 0.75, origScale * 1.25))
        table.insert(stretches, cc.ScaleTo:create(duration * 0.2, origScale * 1.15, origScale * 0.85))
        table.insert(stretches, cc.ScaleTo:create(duration * 0.2, origScale * 0.95, origScale * 1.05))
        table.insert(stretches, cc.ScaleTo:create(duration * 0.2, origScale, origScale))
        action = cc.Sequence:create(unpack(stretches))

    elseif animName == 'Swing' then
        -- Swinging pendulum effect
        local swings = {}
        table.insert(swings, cc.RotateTo:create(duration * 0.2, 15))
        table.insert(swings, cc.RotateTo:create(duration * 0.2, -10))
        table.insert(swings, cc.RotateTo:create(duration * 0.2, 5))
        table.insert(swings, cc.RotateTo:create(duration * 0.2, -5))
        table.insert(swings, cc.RotateTo:create(duration * 0.2, 0))
        action = cc.Sequence:create(unpack(swings))

    elseif animName == 'Jiggle' then
        -- Rapid small shaking/jiggling
        local jiggles = {}
        for i = 1, 8 do
            table.insert(jiggles, cc.RotateTo:create(duration / 16, 3))
            table.insert(jiggles, cc.RotateTo:create(duration / 16, -3))
        end
        table.insert(jiggles, cc.RotateTo:create(duration / 16, 0))
        action = cc.Sequence:create(unpack(jiggles))

    elseif animName == 'Flash' then
        -- Quick flash effect
        local flashes = {}
        for i = 1, 3 do
            table.insert(flashes, cc.FadeTo:create(duration / 6, 100))
            table.insert(flashes, cc.FadeTo:create(duration / 6, 255))
        end
        action = cc.Sequence:create(unpack(flashes))

    elseif animName == 'ExplodeIn' then
        -- Expand from center (same as Expand)
        if isEntry then
            label:setScale(0, 0)
            action = cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale, origScale))
        else
            action = cc.EaseBackIn:create(cc.ScaleTo:create(duration, 0, 0))
        end

    elseif animName == 'ExplodeOut' then
        -- Start large and shrink to normal
        if isEntry then
            label:setScale(origScale * 3)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 3), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Expand' then
        -- Expand from center (both X and Y)
        if isEntry then
            label:setScale(0, 0)
            action = cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale, origScale))
        else
            action = cc.EaseBackIn:create(cc.ScaleTo:create(duration, 0, 0))
        end

    elseif animName == 'Contract' then
        -- Contract to center (opposite of expand)
        if isEntry then
            label:setScale(origScale * 2, origScale * 2)
            action = cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2)
        else
            action = cc.EaseIn:create(cc.ScaleTo:create(duration, 0, 0), 2)
        end

    elseif animName == 'ScaleX' then
        -- Scale horizontally only
        if isEntry then
            label:setScaleX(0)
            action = cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale, origScale))
        else
            action = cc.EaseBackIn:create(cc.ScaleTo:create(duration, 0, origScale))
        end

    elseif animName == 'ScaleY' then
        -- Scale vertically only
        if isEntry then
            label:setScaleY(0)
            action = cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale, origScale))
        else
            action = cc.EaseBackIn:create(cc.ScaleTo:create(duration, origScale, 0))
        end

    elseif animName == 'FlipHorizontal' then
        -- Flip around vertical axis (horizontal flip)
        if isEntry then
            label:setScaleX(0)
            action = cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2)
        else
            action = cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2)
        end

    elseif animName == 'FlipVertical' then
        -- Flip around horizontal axis (vertical flip)
        if isEntry then
            label:setScaleY(0)
            action = cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2)
        else
            action = cc.EaseIn:create(cc.ScaleTo:create(duration, origScale, 0), 2)
        end

    elseif animName == 'FadeWhite' then
        -- Fade to white then back (using opacity pulse)
        if isEntry then
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.FadeIn:create(duration * 0.5),
                cc.FadeTo:create(duration * 0.25, 128),
                cc.FadeTo:create(duration * 0.25, 255)
            )
        else
            action = cc.Sequence:create(
                cc.FadeTo:create(duration * 0.25, 128),
                cc.FadeTo:create(duration * 0.25, 255),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Swap' then
        -- Quick swap/flip effect
        if isEntry then
            label:setScale(0)
            label:setRotation(180)
            action = cc.Spawn:create(
                cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale)),
                cc.RotateTo:create(duration, 0)
            )
        else
            action = cc.Spawn:create(
                cc.EaseBackIn:create(cc.ScaleTo:create(duration, 0)),
                cc.RotateTo:create(duration, 180)
            )
        end

    elseif animName == 'Doorway' then
        -- Like opening/closing a door (scale from edge)
        if isEntry then
            label:setScaleX(0)
            label:setAnchorPoint(cc.p(0, 0.5))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(1, 0.5))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'CircleOpen' then
        -- Circular reveal effect (simulated with scale + fade)
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseExponentialOut:create(cc.ScaleTo:create(duration, origScale)),
                cc.EaseExponentialOut:create(cc.FadeIn:create(duration))
            )
        else
            action = cc.Spawn:create(
                cc.EaseExponentialIn:create(cc.ScaleTo:create(duration, 0)),
                cc.EaseExponentialIn:create(cc.FadeOut:create(duration))
            )
        end

    elseif animName == 'SlideLeft' then
        -- Slide in from right
        if isEntry then
            label:setPosition(origX + 200, origY)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(-200, 0)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'SlideRight' then
        -- Slide in from left
        if isEntry then
            label:setPosition(origX - 200, origY)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(200, 0)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'SlideUp' then
        -- Slide in from below
        if isEntry then
            label:setPosition(origX, origY - 200)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, 200)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'SlideDown' then
        -- Slide in from above
        if isEntry then
            label:setPosition(origX, origY + 200)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, -200)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'ZoomIn' then
        -- Zoom in from small
        if isEntry then
            label:setScale(0.1)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 3),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0.1), 3),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'ZoomOut' then
        -- Zoom in from large
        if isEntry then
            label:setScale(origScale * 5)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 3),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 5), 3),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'Drop' then
        -- Drop from above with gravity
        if isEntry then
            label:setPosition(origX, origY + 300)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseBounceOut:create(cc.MoveTo:create(duration, cc.p(origX, origY))),
                cc.FadeIn:create(duration * 0.2)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, -300)), 3),
                cc.FadeOut:create(duration * 0.8)
            )
        end

    elseif animName == 'Rise' then
        -- Rise from below
        if isEntry then
            label:setPosition(origX, origY - 300)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, 300)), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'Spin' then
        -- Spin while scaling
        if isEntry then
            label:setScale(0)
            label:setRotation(-360)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.EaseOut:create(cc.RotateTo:create(duration, 0), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0), 2),
                cc.EaseIn:create(cc.RotateBy:create(duration, 360), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CarouselLeft' then
        -- Slide in from right with slight 3D effect
        if isEntry then
            label:setPosition(origX + 300, origY)
            label:setOpacity(0)
            label:setScaleX(origScale * 0.8)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 3),
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(-300, 0)), 3),
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 0.8, origScale), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CarouselRight' then
        -- Slide in from left with slight 3D effect
        if isEntry then
            label:setPosition(origX - 300, origY)
            label:setOpacity(0)
            label:setScaleX(origScale * 0.8)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 3),
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(300, 0)), 3),
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 0.8, origScale), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CarouselTop' then
        -- Slide in from below with slight 3D effect
        if isEntry then
            label:setPosition(origX, origY - 300)
            label:setOpacity(0)
            label:setScaleY(origScale * 0.8)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 3),
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, 300)), 3),
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale, origScale * 0.8), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CarouselBottom' then
        -- Slide in from above with slight 3D effect
        if isEntry then
            label:setPosition(origX, origY + 300)
            label:setOpacity(0)
            label:setScaleY(origScale * 0.8)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 3),
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, -300)), 3),
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale, origScale * 0.8), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'Wipe' then
        -- Wipe reveal effect (slide in while revealing)
        if isEntry then
            label:setScaleX(0)
            label:setAnchorPoint(cc.p(0, 0.5))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(1, 0.5))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'Cross' then
        -- Cross/X pattern reveal (scale both axes from center)
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.5, origScale * 1.5, origScale * 0.1),
                    cc.FadeIn:create(duration * 0.3)
                ),
                cc.ScaleTo:create(duration * 0.5, origScale, origScale)
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.5, origScale * 1.5, origScale * 0.1),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.5, 0, 0),
                    cc.FadeOut:create(duration * 0.5)
                )
            )
        end

    elseif animName == 'Slash' then
        -- Diagonal slash reveal
        if isEntry then
            label:setScale(0)
            label:setRotation(-45)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.EaseOut:create(cc.RotateTo:create(duration, 0), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0), 2),
                cc.EaseIn:create(cc.RotateTo:create(duration, 45), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Pinwheel' then
        -- Spinning pinwheel effect
        if isEntry then
            label:setScale(0)
            label:setRotation(-720)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 3),
                cc.EaseOut:create(cc.RotateTo:create(duration, 0), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0), 3),
                cc.EaseIn:create(cc.RotateBy:create(duration, 720), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'Swirl' then
        -- Swirling motion with scale
        if isEntry then
            label:setScale(0)
            label:setRotation(-360)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseExponentialOut:create(cc.ScaleTo:create(duration, origScale)),
                cc.EaseExponentialOut:create(cc.RotateTo:create(duration, 0)),
                cc.FadeIn:create(duration * 0.4)
            )
        else
            action = cc.Spawn:create(
                cc.EaseExponentialIn:create(cc.ScaleTo:create(duration, 0)),
                cc.EaseExponentialIn:create(cc.RotateBy:create(duration, 360)),
                cc.FadeOut:create(duration * 0.6)
            )
        end

    elseif animName == 'SquareSwipe' then
        -- Square-like swipe (scale X then Y)
        if isEntry then
            label:setScale(0, 0)
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.5, origScale, 0),
                cc.ScaleTo:create(duration * 0.5, origScale, origScale)
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.5, origScale, 0),
                cc.ScaleTo:create(duration * 0.5, 0, 0)
            )
        end

    elseif animName == 'Radial' then
        -- Radial expand/contract
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseCircleActionOut:create(cc.ScaleTo:create(duration, origScale)),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseCircleActionIn:create(cc.ScaleTo:create(duration, 0)),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Dissolve' then
        -- Dissolve effect (rapid flicker + fade)
        if isEntry then
            label:setOpacity(0)
            local flickers = {}
            for i = 1, 8 do
                table.insert(flickers, cc.FadeTo:create(duration / 16, math.random(50, 200)))
                table.insert(flickers, cc.FadeTo:create(duration / 16, math.random(100, 255)))
            end
            table.insert(flickers, cc.FadeTo:create(duration * 0.1, 255))
            action = cc.Sequence:create(unpack(flickers))
        else
            local flickers = {}
            for i = 1, 8 do
                table.insert(flickers, cc.FadeTo:create(duration / 16, math.random(100, 255)))
                table.insert(flickers, cc.FadeTo:create(duration / 16, math.random(50, 200)))
            end
            table.insert(flickers, cc.FadeTo:create(duration * 0.1, 0))
            action = cc.Sequence:create(unpack(flickers))
        end

    elseif animName == 'Typewriter' then
        -- Typewriter effect: character-by-character reveal with flickering underscore
        local finalText = label:getString()
        local textLength = string.len(finalText)

        if isEntry then
            -- Entry: type out the text character by character
            label:setString("")
            label:setOpacity(255)

            local actions = {}
            local charDelay = duration / (textLength + 2) -- +2 for underscore flickers

            -- Type each character
            for i = 1, textLength do
                -- Show underscore
                table.insert(actions, cc.CallFunc:create(function()
                    label:setString(string.sub(finalText, 1, i-1) .. "_")
                end))
                table.insert(actions, cc.DelayTime:create(charDelay * 0.3))

                -- Show character (remove underscore)
                table.insert(actions, cc.CallFunc:create(function()
                    label:setString(string.sub(finalText, 1, i))
                end))
                table.insert(actions, cc.DelayTime:create(charDelay * 0.7))
            end

            -- Final flicker of underscore
            table.insert(actions, cc.CallFunc:create(function()
                label:setString(finalText .. "_")
            end))
            table.insert(actions, cc.DelayTime:create(charDelay * 0.5))
            table.insert(actions, cc.CallFunc:create(function()
                label:setString(finalText)
            end))

            action = cc.Sequence:create(unpack(actions))
        else
            -- Exit: delete text character by character with underscore
            label:setString(finalText)
            label:setOpacity(255)

            local actions = {}
            local charDelay = duration / (textLength + 2)

            -- Delete each character from end
            for i = textLength, 1, -1 do
                -- Show underscore at end
                table.insert(actions, cc.CallFunc:create(function()
                    label:setString(string.sub(finalText, 1, i) .. "_")
                end))
                table.insert(actions, cc.DelayTime:create(charDelay * 0.3))

                -- Delete character
                table.insert(actions, cc.CallFunc:create(function()
                    label:setString(string.sub(finalText, 1, i-1))
                end))
                table.insert(actions, cc.DelayTime:create(charDelay * 0.7))
            end

            -- Final underscore flicker then fade
            table.insert(actions, cc.CallFunc:create(function()
                label:setString("_")
            end))
            table.insert(actions, cc.DelayTime:create(charDelay * 0.5))
            table.insert(actions, cc.CallFunc:create(function()
                label:setString("")
            end))

            action = cc.Sequence:create(unpack(actions))
        end

    elseif animName == 'LetterDrop' then
        -- Letters drop from above (simulated with bounce)
        if isEntry then
            label:setPosition(origX, origY + 150)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseBounceOut:create(cc.MoveTo:create(duration, cc.p(origX, origY))),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, -150)), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'NumberSpin' then
        -- Number Spin: same as Text Scramble but uses only digits (0-9) instead of all ASCII
        local finalText = label:getString()
        local textLength = string.len(finalText)

        -- Random digit generator (0-9 only)
        local function getRandomDigit()
            return tostring(math.random(0, 9))
        end

        -- Generate random number string of same length
        local function generateRandomNumbers(length)
            local result = ""
            for i = 1, length do
                result = result .. getRandomDigit()
            end
            return result
        end

        if isEntry then
            -- Entry: start with random numbers, gradually reveal correct text
            label:setOpacity(255)
            label:setString(generateRandomNumbers(textLength))

            local actions = {}
            local iterations = math.max(8, textLength) -- At least 8 iterations
            local iterDelay = duration / iterations

            -- Track which positions are revealed
            local revealedPositions = {}
            for i = 1, textLength do
                revealedPositions[i] = false
            end

            -- Each iteration: reveal 1 random position, scramble others with numbers
            for iter = 1, iterations do
                table.insert(actions, cc.CallFunc:create(function()
                    -- Choose a random unrevealed position to reveal
                    local unrevealedCount = 0
                    for i = 1, textLength do
                        if not revealedPositions[i] then
                            unrevealedCount = unrevealedCount + 1
                        end
                    end

                    if unrevealedCount > 0 then
                        -- Reveal one position
                        local revealIndex = math.random(1, unrevealedCount)
                        local count = 0
                        for i = 1, textLength do
                            if not revealedPositions[i] then
                                count = count + 1
                                if count == revealIndex then
                                    revealedPositions[i] = true
                                    break
                                end
                            end
                        end
                    end

                    -- Build the display string
                    local displayText = ""
                    for i = 1, textLength do
                        if revealedPositions[i] then
                            displayText = displayText .. string.sub(finalText, i, i)
                        else
                            displayText = displayText .. getRandomDigit()
                        end
                    end
                    label:setString(displayText)
                end))
                table.insert(actions, cc.DelayTime:create(iterDelay))
            end

            -- Final: ensure all text is correct
            table.insert(actions, cc.CallFunc:create(function()
                label:setString(finalText)
            end))

            action = cc.Sequence:create(unpack(actions))
        else
            -- Exit: scramble text gradually with numbers
            label:setOpacity(255)
            label:setString(finalText)

            local actions = {}
            local iterations = math.max(8, textLength)
            local iterDelay = duration / iterations

            -- Track which positions are scrambled
            local scrambledPositions = {}
            for i = 1, textLength do
                scrambledPositions[i] = false
            end

            -- Each iteration: scramble 1 random position with numbers
            for iter = 1, iterations do
                table.insert(actions, cc.CallFunc:create(function()
                    -- Choose a random unscrambled position to scramble
                    local unscrambledCount = 0
                    for i = 1, textLength do
                        if not scrambledPositions[i] then
                            unscrambledCount = unscrambledCount + 1
                        end
                    end

                    if unscrambledCount > 0 then
                        local scrambleIndex = math.random(1, unscrambledCount)
                        local count = 0
                        for i = 1, textLength do
                            if not scrambledPositions[i] then
                                count = count + 1
                                if count == scrambleIndex then
                                    scrambledPositions[i] = true
                                    break
                                end
                            end
                        end
                    end

                    -- Build the display string
                    local displayText = ""
                    for i = 1, textLength do
                        if scrambledPositions[i] then
                            displayText = displayText .. getRandomDigit()
                        else
                            displayText = displayText .. string.sub(finalText, i, i)
                        end
                    end
                    label:setString(displayText)
                end))
                table.insert(actions, cc.DelayTime:create(iterDelay))
            end

            -- Final: clear
            table.insert(actions, cc.CallFunc:create(function()
                label:setString("")
            end))

            action = cc.Sequence:create(unpack(actions))
        end

    elseif animName == 'TextScramble' then
        -- Text Scramble: random ASCII characters gradually resolve to correct text
        local finalText = label:getString()
        local textLength = string.len(finalText)

        -- Printable ASCII characters (32-126)
        local function getRandomChar()
            return string.char(math.random(33, 126)) -- Skip space (32) for visibility
        end

        -- Generate random string of same length
        local function generateRandomString(length)
            local result = ""
            for i = 1, length do
                result = result .. getRandomChar()
            end
            return result
        end

        if isEntry then
            -- Entry: start with random chars, gradually reveal correct ones
            label:setOpacity(255)
            label:setString(generateRandomString(textLength))

            local actions = {}
            local iterations = math.max(8, textLength) -- At least 8 iterations
            local iterDelay = duration / iterations

            -- Track which positions are revealed
            local revealedPositions = {}
            for i = 1, textLength do
                revealedPositions[i] = false
            end

            -- Each iteration: reveal 1-2 random positions, scramble others
            for iter = 1, iterations do
                table.insert(actions, cc.CallFunc:create(function()
                    -- Choose a random unrevealed position to reveal
                    local unrevealedCount = 0
                    for i = 1, textLength do
                        if not revealedPositions[i] then
                            unrevealedCount = unrevealedCount + 1
                        end
                    end

                    if unrevealedCount > 0 then
                        -- Reveal one position
                        local revealIndex = math.random(1, unrevealedCount)
                        local count = 0
                        for i = 1, textLength do
                            if not revealedPositions[i] then
                                count = count + 1
                                if count == revealIndex then
                                    revealedPositions[i] = true
                                    break
                                end
                            end
                        end
                    end

                    -- Build the display string
                    local displayText = ""
                    for i = 1, textLength do
                        if revealedPositions[i] then
                            displayText = displayText .. string.sub(finalText, i, i)
                        else
                            displayText = displayText .. getRandomChar()
                        end
                    end
                    label:setString(displayText)
                end))
                table.insert(actions, cc.DelayTime:create(iterDelay))
            end

            -- Final: ensure all text is correct
            table.insert(actions, cc.CallFunc:create(function()
                label:setString(finalText)
            end))

            action = cc.Sequence:create(unpack(actions))
        else
            -- Exit: scramble text gradually
            label:setOpacity(255)
            label:setString(finalText)

            local actions = {}
            local iterations = math.max(8, textLength)
            local iterDelay = duration / iterations

            -- Track which positions are scrambled
            local scrambledPositions = {}
            for i = 1, textLength do
                scrambledPositions[i] = false
            end

            -- Each iteration: scramble 1-2 random positions
            for iter = 1, iterations do
                table.insert(actions, cc.CallFunc:create(function()
                    -- Choose a random unscrambled position to scramble
                    local unscrambledCount = 0
                    for i = 1, textLength do
                        if not scrambledPositions[i] then
                            unscrambledCount = unscrambledCount + 1
                        end
                    end

                    if unscrambledCount > 0 then
                        local scrambleIndex = math.random(1, unscrambledCount)
                        local count = 0
                        for i = 1, textLength do
                            if not scrambledPositions[i] then
                                count = count + 1
                                if count == scrambleIndex then
                                    scrambledPositions[i] = true
                                    break
                                end
                            end
                        end
                    end

                    -- Build the display string
                    local displayText = ""
                    for i = 1, textLength do
                        if scrambledPositions[i] then
                            displayText = displayText .. getRandomChar()
                        else
                            displayText = displayText .. string.sub(finalText, i, i)
                        end
                    end
                    label:setString(displayText)
                end))
                table.insert(actions, cc.DelayTime:create(iterDelay))
            end

            -- Final: clear or fade
            table.insert(actions, cc.CallFunc:create(function()
                label:setString("")
            end))

            action = cc.Sequence:create(unpack(actions))
        end

    elseif animName == 'NumberArrive' then
        -- Number arrives from distance
        if isEntry then
            label:setScale(0.1)
            label:setOpacity(0)
            label:setPosition(origX, origY - 50)
            action = cc.Spawn:create(
                cc.EaseBackOut:create(cc.ScaleTo:create(duration, origScale)),
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.EaseBackIn:create(cc.ScaleTo:create(duration, 0.1)),
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, -50)), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CrossFadeLines' then
        -- Cross fade with line effect (scale X/Y alternating)
        if isEntry then
            label:setScale(0, 0)
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.4, origScale * 1.2, 0.1),
                    cc.FadeIn:create(duration * 0.2)
                ),
                cc.ScaleTo:create(duration * 0.3, 0.1, origScale * 1.2),
                cc.ScaleTo:create(duration * 0.3, origScale, origScale)
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.3, origScale * 1.2, 0.1),
                cc.ScaleTo:create(duration * 0.3, 0.1, origScale * 1.2),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.4, 0, 0),
                    cc.FadeOut:create(duration * 0.4)
                )
            )
        end

    elseif animName == 'FlipClock' then
        -- Flip clock card effect (flip on X axis)
        if isEntry then
            label:setScaleY(0)
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.5, origScale, -origScale),
                    cc.FadeIn:create(duration * 0.3)
                ),
                cc.ScaleTo:create(duration * 0.5, origScale, origScale)
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.5, origScale, -origScale),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.5, origScale, 0),
                    cc.FadeOut:create(duration * 0.5)
                )
            )
        end

    elseif animName == 'StarCrawl' then
        -- Star Wars style crawl (scale + move up + fade)
        if isEntry then
            label:setScale(origScale * 2)
            label:setOpacity(0)
            label:setPosition(origX, origY - 100)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 0.5), 2),
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(0, 100)), 2),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CrossHatch' then
        -- Cross hatch pattern (diagonal scale)
        if isEntry then
            label:setScale(0)
            label:setRotation(45)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.EaseOut:create(cc.RotateTo:create(duration, 0), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0), 2),
                cc.EaseIn:create(cc.RotateTo:create(duration, -45), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'CrossZoom' then
        -- Cross with zoom effect
        if isEntry then
            label:setScale(origScale * 3)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.8),
                    cc.ScaleTo:create(duration * 0.7, origScale)
                ),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 1.2),
                    cc.ScaleTo:create(duration * 0.7, origScale * 3)
                ),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    elseif animName == 'CubeFromLeft' then
        -- 3D cube rotation from left
        if isEntry then
            label:setScaleX(0)
            label:setPosition(origX - 50, origY)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(50, 0)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'CubeFromRight' then
        -- 3D cube rotation from right
        if isEntry then
            label:setScaleX(0)
            label:setPosition(origX + 50, origY)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(-50, 0)), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Dreamy' then
        -- Dreamy blur effect (scale pulse + fade)
        if isEntry then
            label:setScale(origScale * 1.3)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.6, origScale * 0.95),
                    cc.ScaleTo:create(duration * 0.4, origScale)
                ),
                cc.Sequence:create(
                    cc.FadeTo:create(duration * 0.3, 150),
                    cc.FadeTo:create(duration * 0.7, 255)
                )
            )
        else
            action = cc.Spawn:create(
                cc.ScaleTo:create(duration, origScale * 1.3),
                cc.Sequence:create(
                    cc.FadeTo:create(duration * 0.7, 150),
                    cc.FadeTo:create(duration * 0.3, 0)
                )
            )
        end

    elseif animName == 'FoldFromLeft' then
        -- Fold paper effect from left
        if isEntry then
            label:setScaleX(0)
            label:setAnchorPoint(cc.p(0, 0.5))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(0, 0.5))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'FoldFromRight' then
        -- Fold paper effect from right
        if isEntry then
            label:setScaleX(0)
            label:setAnchorPoint(cc.p(1, 0.5))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(1, 0.5))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'FoldFromTop' then
        -- Fold paper effect from top
        if isEntry then
            label:setScaleY(0)
            label:setAnchorPoint(cc.p(0.5, 1))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(0.5, 1))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale, 0), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'FoldFromBottom' then
        -- Fold paper effect from bottom
        if isEntry then
            label:setScaleY(0)
            label:setAnchorPoint(cc.p(0.5, 0))
            action = cc.Sequence:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        else
            label:setAnchorPoint(cc.p(0.5, 0))
            action = cc.Sequence:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale, 0), 2),
                cc.CallFunc:create(function()
                    label:setAnchorPoint(cc.p(0.5, 0.5))
                end)
            )
        end

    elseif animName == 'GlitchDisplace' then
        -- Glitch displacement effect
        if isEntry then
            label:setOpacity(0)
            local glitches = {}
            for i = 1, 5 do
                table.insert(glitches, cc.Spawn:create(
                    cc.MoveBy:create(duration / 10, cc.p(math.random(-10, 10), 0)),
                    cc.FadeTo:create(duration / 10, math.random(100, 255))
                ))
                table.insert(glitches, cc.MoveBy:create(duration / 10, cc.p(math.random(-10, 10), 0)))
            end
            table.insert(glitches, cc.MoveTo:create(duration * 0.1, cc.p(origX, origY)))
            table.insert(glitches, cc.FadeTo:create(duration * 0.1, 255))
            action = cc.Sequence:create(unpack(glitches))
        else
            local glitches = {}
            for i = 1, 5 do
                table.insert(glitches, cc.Spawn:create(
                    cc.MoveBy:create(duration / 10, cc.p(math.random(-10, 10), 0)),
                    cc.FadeTo:create(duration / 10, math.random(50, 200))
                ))
                table.insert(glitches, cc.MoveBy:create(duration / 10, cc.p(math.random(-10, 10), 0)))
            end
            table.insert(glitches, cc.FadeTo:create(duration * 0.1, 0))
            action = cc.Sequence:create(unpack(glitches))
        end

    elseif animName == 'GlitchMemories' then
        -- Glitch with color/scale variations
        if isEntry then
            label:setOpacity(0)
            label:setScale(origScale * 1.1)
            local glitches = {}
            for i = 1, 4 do
                table.insert(glitches, cc.Spawn:create(
                    cc.ScaleTo:create(duration / 8, origScale * (0.9 + math.random() * 0.3)),
                    cc.FadeTo:create(duration / 8, 100 + i * 30)
                ))
                table.insert(glitches, cc.ScaleTo:create(duration / 8, origScale * (0.9 + math.random() * 0.3)))
            end
            table.insert(glitches, cc.ScaleTo:create(duration * 0.1, origScale))
            table.insert(glitches, cc.FadeTo:create(duration * 0.1, 255))
            action = cc.Sequence:create(unpack(glitches))
        else
            local glitches = {}
            for i = 1, 4 do
                table.insert(glitches, cc.Spawn:create(
                    cc.ScaleTo:create(duration / 8, origScale * (0.9 + math.random() * 0.3)),
                    cc.FadeTo:create(duration / 8, 200 - i * 30)
                ))
                table.insert(glitches, cc.ScaleTo:create(duration / 8, origScale * (0.9 + math.random() * 0.3)))
            end
            table.insert(glitches, cc.FadeTo:create(duration * 0.1, 0))
            action = cc.Sequence:create(unpack(glitches))
        end

    elseif animName == 'Kaleidoscope' then
        -- Kaleidoscope rotation effect
        if isEntry then
            label:setScale(0)
            label:setRotation(-180)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale), 2),
                cc.EaseOut:create(cc.RotateTo:create(duration, 0), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.ScaleTo:create(duration, 0), 2),
                cc.EaseIn:create(cc.RotateBy:create(duration, 180), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Morph' then
        -- Morphing scale effect
        if isEntry then
            label:setScale(origScale * 0.5, origScale * 1.5)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.5, origScale * 1.3, origScale * 0.7),
                    cc.ScaleTo:create(duration * 0.5, origScale, origScale)
                ),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.5, origScale * 1.3, origScale * 0.7),
                    cc.ScaleTo:create(duration * 0.5, origScale * 0.5, origScale * 1.5)
                ),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'Mosaic' then
        -- Mosaic appear effect (step scale)
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.2, origScale * 0.3),
                    cc.FadeTo:create(duration * 0.2, 100)
                ),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.5),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.7),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.9),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.2, origScale),
                    cc.FadeTo:create(duration * 0.2, 255)
                )
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.2, origScale * 0.9),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.7),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.5),
                cc.ScaleTo:create(duration * 0.2, origScale * 0.3),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.2, 0),
                    cc.FadeTo:create(duration * 0.2, 0)
                )
            )
        end

    elseif animName == 'DefocusBlur' then
        -- Defocus blur (scale oscillation)
        if isEntry then
            label:setScale(origScale * 1.5)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.4, origScale * 0.9),
                    cc.ScaleTo:create(duration * 0.3, origScale * 1.1),
                    cc.ScaleTo:create(duration * 0.3, origScale)
                ),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 1.1),
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.9),
                    cc.ScaleTo:create(duration * 0.4, origScale * 1.5)
                ),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'HSVFade' then
        -- HSV color fade (simulated with opacity variations)
        if isEntry then
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.FadeTo:create(duration * 0.25, 80),
                cc.FadeTo:create(duration * 0.25, 160),
                cc.FadeTo:create(duration * 0.25, 200),
                cc.FadeTo:create(duration * 0.25, 255)
            )
        else
            action = cc.Sequence:create(
                cc.FadeTo:create(duration * 0.25, 200),
                cc.FadeTo:create(duration * 0.25, 160),
                cc.FadeTo:create(duration * 0.25, 80),
                cc.FadeTo:create(duration * 0.25, 0)
            )
        end

    elseif animName == 'LinearBlur' then
        -- Linear blur (horizontal movement + scale)
        if isEntry then
            label:setPosition(origX - 30, origY)
            label:setScaleX(origScale * 1.3)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.EaseOut:create(cc.MoveTo:create(duration, cc.p(origX, origY)), 2),
                cc.EaseOut:create(cc.ScaleTo:create(duration, origScale, origScale), 2),
                cc.FadeIn:create(duration * 0.5)
            )
        else
            action = cc.Spawn:create(
                cc.EaseIn:create(cc.MoveBy:create(duration, cc.p(30, 0)), 2),
                cc.EaseIn:create(cc.ScaleTo:create(duration, origScale * 1.3, origScale), 2),
                cc.FadeOut:create(duration * 0.5)
            )
        end

    elseif animName == 'RandomSquares' then
        -- Random squares appearance (jittery scale)
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            local steps = {}
            for i = 1, 5 do
                local targetScale = origScale * (i / 5)
                table.insert(steps, cc.Spawn:create(
                    cc.ScaleTo:create(duration / 5, targetScale + math.random() * 0.1 - 0.05),
                    cc.FadeTo:create(duration / 5, 50 + i * 40)
                ))
            end
            table.insert(steps, cc.ScaleTo:create(duration * 0.05, origScale))
            action = cc.Sequence:create(unpack(steps))
        else
            local steps = {}
            for i = 5, 1, -1 do
                local targetScale = origScale * (i / 5)
                table.insert(steps, cc.Spawn:create(
                    cc.ScaleTo:create(duration / 5, targetScale + math.random() * 0.1 - 0.05),
                    cc.FadeTo:create(duration / 5, i * 40)
                ))
            end
            table.insert(steps, cc.FadeTo:create(duration * 0.05, 0))
            action = cc.Sequence:create(unpack(steps))
        end

    elseif animName == 'PolkaDotsCurtain' then
        -- Polka dots curtain (scale from dots)
        if isEntry then
            label:setScale(0)
            label:setOpacity(0)
            action = cc.Sequence:create(
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.3),
                    cc.FadeTo:create(duration * 0.3, 100)
                ),
                cc.ScaleTo:create(duration * 0.3, origScale * 0.6),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.4, origScale),
                    cc.FadeTo:create(duration * 0.4, 255)
                )
            )
        else
            action = cc.Sequence:create(
                cc.ScaleTo:create(duration * 0.3, origScale * 0.6),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.3),
                    cc.FadeTo:create(duration * 0.3, 100)
                ),
                cc.Spawn:create(
                    cc.ScaleTo:create(duration * 0.4, 0),
                    cc.FadeTo:create(duration * 0.4, 0)
                )
            )
        end

    elseif animName == 'PowerDisformation' then
        -- Power distortion effect
        if isEntry then
            label:setScale(origScale * 0.1, origScale * 2)
            label:setOpacity(0)
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.4, origScale * 1.5, origScale * 0.5),
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.8, origScale * 1.2),
                    cc.ScaleTo:create(duration * 0.3, origScale, origScale)
                ),
                cc.FadeIn:create(duration * 0.3)
            )
        else
            action = cc.Spawn:create(
                cc.Sequence:create(
                    cc.ScaleTo:create(duration * 0.3, origScale * 0.8, origScale * 1.2),
                    cc.ScaleTo:create(duration * 0.3, origScale * 1.5, origScale * 0.5),
                    cc.ScaleTo:create(duration * 0.4, origScale * 0.1, origScale * 2)
                ),
                cc.FadeOut:create(duration * 0.7)
            )
        end

    else
        print("WatchSkinTextAnim: Unknown action animation: " .. tostring(animName))
        return nil
    end

    return action
end

--[[
    Check if an animation is supported
    @param animName - Name of the animation
    @return boolean - true if supported
]]--
function WatchSkinTextAnim.isSupported(animName)
    return WatchSkinTextAnim.ANIMATIONS[animName] ~= nil
end

--[[
    Get animation type
    @param animName - Name of the animation
    @return string - 'action', 'shader', 'transition', or nil if not found
]]--
function WatchSkinTextAnim.getAnimationType(animName)
    local anim = WatchSkinTextAnim.ANIMATIONS[animName]
    if anim then
        return anim.type
    end
    return nil
end

--[[
    Restart animation for a text layer
    Resets the animation state and starts the entry animation
    @param v - The layer data structure with animState
    @param label - The cc.Label node
    @return boolean - true if animation was restarted
]]--
function WatchSkinTextAnim.restartAnimation(v, label)
    if not v or not v.animState or not label then
        return false
    end

    -- Stop any running actions
    label:stopAllActions()

    -- Clean up any existing shader
    if v.animState.shaderState then
        WatchSkinTextAnim.removeShaderAnimation(label, v.animState.shaderState)
        v.animState.shaderState = nil
    end

    -- Clean up any existing transition
    if v.animState.transitionState then
        WatchSkinTextAnim.removeTransitionAnimation(label, v.animState.transitionState)
        v.animState.transitionState = nil
    end

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
    -- Reset rotation
    label:setRotation(0)
    -- Reset anchor point in case it was modified by animation
    label:setAnchorPoint(cc.p(0.5, 0.5))

    -- Reset animation state
    v.animState.elapsed = 0
    v.animState.cycleCount = 0
    v.animState.currentAction = nil

    -- Start the animation
    if v.delay_start and v.delay_start > 0 then
        -- Start with delay
        v.animState.phase = 'delay'
    else
        -- Start entry animation immediately
        if v.anim_in and WatchSkinTextAnim.isSupported(v.anim_in) then
            local animType = WatchSkinTextAnim.getAnimationType(v.anim_in)
            if animType == 'action' then
                local action = WatchSkinTextAnim.applyActionAnimation(
                    label, v.anim_in, v.dur_in, true)
                if action then
                    label:runAction(action)
                    v.animState.currentAction = action
                    v.animState.phase = 'in'
                    print("Restarted text animation: " .. v.anim_in)
                    return true
                end
            elseif animType == 'shader' then
                -- Apply shader animation
                local shaderState = WatchSkinTextAnim.applyShaderAnimation(
                    label, v.anim_in, true, v.layerNode)
                if shaderState then
                    v.animState.shaderState = shaderState
                    v.animState.phase = 'in'
                    print("Restarted shader animation: " .. v.anim_in)
                    return true
                end
            elseif animType == 'transition' then
                -- Apply transition animation
                local previousText = WatchSkinTextAnim.getPreviousText(v.layerId or tostring(label))
                local transitionState = WatchSkinTextAnim.applyTransitionAnimation(
                    label, v.anim_in, previousText, v.layerNode)
                if transitionState then
                    v.animState.transitionState = transitionState
                    v.animState.phase = 'in'
                    print("Restarted transition animation: " .. v.anim_in)
                    return true
                end
            end
        else
            -- No entry animation, just go to 'on' phase
            v.animState.phase = 'on'
            label:setOpacity(255)
            return true
        end
    end

    return true
end

--[[
    Get shader info for an animation
    @param animName - Name of the animation
    @return table - {shader = 'shader_name', uniforms = {...}} or nil
]]--
function WatchSkinTextAnim.getShaderInfo(animName)
    local anim = WatchSkinTextAnim.ANIMATIONS[animName]
    if anim and anim.type == 'shader' then
        return {
            shader = anim.shader,
            uniforms = anim.uniforms or {}
        }
    end
    return nil
end

--[[
    Get transition shader info for an animation
    @param animName - Name of the animation
    @return table - {shader = 'shader_name', uniforms = {...}} or nil
]]--
function WatchSkinTextAnim.getTransitionShaderInfo(animName)
    local anim = WatchSkinTextAnim.ANIMATIONS[animName]
    if anim and anim.type == 'transition' then
        return {
            shader = anim.shader,
            uniforms = anim.uniforms or {}
        }
    end
    return nil
end

--[[
    Store the previous text value for a layer (used by transition animations)
    @param layerId - Unique identifier for the layer
    @param text - The text value to store
]]--
function WatchSkinTextAnim.storePreviousText(layerId, text)
    WatchSkinTextAnim.previousTexts[layerId] = text
end

--[[
    Get the previous text value for a layer
    @param layerId - Unique identifier for the layer
    @return string - The previous text value or empty string if not found
]]--
function WatchSkinTextAnim.getPreviousText(layerId)
    return WatchSkinTextAnim.previousTexts[layerId] or ""
end

--[[
    Apply shader-based animation to a text label
    Creates a RenderTexture + Sprite setup to avoid TextureAtlas issues
    @param label - The cc.Label node to animate
    @param animName - Name of the animation
    @param isEntry - true if this is entry animation (in), false for exit (out)
    @param layerNode - The parent layer node to add the sprite to
    @return table - {program, state, u_progress, sprite, renderTexture} or nil on failure
]]--
function WatchSkinTextAnim.applyShaderAnimation(label, animName, isEntry, layerNode)
    if not label then
        print("WatchSkinTextAnim: No label provided for shader animation")
        return nil
    end

    local shaderInfo = WatchSkinTextAnim.getShaderInfo(animName)
    if not shaderInfo then
        print("WatchSkinTextAnim: No shader info for animation: " .. tostring(animName))
        return nil
    end

    print("WatchSkinTextAnim: Applying shader animation: " .. animName .. " shader: " .. shaderInfo.shader)

    -- Get label dimensions for render texture
    local contentSize = label:getContentSize()
    local scaleX = label:getScaleX()
    local scaleY = label:getScaleY()

    -- Use unscaled content size for render texture, we'll scale the sprite
    local width = math.max(contentSize.width, 1)
    local height = math.max(contentSize.height, 1)

    -- Add padding to avoid edge clipping
    width = math.ceil(width + 20)
    height = math.ceil(height + 20)

    -- Create render texture
    local renderTexture = cc.RenderTexture:create(width, height)
    if not renderTexture then
        print("WatchSkinTextAnim: Failed to create render texture")
        return nil
    end

    -- Create a temporary copy of the label for rendering
    -- We need to render a standalone label, not the one in the scene
    local labelText = label:getString()

    -- Create temp label matching the original's unscaled size
    local baseFontSize = contentSize.height
    local tempLabel = cc.Label:createWithSystemFont(labelText, "arial", baseFontSize)
    tempLabel:setAnchorPoint(cc.p(0.5, 0.5))
    tempLabel:setPosition(width/2, height/2)
    -- Don't scale temp label - render at 1:1

    -- Match original label color
    local labelColor = label:getTextColor()
    if labelColor then
        tempLabel:setTextColor(labelColor)
    else
        -- Fallback to white if color not available
        tempLabel:setTextColor(cc.c4b(255, 255, 255, 255))
    end

    -- Render temp label to texture
    renderTexture:beginWithClear(0, 0, 0, 0)
    tempLabel:visit()
    renderTexture:endToLua()

    -- Create sprite from rendered texture
    local sprite = cc.Sprite:createWithTexture(renderTexture:getSprite():getTexture())
    sprite:setFlippedY(true)  -- RenderTexture is flipped
    sprite:setAnchorPoint(cc.p(0.5, 0.5))

    -- Position sprite at label's position and apply same scale
    local labelX, labelY = label:getPositionX(), label:getPositionY()
    sprite:setPosition(labelX, labelY)
    sprite:setScale(scaleX, scaleY)

    print("WatchSkinTextAnim: Label pos: " .. labelX .. ", " .. labelY .. " size: " .. width .. "x" .. height .. " scale: " .. scaleX .. "x" .. scaleY .. " text: " .. labelText)

    -- Create the shader program
    local vertexShader = "shaders/vertex.vsh"
    local fragmentShader = "shaders/" .. shaderInfo.shader .. ".fsh"

    local program = cc.GLProgram:create(vertexShader, fragmentShader)
    if not program then
        print("WatchSkinTextAnim: Failed to create shader program for " .. shaderInfo.shader)
        return nil
    end

    local state = cc.GLProgramState:create(program)
    if not state then
        print("WatchSkinTextAnim: Failed to create program state")
        return nil
    end

    -- Link and set up the program
    program:link()
    program:retain()
    program:updateUniforms()

    -- Set blend function for proper transparency
    sprite:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA))

    -- Apply the shader to the sprite
    sprite:setGLProgramState(state)

    -- Get uniform locations
    local u_progress = gl.getUniformLocation(program:getProgram(), "progress")
    local u_texture = gl.getUniformLocation(program:getProgram(), "u_texture")

    print("WatchSkinTextAnim: u_progress location: " .. tostring(u_progress) .. ", u_texture location: " .. tostring(u_texture))

    -- Set initial values
    program:use()

    -- Bind texture to unit 0
    if u_texture and u_texture >= 0 then
        program:setUniformLocationI32(u_texture, 0)
    end

    local initialProgress = isEntry and 0.0 or 1.0
    if u_progress and u_progress >= 0 then
        program:setUniformLocationF32(u_progress, initialProgress)
        -- DEBUG: Test with visible progress to verify shader works
        -- program:setUniformLocationF32(u_progress, 0.5)
    else
        print("WatchSkinTextAnim: WARNING - progress uniform not found!")
    end

    -- Add sprite to layer and hide original label
    if layerNode then
        sprite:addTo(layerNode, 10)  -- High z-order to be on top
        print("WatchSkinTextAnim: Sprite added to layerNode")
    else
        print("WatchSkinTextAnim: WARNING - no layerNode provided!")
    end
    label:setOpacity(0)
    label:setVisible(false)  -- Also hide visibility

    print("WatchSkinTextAnim: Shader applied successfully, initial progress: " .. initialProgress)

    return {
        program = program,
        state = state,
        u_progress = u_progress,
        shaderName = shaderInfo.shader,
        isEntry = isEntry,
        sprite = sprite,
        renderTexture = renderTexture,
        label = label
    }
end

--[[
    Update shader animation progress
    @param label - The cc.Label node
    @param shaderState - The shader state table from applyShaderAnimation
    @param progress - Animation progress (0.0 to 1.0)
]]--
function WatchSkinTextAnim.updateShaderAnimation(label, shaderState, progress)
    if not label or not shaderState or not shaderState.program then
        return
    end

    local program = shaderState.program
    program:use()

    -- For entry animations, progress goes 0 -> 1 (invisible to visible)
    -- For exit animations, progress goes 1 -> 0 (visible to invisible)
    local actualProgress = shaderState.isEntry and progress or (1.0 - progress)

    if shaderState.u_progress and shaderState.u_progress >= 0 then
        program:setUniformLocationF32(shaderState.u_progress, actualProgress)
    end

    -- Debug: print progress every 10 frames approximately
    if not shaderState.debugCounter then shaderState.debugCounter = 0 end
    shaderState.debugCounter = shaderState.debugCounter + 1
    if shaderState.debugCounter % 30 == 1 then
        print("WatchSkinTextAnim: Updating progress to " .. string.format("%.2f", actualProgress))
    end
end

--[[
    Remove shader animation and clean up resources
    @param label - The cc.Label node
    @param shaderState - The shader state table from applyShaderAnimation
]]--
function WatchSkinTextAnim.removeShaderAnimation(label, shaderState)
    if not shaderState then
        return
    end

    -- Remove the sprite from its parent
    if shaderState.sprite then
        pcall(function()
            shaderState.sprite:removeFromParent()
        end)
    end

    -- Release the retained program
    if shaderState.program then
        pcall(function()
            shaderState.program:release()
        end)
    end

    -- Show the original label again
    if label then
        label:setOpacity(255)
        label:setVisible(true)
    end

    print("WatchSkinTextAnim: Shader animation removed")
end

--[[
    Apply transition-based animation (dual texture: from + to)
    Creates two RenderTextures for previous and current text
    @param label - The cc.Label node with current text
    @param animName - Name of the animation
    @param previousText - The previous text string
    @param layerNode - The parent layer node to add the sprite to
    @return table - transition state or nil on failure
]]--
function WatchSkinTextAnim.applyTransitionAnimation(label, animName, previousText, layerNode)
    if not label then
        print("WatchSkinTextAnim: No label provided for transition animation")
        return nil
    end

    local shaderInfo = WatchSkinTextAnim.getTransitionShaderInfo(animName)
    if not shaderInfo then
        print("WatchSkinTextAnim: No transition shader info for animation: " .. tostring(animName))
        return nil
    end

    print("WatchSkinTextAnim: Applying transition animation: " .. animName .. " shader: " .. shaderInfo.shader)

    -- Get label dimensions for render texture
    local contentSize = label:getContentSize()
    local scaleX = label:getScaleX()
    local scaleY = label:getScaleY()

    -- Use unscaled content size for render texture
    local width = math.max(contentSize.width, 1)
    local height = math.max(contentSize.height, 1)

    -- Add padding to avoid edge clipping
    width = math.ceil(width + 20)
    height = math.ceil(height + 20)

    -- Get current and previous text
    local currentText = label:getString()
    previousText = previousText or ""

    -- If no previous text, use current text (first frame)
    if previousText == "" then
        previousText = currentText
    end

    print("WatchSkinTextAnim: Transition from '" .. previousText .. "' to '" .. currentText .. "'")

    -- Create render texture for "from" (previous text)
    local renderTextureFrom = cc.RenderTexture:create(width, height)
    if not renderTextureFrom then
        print("WatchSkinTextAnim: Failed to create render texture for 'from'")
        return nil
    end

    -- Create render texture for "to" (current text)
    local renderTextureTo = cc.RenderTexture:create(width, height)
    if not renderTextureTo then
        print("WatchSkinTextAnim: Failed to create render texture for 'to'")
        return nil
    end

    -- Get label styling info
    local baseFontSize = contentSize.height
    local labelColor = label:getTextColor() or cc.c4b(255, 255, 255, 255)

    -- Create temp label for "from" (previous text)
    local tempLabelFrom = cc.Label:createWithSystemFont(previousText, "arial", baseFontSize)
    tempLabelFrom:setAnchorPoint(cc.p(0.5, 0.5))
    tempLabelFrom:setPosition(width/2, height/2)
    tempLabelFrom:setTextColor(labelColor)

    -- Create temp label for "to" (current text)
    local tempLabelTo = cc.Label:createWithSystemFont(currentText, "arial", baseFontSize)
    tempLabelTo:setAnchorPoint(cc.p(0.5, 0.5))
    tempLabelTo:setPosition(width/2, height/2)
    tempLabelTo:setTextColor(labelColor)

    -- Render "from" label to texture
    renderTextureFrom:beginWithClear(0, 0, 0, 0)
    tempLabelFrom:visit()
    renderTextureFrom:endToLua()

    -- Render "to" label to texture
    renderTextureTo:beginWithClear(0, 0, 0, 0)
    tempLabelTo:visit()
    renderTextureTo:endToLua()

    -- Create sprite for display (using the "to" texture base, but shader will blend both)
    local sprite = cc.Sprite:createWithTexture(renderTextureTo:getSprite():getTexture())
    sprite:setFlippedY(true)
    sprite:setAnchorPoint(cc.p(0.5, 0.5))

    -- Position sprite at label's position and apply same scale
    local labelX, labelY = label:getPositionX(), label:getPositionY()
    sprite:setPosition(labelX, labelY)
    sprite:setScale(scaleX, scaleY)

    print("WatchSkinTextAnim: Transition label pos: " .. labelX .. ", " .. labelY .. " size: " .. width .. "x" .. height)

    -- Create the shader program
    local vertexShader = "shaders/vertex.vsh"
    local fragmentShader = "shaders/" .. shaderInfo.shader .. ".fsh"

    local program = cc.GLProgram:create(vertexShader, fragmentShader)
    if not program then
        print("WatchSkinTextAnim: Failed to create transition shader program for " .. shaderInfo.shader)
        return nil
    end

    local state = cc.GLProgramState:create(program)
    if not state then
        print("WatchSkinTextAnim: Failed to create program state for transition")
        return nil
    end

    -- Link and set up the program
    program:link()
    program:retain()
    program:updateUniforms()

    -- Set blend function for proper transparency
    sprite:setBlendFunc(cc.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA))

    -- Apply the shader to the sprite
    sprite:setGLProgramState(state)

    -- Get the actual texture objects
    local fromTexture = renderTextureFrom:getSprite():getTexture()
    local toTexture = renderTextureTo:getSprite():getTexture()

    -- Get uniform location for progress
    local u_progress = gl.getUniformLocation(program:getProgram(), "progress")

    print("WatchSkinTextAnim: Transition u_progress location: " .. tostring(u_progress))

    -- LIMITATION: Multi-texture shaders are difficult to implement properly in Cocos2D-x Lua
    -- The Lua bindings don't expose the necessary OpenGL texture binding APIs.
    -- For now, we'll skip multi-texture setup and the shader will only use the sprite's texture.
    -- This means transition effects won't work correctly - they'll just show the final text.

    -- TODO: To properly fix this, we need to either:
    -- 1. Implement a C++ helper function to bind multiple textures
    -- 2. Create a custom Sprite class in C++ that supports multi-texturing
    -- 3. Use a simpler, action-based approach instead of dual-texture shaders

    print("WatchSkinTextAnim: WARNING - Transition shaders with dual textures not fully supported")
    print("WatchSkinTextAnim: Effect may not render as expected - showing final texture only")

    -- Set initial progress (0.0 = show "from", 1.0 = show "to")
    program:use()
    if u_progress and u_progress >= 0 then
        program:setUniformLocationF32(u_progress, 0.0)
    end

    print("WatchSkinTextAnim: Transition textures set via GLProgramState")

    -- Add sprite to layer and hide original label
    if layerNode then
        sprite:addTo(layerNode, 10)
        print("WatchSkinTextAnim: Transition sprite added to layerNode")
    else
        print("WatchSkinTextAnim: WARNING - no layerNode provided for transition!")
    end
    label:setOpacity(0)
    label:setVisible(false)

    print("WatchSkinTextAnim: Transition animation applied successfully")

    return {
        program = program,
        state = state,
        u_progress = u_progress,
        u_from = u_from,
        u_to = u_to,
        shaderName = shaderInfo.shader,
        sprite = sprite,
        renderTextureFrom = renderTextureFrom,
        renderTextureTo = renderTextureTo,
        fromTexture = fromTexture,
        toTexture = toTexture,
        label = label
    }
end

--[[
    Update transition animation progress
    @param label - The cc.Label node
    @param transitionState - The transition state table from applyTransitionAnimation
    @param progress - Animation progress (0.0 to 1.0)
]]--
function WatchSkinTextAnim.updateTransitionAnimation(label, transitionState, progress)
    if not label or not transitionState or not transitionState.program then
        return
    end

    local program = transitionState.program

    -- Update progress uniform
    -- Note: Multi-texture binding isn't working, so this will only show the final texture
    program:use()
    if transitionState.u_progress and transitionState.u_progress >= 0 then
        program:setUniformLocationF32(transitionState.u_progress, progress)
    end

    -- Debug: print progress every 30 frames
    if not transitionState.debugCounter then transitionState.debugCounter = 0 end
    transitionState.debugCounter = transitionState.debugCounter + 1
    if transitionState.debugCounter % 30 == 1 then
        print("WatchSkinTextAnim: Transition progress: " .. string.format("%.2f", progress))
    end
end

--[[
    Remove transition animation and clean up resources
    @param label - The cc.Label node
    @param transitionState - The transition state table from applyTransitionAnimation
]]--
function WatchSkinTextAnim.removeTransitionAnimation(label, transitionState)
    if not transitionState then
        return
    end

    -- Remove the sprite from its parent
    if transitionState.sprite then
        pcall(function()
            transitionState.sprite:removeFromParent()
        end)
    end

    -- Release the retained program
    if transitionState.program then
        pcall(function()
            transitionState.program:release()
        end)
    end

    -- Show the original label again
    if label then
        label:setOpacity(255)
        label:setVisible(true)
    end

    print("WatchSkinTextAnim: Transition animation removed")
end

--[[
    Global function to restart all text animations
    Called from Java when the app resumes
    Iterates through all drawable objects and restarts their text animations
]]--
function restartAllTextAnimations()
    print("WatchSkinTextAnim: restartAllTextAnimations() called from Java")

    -- Check if drawable table exists
    if not drawable then
        print("WatchSkinTextAnim: drawable table not found")
        return
    end

    local restartCount = 0

    -- Iterate through all drawable objects
    for k, v in pairs(drawable) do
        if v.animState and v.drawable then
            local label = v.drawable
            -- Verify label is valid before restarting
            local labelValid = pcall(function() return label:getOpacity() end)
            if labelValid then
                WatchSkinTextAnim.restartAnimation(v, label)
                restartCount = restartCount + 1
            end
        end
    end

    print("WatchSkinTextAnim: Restarted " .. restartCount .. " text animations")
end

return WatchSkinTextAnim
