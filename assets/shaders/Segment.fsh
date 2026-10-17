#define M_PI 3.1415926535897932384626433832795

#ifdef GL_ES
varying mediump vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif

uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1;
uniform float u_2;
uniform float u_3;
varying vec4 v_fragmentColor;

float getDistance(vec2 pos1_, vec2 pos2_)
{
    return sqrt(pow(pos2_.x - pos1_.x, 2.0) + pow(pos2_.y - pos1_.y, 2.0));
}

bool isBetween(float number_, float min_, float max_)
{
    return number_ >= min_ && number_ <= max_;
}

void main()
{
    //vec4 color = texture2D(u_texture, v_texCoord);
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor; // * vec4(0.1,0.1,0.1,1)
    //vec4 color = gl_Color;
    gl_FragColor = color;
    vec2 centerPos = vec2(0.5, 0.5);
    float distanceCenter = getDistance(centerPos, v_texCoord);
    float angle = atan(v_texCoord.x - centerPos.x, centerPos.y - v_texCoord.y) * 180.0 / M_PI;
    if (angle < 0.0)
    {
        angle += 360.0;
    }
    if (angle > 0.0 && isBetween(angle, 0.0, u_1))
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_2 / 100.0);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_3 / 100.0);
    }
}