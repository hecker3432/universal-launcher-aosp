#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

float interpolationPower = 5.0;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec4 fTex = texture2D(from,p);
    vec4 tTex = texture2D(to,p);
    gl_FragColor = mix(distance(fTex,tTex)>progress?fTex:tTex,
                       tTex,
                       pow(progress,interpolationPower));
}