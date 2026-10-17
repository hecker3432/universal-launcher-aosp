#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord.xy);

    // Shining effect: a bright band sweeps across the text from left to right
    // progress 0.0 to 1.0 maps to u_1 range of 0.0 to 2.5
    float u_1 = progress * 2.5;

    if (u_1 < 1.5)
    {
        // Sweeping shine effect - bright band moving across
        // Mix between transparent and the original color based on distance from shine position
        float shine = 1.0 - 2.0 * abs(v_texCoord.x - u_1);
        shine = max(0.0, shine);
        gl_FragColor = vec4(color.rgb, color.a * shine);
    }
    else
    {
        // Fade in the full text after shine passes
        float fadeIn = (u_1 - 1.5);  // 0.0 to 1.0
        gl_FragColor = vec4(color.rgb, color.a * fadeIn);
    }
}
