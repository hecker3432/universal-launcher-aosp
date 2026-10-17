varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1; // %
uniform float u_2; // angle
uniform float u_3; // opacity in
uniform float u_4; // opacity out
varying vec4 v_fragmentColor;
varying float v_screenX;
varying float v_screenY;
#define PI 3.1415926535897932384626433832795

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord)* v_fragmentColor;
//    float yNew = 0.5 + (v_screenX - 0.5) * sin(-u_2) + (v_screenY - 0.5) * cos(-u_2);
//    yNew = clamp(yNew, 0.0, 1.0);
    float yNew = 0.5 + (v_texCoord.x - 0.5) * sin(-u_2*PI/180.0) + (v_texCoord.y - 0.5) * cos(-u_2*PI/180.0);
    yNew = 1.0 - clamp(yNew, 0.0, 1.0);
    if (yNew <= u_1 / 100.0)
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_3 / 100.0);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_4 / 100.0);
    }
}