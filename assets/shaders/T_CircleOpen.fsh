#ifdef GL_ES
precision highp float;
#endif

// General parameters
varying vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

float smoothness = 0.3;

const vec2 center = vec2(0.5, 0.5);
const float SQRT_2 = 1.414213562373;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    float x = progress;
    float m = smoothstep(-smoothness, 0.0, SQRT_2*distance(center, p) - x*(1.+smoothness));
    gl_FragColor = mix(texture2D(from, p), texture2D(to, p), 1.0 - m);
}