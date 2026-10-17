#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    // Diagonal slash reveal from top-left to bottom-right
    float diagonal = (p.x + p.y) / 2.0;
    float threshold = progress * 1.5 - 0.25;
    float smoothness = 0.1;

    float mask = smoothstep(threshold - smoothness, threshold + smoothness, diagonal);
    texColor.a *= mask;

    gl_FragColor = texColor;
}
