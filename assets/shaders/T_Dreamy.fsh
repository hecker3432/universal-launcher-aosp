#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

vec2 offset(float progress, float x, float theta) {
    float phase = progress*progress + progress + theta;
    float shifty = 0.03*progress*cos(10.0*(progress+x));
    return vec2(0, shifty);
}

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    gl_FragColor = mix(texture2D(from, p + offset(progress, p.x, 0.0)), texture2D(to, p + offset(1.0-progress, p.x, 3.14)), progress);
}