#ifdef GL_ES
varying mediump vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif
uniform sampler2D u_texture;
uniform float u_opacity;
uniform vec3 u_1;  // color A
uniform vec3 u_2;  // color B
uniform float u_3; // total possible angle
uniform float u_4; // angle
uniform float u_5; // inner size
uniform float u_6; // counterwise 0 : YES, 1 : NO
uniform float u_7; // outside opacity
uniform vec3 u_8;  // color outside

varying vec4 v_fragmentColor;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor;
    vec2 centerPos = vec2(0.5, 0.5);
    if (distance(centerPos, v_texCoord) > u_5)
    {
        float angle = degrees(atan(v_texCoord.x - centerPos.x, centerPos.y - v_texCoord.y));
        if (angle < 0.0) angle += 360.0;

        float per = mod(u_4, 360.1);//mod(u_4 * u_3 / 360.0, 360.);
        if (u_6==1.) per = mod(u_3 - u_4, 360.1);
        float ray = ((0.5-u_5)/2.0);
        float angoffset = abs(degrees(tan(ray / (u_5 + ray))));

        // Calculate the rounded cap positions
        float progressAngle = 0.;
        float startAngle = 0.;
        if (u_6==1.) {
            // Counterclockwise: inverted - filled from per to u_3
            startAngle = radians(90.0 - per);  // Start of filled area
            progressAngle = radians(90.0 - u_3);  // End of filled area
        } else {
            // Clockwise: filled from 0 to per
            startAngle = radians(90.0);  // Start at 0 degrees
            progressAngle = radians(90.0 - per);  // End at per
        }
        vec2 centerPosC = vec2(0.5 + cos(progressAngle) * (u_5 + ray), 0.5 - sin(progressAngle) * (u_5 + ray));
        vec2 centerPosStart = vec2(0.5 + cos(startAngle) * (u_5 + ray), 0.5 - sin(startAngle) * (u_5 + ray));

        float ang2=0.0;
        if (u_6==1.) ang2=radians(90.-clamp(angle,angoffset, u_3-angoffset));
        else ang2=radians(90.0-clamp(angle,angoffset, max(u_3-angoffset, angoffset)));
        vec2 centerPosC2 = vec2(0.5 + cos(ang2) * (u_5 + ray), 0.5 - sin(ang2) * (u_5 + ray));

        // Calculate the rounded cap positions for color3 (outside) area
        float color3StartAngle = 0.;
        float color3EndAngle = 0.;
        if (u_6==1.) {
            // Counterclockwise: color3 from 0 to per
            color3StartAngle = radians(90.0);  // Start at 0 degrees
            color3EndAngle = radians(90.0 - per);  // End at per
        } else {
            // Clockwise: color3 from u_4 to u_3
            color3StartAngle = radians(90.0 - u_4);
            color3EndAngle = radians(90.0 - u_3);
        }
        vec2 centerPosColor3Start = vec2(0.5 + cos(color3StartAngle) * (u_5 + ray), 0.5 - sin(color3StartAngle) * (u_5 + ray));
        vec2 centerPosColor3End = vec2(0.5 + cos(color3EndAngle) * (u_5 + ray), 0.5 - sin(color3EndAngle) * (u_5 + ray));

        // Calculate gradient colors at caps based on fill ratio
        float fillRatio;
        if (u_6==1.) {
            fillRatio = (u_3 - per) / u_3;  // Anti-clockwise: filled length is (u_3 - per)
        } else {
            fillRatio = per / u_3;  // Clockwise: filled length is per
        }
        vec3 endCapColor = mix(u_1, u_2, fillRatio);

        // Check if pixel is at the rounded start cap
        if (distance(centerPosStart, v_texCoord) < ray) {
            // Show start color
            if (u_6==1.) {
                gl_FragColor = vec4(endCapColor, color.a * u_opacity);  // Anti-clockwise: gradient end at start (per)
            } else {
                gl_FragColor = vec4(u_1, color.a * u_opacity);  // Clockwise: u_1 at start (0)
            }
        }
        // Check if pixel is at the rounded progress end cap
        else if (distance(centerPosC, v_texCoord) < ray) {
            // Show end color
            if (u_6==1.) {
                gl_FragColor = vec4(u_1, color.a * u_opacity);  // Anti-clockwise: u_1 at end (u_3)
            } else {
                gl_FragColor = vec4(endCapColor, color.a * u_opacity);  // Clockwise: gradient end at end (per)
            }
        }
        // Check if pixel is at the rounded color3 start cap (at u_4)
        else if (distance(centerPosColor3Start, v_texCoord) < ray) {
            // Show color3 with outside_opacity
            gl_FragColor = vec4(u_8, u_7/100.);
        }
        // Check if pixel is at the rounded color3 end cap (at u_3)
        else if (distance(centerPosColor3End, v_texCoord) < ray) {
            // Show color3 with outside_opacity
            gl_FragColor = vec4(u_8, u_7/100.);
        } else {
            // Check if pixel is within the ring (between inner and outer radius)
            float distFromCenter = distance(centerPos, v_texCoord);
            if (distFromCenter > u_5 && distFromCenter < 0.5) {
                // We're in the ring area - check if filled or outside
                bool inFilledArea = false;
                if (u_6==1.) {
                    // Counterclockwise - inverted: filled from per to u_3
                    inFilledArea = (angle >= per && angle <= u_3);
                } else {
                    // Clockwise - filled from 0 to per
                    inFilledArea = (angle <= per);
                }

                if (inFilledArea) {
                    // Show progress gradient based on fill ratio
                    float fillRatio;
                    vec3 mixed;

                    if (u_6==1.) {
                        // Counterclockwise: inverted - gradient reversed from u_3 to per
                        fillRatio = (u_3 - per) / u_3;  // Filled length is (u_3 - per)
                        float posInArc = clamp((u_3 - angle) / (u_3 - per), 0.0, 1.0);
                        float gradientProgress = posInArc * fillRatio;
                        mixed = vec3(mix(u_1, u_2, gradientProgress));
                    } else {
                        // Clockwise: gradient from 0 to per
                        fillRatio = per / u_3;  // Filled length is per
                        float posInArc = clamp(angle / per, 0.0, 1.0);
                        float gradientProgress = posInArc * fillRatio;
                        mixed = vec3(mix(u_1, u_2, gradientProgress));
                    }
                    gl_FragColor = vec4(mixed, color.a * u_opacity);
                } else {
                    // Not in filled area - check if we should show color3 or transparent
                    bool inColor3Range = false;

                    if (u_6==1.) {
                        // Counterclockwise: inverted - color3 from 0 to per, must be within total angle
                        inColor3Range = (angle >= 0.0 && angle < per && angle <= u_3);
                    } else {
                        // Clockwise: color3 from u_4 to u_3
                        if (u_4 <= u_3) {
                            inColor3Range = (angle >= u_4 && angle <= u_3);
                        } else {
                            // Handle wrap-around case
                            inColor3Range = (angle >= u_4 || angle <= u_3);
                        }
                    }

                    if (inColor3Range) {
                        // Show color3 with outside_opacity only in the specified range
                        gl_FragColor = vec4(u_8, u_7/100.);
                    } else {
                        // Outside the valid range - transparent
                        gl_FragColor = vec4(color.r, color.g, color.b, 0.);
                    }
                }
            } else {
                gl_FragColor = vec4(color.r, color.g, color.b, 0.);
            }
        }
    }
    else
        gl_FragColor = vec4(color.r, color.g, color.b, 0.);
}