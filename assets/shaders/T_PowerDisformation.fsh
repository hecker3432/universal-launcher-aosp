#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

float power = 3.0;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    
    vec2 p2 = mix(
                  p,
                  vec2(pow(p.x, power), pow(p.y, power)),
                  (0.5)-distance(progress, 0.5));
    
    gl_FragColor = mix(
                       texture2D(from, p2),
                       texture2D(to, p2),
                       progress);
}