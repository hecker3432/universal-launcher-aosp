#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

float power = 3.0;

void main() {
    vec2 p = v_texCoord;

    vec2 p2 = mix(
        p,
        vec2(pow(p.x, power), pow(p.y, power)),
        (0.5) - distance(progress, 0.5));

    vec4 texColor = texture2D(u_texture, p2);
    texColor.a *= progress;

    gl_FragColor = texColor;
}
