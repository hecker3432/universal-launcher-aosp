#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

float speed = 1.0;
float angle = 1.0;
float power = 1.5;

void main() {
    vec2 p = v_texCoord;
    vec2 q = p;
    float t = pow(progress, power) * speed;
    p = p - 0.5;
    for (int i = 0; i < 7; i++) {
        p = vec2(sin(t) * p.x + cos(t) * p.y, sin(t) * p.y - cos(t) * p.x);
        t += angle;
        p = abs(mod(p, 2.0) - 1.0);
    }
    abs(mod(p, 1.0));

    vec4 texColor = texture2D(u_texture, q);
    vec4 kaleidoColor = texture2D(u_texture, p);

    // Blend between original and kaleidoscope effect based on progress
    float blend = 1.0 - 2.0 * abs(progress - 0.5);
    vec4 finalColor = mix(texColor, kaleidoColor, blend);
    finalColor.a = texColor.a * progress;

    gl_FragColor = finalColor;
}
