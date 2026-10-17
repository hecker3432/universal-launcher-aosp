#ifdef GL_ES
precision highp float;
#endif

// General parameters
varying vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

float flashPhase = 0.3;
float flashIntensity = 3.0;
float flashZoomEffect = 0.5;

const vec3 flashColor = vec3(1.0, 0.8, 0.3);
const float flashVelocity = 3.0;

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    vec4 fc = texture2D(from, p);
    vec4 tc = texture2D(to, p);
    float intensity = mix(1.0, 2.0*distance(p, vec2(0.5, 0.5)), flashZoomEffect) * flashIntensity * pow(smoothstep(flashPhase, 0.0, distance(0.5, progress)), flashVelocity);
    vec4 c = mix(texture2D(from, p), texture2D(to, p), smoothstep(0.5*(1.0-flashPhase), 0.5*(1.0+flashPhase), progress));
    c += intensity * vec4(flashColor, 1.0);
    gl_FragColor = c;
}