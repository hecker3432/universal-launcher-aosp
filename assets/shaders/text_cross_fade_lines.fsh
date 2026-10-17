#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    // Create alternating horizontal and vertical line reveal
    float lineCount = 10.0;
    float phase = progress * 3.0;

    float mask = 0.0;

    if (phase < 1.0) {
        // Phase 1: Horizontal lines appear
        float lineY = fract(p.y * lineCount);
        mask = step(lineY, phase);
    } else if (phase < 2.0) {
        // Phase 2: Vertical lines appear
        float lineX = fract(p.x * lineCount);
        float hMask = step(fract(p.y * lineCount), 1.0);
        float vMask = step(lineX, phase - 1.0);
        mask = max(hMask, vMask);
    } else {
        // Phase 3: Full reveal
        mask = 1.0;
    }

    texColor.a *= mask * smoothstep(0.0, 0.1, progress);

    gl_FragColor = texColor;
}
