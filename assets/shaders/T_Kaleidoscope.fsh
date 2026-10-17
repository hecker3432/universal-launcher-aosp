#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

uniform float speed;
uniform float angle;
uniform float power;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec2 q = p;
    float t = pow(progress, power)*speed;
    p = p -0.5;
    for (int i = 0; i < 7; i++) {
        p = vec2(sin(t)*p.x + cos(t)*p.y, sin(t)*p.y - cos(t)*p.x);
        t += angle;
        p = abs(mod(p, 2.0) - 1.0);
    }
    abs(mod(p, 1.0));
    gl_FragColor = mix(
                       mix(texture2D(from, q), texture2D(to, q), progress),
                       mix(texture2D(from, p), texture2D(to, p), progress), 1.0 - 2.0*abs(progress - 0.5));
}