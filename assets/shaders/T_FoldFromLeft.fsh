#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec4 a = texture2D(from, (p - vec2(progress, 0.0)) / vec2(1.0 - progress, 1.0));
    vec4 b = texture2D(to, p / vec2(progress, 1.0));
    gl_FragColor = mix(a, b, step(p.x, progress));
}