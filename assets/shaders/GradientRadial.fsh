varying vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform vec3 u_1;
uniform vec3 u_2;
uniform float u_3;
varying vec4 v_fragmentColor;

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord)* v_fragmentColor;
    float yNew = length(v_texCoord - vec2(0.5, 0.5));
    yNew /= (u_3 / 100.0);
    yNew = clamp(yNew, 0.0, 1.0);
    vec3 mixed = vec3(mix(u_1, u_2, yNew));
    gl_FragColor = vec4(mixed, color.a * u_opacity);
}