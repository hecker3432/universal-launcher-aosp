#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

const vec2 center = vec2(0.5, 0.5);

float rand(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    float dist = distance(center, p);
    float r = progress - min(rand(vec2(p.y, 0.0)), rand(vec2(0.0, p.x)));
    float mask = dist <= r ? 1.0 : 0.0;

    texColor.a *= mask;
    gl_FragColor = texColor;
}
