#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    // Cross pattern reveal from center
    vec2 center = vec2(0.5, 0.5);
    float distX = abs(p.x - center.x);
    float distY = abs(p.y - center.y);

    // Create cross shape that expands
    float crossWidth = progress * 0.6;
    float crossMask = 0.0;

    // Horizontal bar
    if (distY < crossWidth * 0.5) {
        crossMask = max(crossMask, smoothstep(0.5, 0.0, distX - progress * 0.5));
    }
    // Vertical bar
    if (distX < crossWidth * 0.5) {
        crossMask = max(crossMask, smoothstep(0.5, 0.0, distY - progress * 0.5));
    }

    // Also expand from center
    float dist = distance(p, center);
    float radialMask = smoothstep(progress * 0.7, progress * 0.7 - 0.1, dist);

    float finalMask = max(crossMask, radialMask * progress);
    texColor.a *= finalMask;

    gl_FragColor = texColor;
}
