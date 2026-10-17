#ifdef GL_ES
precision highp float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

float blocksize = 1.0;

// A simple PRNG
float rand(vec2 co) {
    return fract(sin(dot(co, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    float mask = step(rand(floor(gl_FragCoord.xy / blocksize)), progress);
    texColor.a *= mask;

    gl_FragColor = texColor;
}
