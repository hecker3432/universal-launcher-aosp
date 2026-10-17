#ifdef GL_ES
varying mediump vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif
uniform sampler2D u_texture;
uniform float u_opacity;
uniform vec3 u_1;  // color A
uniform vec3 u_2;  // color B
uniform vec3 u_3; // width, height, size
uniform float u_4; // type
uniform float u_5; // margin
uniform float u_6; // %
uniform vec3 u_7;  // color C
uniform float u_8; // progress type
uniform float u_9; // outside opacity (0-100)

varying vec4 v_fragmentColor;

float rounding(vec2 uv, float rad) {
    return 1.+step(rad,distance(vec2(rad),uv)) * (step(.0, uv.y)*step(.0, uv.x)*step(rad, uv.x+uv.y)-1.);
}

float roundRect(float radius, float margin, in vec2 uv, int type) {
    uv -= margin;
    float vis = 1.;
    if (radius == 0.) type = 0;

    // Progress bar corner types: mentioned corners are SHARP, others are ROUNDED
    // 0=all, 1=nothing, 2=BR, 3=BL, 4=TR, 5=TL, 6=BLBR, 7=TLTR, 8=TRBR, 9=TLBL,
    // 10=TRBL, 11=TLBR, 12=TRBLBR, 13=TLBLBR, 14=TLTRBR, 15=TLTRBL, 16=all
    // NOTE: Shader coords have Y flipped, so swap TL↔BL and TR↔BR
    bool roundBL = (type != 0 && type != 5 && type != 7 && type != 9 && type != 11 && type != 13 && type != 14 && type != 15 && type != 16); // User's TL
    bool roundTL = (type != 0 && type != 3 && type != 6 && type != 9 && type != 10 && type != 12 && type != 13 && type != 15 && type != 16); // User's BL
    bool roundTR = (type != 0 && type != 2 && type != 6 && type != 8 && type != 11 && type != 12 && type != 13 && type != 14 && type != 16); // User's BR
    bool roundBR = (type != 0 && type != 4 && type != 7 && type != 8 && type != 10 && type != 12 && type != 14 && type != 15 && type != 16); // User's TR

    // Special case: type 1 = nothing sharp = all rounded
    if (type == 1) {
        roundBL = true; roundTL = true; roundTR = true; roundBR = true;
    }

    // Corner 1: BL (bottom-left)
    if (roundBL)
        vis = rounding(uv, radius);
    else
        vis = step(.0, uv.y)*step(.0, uv.x);

    // Corner 2: TL (top-left)
    uv.y = u_3.y - uv.y - 2.*margin;
    if (roundTL)
        vis *= rounding(uv, radius);
    else
        vis *= step(.0, uv.y)*step(.0, uv.x);

    // Corner 3: TR (top-right)
    uv.x = u_3.x - uv.x - 2.*margin;
    if (roundTR)
        vis *= rounding(uv, radius);
    else
        vis *= step(.0, uv.y)*step(.0, uv.x);

    // Corner 4: BR (bottom-right)
    uv.y = u_3.y - uv.y - 2.*margin;
    if (roundBR)
        vis *= rounding(uv, radius);
    else
        vis *= step(.0, uv.y)*step(.0, uv.x);

    return (vis);
}

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor;
    vec2 pos = vec2(v_texCoord.x * u_3.x, v_texCoord.y * u_3.y);
    float minR = min(u_3.x, u_3.y) / 2.;
    float rect1 = roundRect(min(u_3.z, minR), 0., pos.xy, int(u_4)); // main radius u_3.z / 3.
    float rect2 = 0.0;       // progress bar
    color.a *= u_opacity;

    minR = minR - u_5; //u_3.z / 6.
    // rect2 uses same corner type as border (u_4)
    // Even with margin=0, corner_type should still apply to the shape
    rect2 = roundRect(min(u_3.z, minR), u_5, pos.xy, int(u_4));

    // Always render border (color4) in the margin area if margin > 0
    if (rect1 > 0.) {
        if (rect2 > 0.) {
            // Inside progress area - show gradient progress
            float progressWidth = (u_3.x - 2.0 * u_5) * (u_6 / 100.0);
            float barHeight = u_3.y - 2.0 * u_5;
            float capRadius = barHeight / 2.0;

            // Calculate progress fill rectangle with rounded corners
            // Create a rectangle from 0 to progressWidth with appropriate corner rounding
            vec2 progressPos = vec2(pos.x - u_5, pos.y - u_5);

            // Determine which corners to round for progress fill:
            // Left edge (BL, TL in shader coords = user's TL, BL): inherit from border corner_type
            // Right edge (TR, BR in shader coords = user's BR, TR): controlled by end_style

            // Get border corner settings (which corners are rounded in u_4)
            int borderType = int(u_4);

            // Calculate custom rounding for progress fill
            // We need to check each corner individually
            bool roundBL_prog = (borderType != 0 && borderType != 5 && borderType != 7 && borderType != 9 && borderType != 11 && borderType != 13 && borderType != 14 && borderType != 15 && borderType != 16);
            bool roundTL_prog = (borderType != 0 && borderType != 3 && borderType != 6 && borderType != 9 && borderType != 10 && borderType != 12 && borderType != 13 && borderType != 15 && borderType != 16);

            // Right edge corners are controlled by end_style only
            bool roundTR_prog = (u_8 == 1.0);
            bool roundBR_prog = (u_8 == 1.0);

            if (borderType == 1) {
                // Special case: all rounded
                roundBL_prog = true; roundTL_prog = true;
            }

            // Now manually apply rounding to progress fill
            float progVis = 1.;
            vec2 pPos = progressPos;

            // Corner 1: BL (user's TL)
            if (roundBL_prog)
                progVis = rounding(pPos, min(capRadius, minR));
            else
                progVis = step(.0, pPos.y)*step(.0, pPos.x);

            // Corner 2: TL (user's BL)
            pPos.y = barHeight - pPos.y;
            if (roundTL_prog)
                progVis *= rounding(pPos, min(capRadius, minR));
            else
                progVis *= step(.0, pPos.y)*step(.0, pPos.x);

            // Corner 3: TR (user's BR)
            pPos.x = progressWidth - pPos.x;
            if (roundTR_prog)
                progVis *= rounding(pPos, min(u_3.z, minR)); // Match border corner radius
            else
                progVis *= step(.0, pPos.y)*step(.0, pPos.x);

            // Corner 4: BR (user's TR)
            pPos.y = barHeight - pPos.y;
            if (roundBR_prog)
                progVis *= rounding(pPos, min(u_3.z, minR)); // Match border corner radius
            else
                progVis *= step(.0, pPos.y)*step(.0, pPos.x);

            float progressRect = progVis;

            // Check if pixel is within the progress fill and within width
            bool inFilledArea = (progressRect > 0. && progressPos.x < progressWidth);

            if (inFilledArea) {
                // Calculate gradient based on x position
                float yNew = ((pos.x - u_5) / (u_3.x - 2.0 * u_5)) / (u_6 / 100.0);
                vec3 mixed = vec3(mix(u_1, u_2, yNew));
                gl_FragColor = vec4(mixed, color.a);
            } else {
                // Only draw outside color if margin > 0
                if (u_5 > 0.0) {
                    // Layer color3 (u_7) over color4 (color.rgb) with outside_opacity (u_9)
                    // u_9=0: fully transparent color3, shows color4
                    // u_9=100: fully opaque color3
                    float alpha = u_9 / 100.0;
                    vec3 blended = u_7 * alpha + color.rgb * (1.0 - alpha);
                    gl_FragColor = vec4(blended, color.a);
                } else {
                    // margin=0, make unfilled area transparent
                    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
                }
            }
        } else {
            // In border area (between rect1 and rect2) - show color4 border
            gl_FragColor = vec4(color.rgb, color.a);
        }
    } else {
        // Outside everything - transparent
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    }
}