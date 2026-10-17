#define M_PI 3.1415926535897932384626433832795

varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1;
uniform float u_2;
uniform float u_3;
uniform float u_4;
varying vec4 v_fragmentColor;

bool isBetween(float number_, float min_, float max_)
{
    return number_ >= min_ && number_ <= max_;
}

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord)* v_fragmentColor;
    vec2 centerPos = vec2(0.5, 0.5);
    float angle = atan(v_texCoord.x - centerPos.x, centerPos.y - v_texCoord.y) * 180.0 / M_PI;
    if (angle < 0.0 && u_1 > 0.0)
    {
        angle += 360.0;
    }
    if (isBetween(angle, u_1, u_2) ||
        (u_2 < u_1 && isBetween(angle, u_1, 360.0)) ||
        (u_2 < u_1 && isBetween(angle, 0.0, u_2)))
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_3 / 100.0);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_4 / 100.0);
    }
}