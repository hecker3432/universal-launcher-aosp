#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

const float SQRT_2 = 1.414213562373;
float dots = 20.0;

vec2 center = vec2(1.0, 1.0);

void main() {
    vec2 p = v_texCoord;

    float x = progress / 2.0;

    bool visible = distance(fract(p * dots), vec2(0.5, 0.5)) < (2.0 * x / distance(p, center));

    vec4 texColor = texture2D(u_texture, p);
    texColor.a *= visible ? 1.0 : 0.0;

    gl_FragColor = texColor;
}
