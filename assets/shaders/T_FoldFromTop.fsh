#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec4 a = texture2D(to, (p - vec2(0.0, 1.0 - progress)) / vec2(1.0, progress));
    vec4 b = texture2D(from, p / vec2(1.0, 1.0 - progress));
    gl_FragColor = mix(a, b, step(p.y, 1.0 - progress));
}