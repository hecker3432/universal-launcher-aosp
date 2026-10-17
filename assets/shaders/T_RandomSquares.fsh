#ifdef GL_ES
precision highp float;
#endif

// General parameters
varying vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

// Custom parameters
vec2 size = vec2(10, 10);
float smoothness = 0.5;

float rand (vec2 co) {
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    float r = rand(floor(vec2(size) * p));
    float m = smoothstep(0.0, -smoothness, r - (progress * (1.0 + smoothness)));
    gl_FragColor = mix(texture2D(from, p), texture2D(to, p), m);
}