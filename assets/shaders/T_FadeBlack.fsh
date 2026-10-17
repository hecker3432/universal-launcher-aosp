#ifdef GL_ES
precision highp float;
#endif

// General parameters
varying vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

vec3 color = vec3(0.0, 0.0, 0.0);
float colorPhase = 0.4;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    gl_FragColor = mix(
                       mix(vec4(color, 1.0), texture2D(from, p), smoothstep(1.0-colorPhase, 0.0, progress)),
                       mix(vec4(color, 1.0), texture2D(to,   p), smoothstep(    colorPhase, 1.0, progress)),
                       progress);
}