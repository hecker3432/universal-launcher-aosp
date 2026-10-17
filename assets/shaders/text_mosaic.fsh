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

    // remap UV from 0...1 to -0.5...+0.5 to make the mosaic pattern converge towards the image center
    vec2 UV = (v_texCoord + vec2(-0.5)) / D;

    // don't forget to remap coords back to 0...1 after ceil()
    vec2 Coord = clamp(D * (ceil(UV + vec2(-0.5))) + vec2(0.5), vec2(0.0), vec2(1.0));

    vec4 texColor = texture2D(u_texture, Coord);
    texColor.a *= T;

    gl_FragColor = texColor;
}
