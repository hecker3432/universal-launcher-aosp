#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

float intensity = 0.1;

const int PASSES = 8;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec4 c1 = vec4(0.0), c2 = vec4(0.0);
    float disp = intensity*(0.5-distance(0.5, progress));
    for (int xi=0; xi<PASSES; ++xi) {
        float x = float(xi) / float(PASSES) - 0.5;
        for (int yi=0; yi<PASSES; ++yi) {
            float y = float(yi) / float(PASSES) - 0.5;
            vec2 v = vec2(x,y);
            float d = disp;
            c1 += texture2D(from, p + d*v);
            c2 += texture2D(to, p + d*v);
        }
    }
    c1 /= float(PASSES*PASSES);
    c2 /= float(PASSES*PASSES);
    gl_FragColor = mix(c1, c2, progress);
}