#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // Slide in from left with perspective effect
    float slideOffset = (1.0 - progress) * -1.5;
    vec2 uv = p;
    uv.x = p.x + slideOffset;

    // Perspective compression on X axis
    float perspective = mix(0.7, 1.0, progress);
    uv.x = 0.5 + (uv.x - 0.5) / perspective;

    // Check bounds
    if (uv.x < 0.0 || uv.x > 1.0) {
        gl_FragColor = vec4(0.0);
        return;
    }

    vec4 texColor = texture2D(u_texture, uv);

    // Fade in
    texColor.a *= smoothstep(0.0, 0.3, progress);

    gl_FragColor = texColor;
}
