#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

void main()
{
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    gl_FragColor = mix(texture2D(from, p), texture2D(to, p), progress);
}
