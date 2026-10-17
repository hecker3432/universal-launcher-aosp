#define M_PI 3.1415926535897932384626433832795

varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1;
uniform float u_2;
uniform float u_3;
varying vec4 v_fragmentColor;


void main()
{
    vec4 color = texture2D(u_texture, v_texCoord)* v_fragmentColor;
    color.r = clamp(color.r + u_1 / 100.0, 0.0, 1.0);
    color.g = clamp(color.g + u_2 / 100.0, 0.0, 1.0);
    color.b = clamp(color.b + u_3 / 100.0, 0.0, 1.0);
    color.a = color.a * u_opacity;
    gl_FragColor = color;
}