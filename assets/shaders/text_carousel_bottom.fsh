#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // Slide in from top with perspective effect
    float slideOffset = (1.0 - progress) * 1.5;
    vec2 uv = p;
    uv.y = p.y + slideOffset;

    // Perspective compression on Y axis
    float perspective = mix(0.7, 1.0, progress);
    uv.y = 0.5 + (uv.y - 0.5) / perspective;

    // Check bounds
    if (uv.y < 0.0 || uv.y > 1.0) {
        gl_FragColor = vec4(0.0);
        return;
    }

    vec4 texColor = texture2D(u_texture, uv);

    // Fade in
    texColor.a *= smoothstep(0.0, 0.3, progress);

    gl_FragColor = texColor;
}
