varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform vec3 u_color;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord);
    gl_FragColor = vec4(u_color.r, u_color.g, u_color.b, 1.0 - color.a);
}