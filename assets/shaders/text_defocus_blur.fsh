#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main() {
    float T = progress;

    float S0 = 1.0;
    float S1 = 50.0;
    float S2 = 1.0;

    // 2 segments, 1/2 each
    float Half = 0.5;

    float PixelSize = (T < Half) ? mix(S0, S1, T / Half) : mix(S1, S2, (T - Half) / Half);

    vec2 D = PixelSize / vec2(512.0, 512.0);

    vec2 UV = v_texCoord;

    const int NumTaps = 12;
    vec2 Disk[12];
    Disk[0] = vec2(-.326, -.406);
    Disk[1] = vec2(-.840, -.074);
    Disk[2] = vec2(-.696, .457);
    Disk[3] = vec2(-.203, .621);
    Disk[4] = vec2(.962, -.195);
    Disk[5] = vec2(.473, -.480);
    Disk[6] = vec2(.519, .767);
    Disk[7] = vec2(.185, -.893);
    Disk[8] = vec2(.507, .064);
    Disk[9] = vec2(.896, .412);
    Disk[10] = vec2(-.322, -.933);
    Disk[11] = vec2(-.792, -.598);

    vec4 texColor = texture2D(u_texture, UV);

    for (int i = 0; i < 12; i++) {
        texColor += texture2D(u_texture, Disk[i] * D + UV);
    }
    texColor /= float(NumTaps + 1);
    texColor.a *= T;

    gl_FragColor = texColor;
}
