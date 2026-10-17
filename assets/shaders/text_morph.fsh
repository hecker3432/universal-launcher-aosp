#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

const float strength = 0.1;

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    vec2 oc = (((texColor.rg + texColor.b) * 0.5) * 2.0 - 1.0);
    oc = oc * strength;

    float w0 = progress;
    float w1 = 1.0 - w0;

    vec4 morphedColor = texture2D(u_texture, p + oc * w0);
    morphedColor.a = texColor.a * progress;

    gl_FragColor = morphedColor;
}
