varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_pctX;
uniform float u_pctY;
uniform float u_radius;
uniform float u_radiusYAdj;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord);

    float border = 0.0;
    vec4 color0 = vec4(color.r, color.g, color.b, 0.0);
    vec4 color1 = vec4(color.r, color.g, color.b, 1.0);
    
    float distX = v_texCoord.x - u_pctX;
    float distY = v_texCoord.y - (1.0 - u_pctY);
    float dist = u_radius - max(abs(distX), abs(distY * u_radiusYAdj));
    
    if (dist > border)
    {
        gl_FragColor = vec4(0, 0, 0, 0);
    }
    else if (dist > 0.0)
    {
        gl_FragColor = vec4(color.r, color.g, color.b, 1.0 - dist / border);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, 1.0);
    }
}