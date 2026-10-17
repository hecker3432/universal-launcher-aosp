#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    float circPos = atan(p.y - 0.5, p.x - 0.5) + progress * 6.283185;
    float modPos = mod(circPos, 3.1415 / 4.0);
    float signed = sign(progress - modPos / 3.1415);
    float smoothed = smoothstep(0.0, 1.0, signed);

    vec4 texColor = texture2D(u_texture, p);
    texColor.a *= smoothed;

    gl_FragColor = texColor;
}
