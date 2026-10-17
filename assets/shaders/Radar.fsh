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
float angleCover = 100.0;
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
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor;
    vec2 centerPos = vec2(0.5, 0.5);
    float distanceCenter = getDistance(centerPos, v_texCoord);
    float angle = atan(v_texCoord.x - centerPos.x, centerPos.y - v_texCoord.y) * 180.0 / M_PI;
    if (angle < u_1 - angleCover)
    {
        angle += 360.0;
    }
    if (isBetween(angle, u_1 - angleCover, u_1))
    {
        float distTop = u_1 - angle;
        float pctUniform2 = distTop / angleCover;
        float pctUniform3 = 1.0 - pctUniform2;
        float mixOpacity = pctUniform2 * u_3 + pctUniform3 * u_2;
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * mixOpacity / 100.0);
    }
    else
    {
        gl_FragColor = vec4(color.r, color.g, color.b, color.a * u_opacity * u_3 / 100.0);
    }
}