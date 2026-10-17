varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord);

    float border = 0.01;
    float radius = 0.5;
    vec4 color0 = vec4(color.r, color.g, color.b, 0.0);
    vec4 color1 = vec4(color.r, color.g, color.b, 1.0);
    
    vec2 m = v_texCoord - vec2(0.5, 0.5);
    float dist = radius - sqrt(m.x * m.x + m.y * m.y);
    
    if (dist > border)
    {
        gl_FragColor = vec4(color.r, color.g, color.b, 1.0);
    }
    else if (dist > 0.0)
    {
        gl_FragColor = vec4(color.r, color.g, color.b, dist / border);
    }
    else
    {
        gl_FragColor = vec4(0, 0, 0, 0);
    }
}