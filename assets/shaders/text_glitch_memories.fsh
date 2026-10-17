#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;
    vec2 block = floor(gl_FragCoord.xy / vec2(16));
    vec2 uv_noise = block / vec2(64);
    uv_noise += floor(vec2(progress) * vec2(1200.0, 3500.0)) / vec2(64);

    float block_thresh = pow(fract(progress * 1200.0), 2.0) * 0.2;
    float line_thresh = pow(fract(progress * 2200.0), 3.0) * 0.7;

    vec2 red = p, green = p, blue = p;
    vec2 dist = (fract(uv_noise) - 0.5) * 0.3;

    float smoothed = smoothstep(0.0, 1.0, progress);

    // Apply glitch effect in middle portion of animation
    if ((smoothed > 0.1 && smoothed < 0.9)) {
        float glitchAmount = 1.0 - 2.0 * abs(smoothed - 0.5);
        red += dist * 0.1 * glitchAmount;
        green += dist * 0.2 * glitchAmount;
        blue += dist * 0.125 * glitchAmount;
    }

    vec4 texColor;
    texColor.r = texture2D(u_texture, red).r;
    texColor.g = texture2D(u_texture, green).g;
    texColor.b = texture2D(u_texture, blue).b;
    texColor.a = texture2D(u_texture, p).a * progress;

    gl_FragColor = texColor;
}
