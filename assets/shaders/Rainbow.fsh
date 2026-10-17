varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1;
uniform float u_2;
uniform float u_3;

void main()
{
    vec4 color1 = texture2D(u_texture, v_texCoord);
	vec3 color2 = vec3((sin(u_1)+1./2.), v_texCoord.x, v_texCoord.y);
	gl_FragColor = vec4(color2, color1.a * u_opacity);
}