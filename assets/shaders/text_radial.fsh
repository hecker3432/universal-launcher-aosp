#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // Calculate angle from center (starting from top, going clockwise)
    vec2 fromCenter = p - vec2(0.5, 0.5);
    float angle = atan(fromCenter.x, fromCenter.y); // atan(x, y) for top = 0

    // Normalize angle to 0 to 2*PI range
    angle = angle + PI; // Now 0 to 2*PI

    // Calculate how much of the circle should be revealed
    // progress 0.0 = no slice, progress 1.0 = full circle (2*PI)
    float revealAngle = progress * 2.0 * PI;

    vec4 texColor = texture2D(u_texture, p);

    // Reveal text where angle is less than revealAngle
    if (angle <= revealAngle) {
        // Add smooth edge at the sweeping angle
        float edgeSoftness = 0.1;
        float edge = smoothstep(revealAngle - edgeSoftness, revealAngle, angle);
        texColor.a *= (1.0 - edge * 0.3); // Slight fade at the edge
    } else {
        // Not yet revealed - hide text
        texColor.a = 0.0;
    }

    gl_FragColor = texColor;
}
