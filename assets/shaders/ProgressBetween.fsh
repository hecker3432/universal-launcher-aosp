#ifdef GL_ES
varying mediump vec2 v_texCoord;
varying lowp vec4 v_fragmentColor;
#else
varying vec2 v_texCoord;
varying vec4 v_fragmentColor;
#endif
varying float v_screenX;
varying float v_screenY;

uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1; // % from
uniform float u_2; // % to
uniform float u_3; // angle
uniform float u_4; // opacity in
uniform float u_5; // opacity out
#define PI 3.1415926535897932384626433832795

bool isBetween(float number_, float min_, float max_)
{
    return number_ >= min_ && number_ <= max_;
}

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor;


    float yNew = 0.5 + (v_screenX - 0.5) * sin(-u_3*PI/180.0) + (v_screenY - 0.5) * cos(-u_3*PI/180.0);
    yNew = clamp(yNew, 0.0, 1.0);

//    float yNew = 0.5 + (v_screenX - 0.5) * sin(-u_3) + (v_screenY - 0.5) * cos(-u_3);
//    yNew = clamp(yNew, 0.0, 1.0);


 //   float yNew = 0.5 + (v_texCoord.x - 0.5) * sin(-u_3) + (v_texCoord.y - 0.5) * cos(-u_3);
 //   yNew = 1.0 - clamp(yNew, 0.0, 1.0);


    if (isBetween(yNew, u_1 / 100.0, u_2 / 100.0))
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_4 / 100.0);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_5 / 100.0);
    }
}