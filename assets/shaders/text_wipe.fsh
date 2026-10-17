#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // Wipe from left to right
    float wipeEdge = progress;

    // Sample texture
    vec4 texColor = texture2D(u_texture, p);

    // Apply wipe effect - reveal from left to right
    if (p.x > wipeEdge) {
        texColor.a = 0.0;
    } else {
        // Add a soft edge to the wipe
        float edgeSoftness = 0.02;
        float edge = smoothstep(wipeEdge - edgeSoftness, wipeEdge, p.x);
        texColor.a *= (1.0 - edge);
    }

    gl_FragColor = texColor;
}
