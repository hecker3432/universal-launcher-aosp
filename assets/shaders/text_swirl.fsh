#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    float Radius = 1.0;
    float T = progress;

    vec2 UV = v_texCoord;

    UV -= vec2(0.5, 0.5);

    float Dist = length(UV);

    if (Dist < Radius) {
        float Percent = (Radius - Dist) / Radius;
        float A = (T <= 0.5) ? mix(0.0, 1.0, T / 0.5) : mix(1.0, 0.0, (T - 0.5) / 0.5);
        float Theta = Percent * Percent * A * 8.0 * 3.14159;
        float S = sin(Theta);
        float C = cos(Theta);
        UV = vec2(dot(UV, vec2(C, -S)), dot(UV, vec2(S, C)));
    }
    UV += vec2(0.5, 0.5);

    vec4 texColor = texture2D(u_texture, UV);
    texColor.a *= T;

    gl_FragColor = texColor;
}
