#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

float intensity = 0.1;

const int PASSES = 8;

void main() {
    vec2 p = v_texCoord;
    vec4 color = vec4(0.0);
    float disp = intensity * (0.5 - distance(0.5, progress));

    for (int xi = 0; xi < PASSES; ++xi) {
        float x = float(xi) / float(PASSES) - 0.5;
        for (int yi = 0; yi < PASSES; ++yi) {
            float y = float(yi) / float(PASSES) - 0.5;
            vec2 v = vec2(x, y);
            float d = disp;
            color += texture2D(u_texture, p + d * v);
        }
    }
    color /= float(PASSES * PASSES);
    color.a *= progress;

    gl_FragColor = color;
}
