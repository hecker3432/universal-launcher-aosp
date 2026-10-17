#ifdef GL_ES
precision highp float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

vec2 size = vec2(10.0, 10.0);
float smoothness = 0.5;

float rand(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 p = v_texCoord;
    float r = rand(floor(vec2(size) * p));
    float m = smoothstep(0.0, -smoothness, r - (progress * (1.0 + smoothness)));

    vec4 texColor = texture2D(u_texture, p);
    texColor.a *= m;

    gl_FragColor = texColor;
}
