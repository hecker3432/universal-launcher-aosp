#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

float blocksize = 1.0;

// A simple PRNG
float rand(vec2 co) {
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    gl_FragColor = mix(texture2D(from, p), texture2D(to, p), step(rand(floor(gl_FragCoord.xy/blocksize)), progress));
}
