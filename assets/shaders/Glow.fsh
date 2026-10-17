#ifdef GL_ES
varying mediump vec2 v_texCoord;
varying lowp vec4 v_fragmentColor;
#else
varying vec2 v_texCoord;
varying vec4 v_fragmentColor;
#endif
uniform sampler2D u_texture;
uniform float u_opacity;
uniform vec3 u_1;
uniform float u_2;
uniform float u_3;

const float step_w = 0.0015625;
const float step_h = 0.0015625;
#define PI 3.1415926535897932384626433832795

void main()
{
    vec4 color1 = texture2D(u_texture, v_texCoord);
	vec3 color2 = v_fragmentColor.rgb;
    float radius = max(2.0, u_3 / 2.0);
    vec4 accum = vec4(0.0);
    vec4 normal = vec4(color2.r, color2.g, color2.b, color1.a);

    float cosAngle;
    float sinAngle;
    float count = 0.0;
    for (float angle = 0.0; angle <= PI * 2.0; angle+=0.4) {
        cosAngle = cos(angle);
        sinAngle = sin(angle);
        for(float i = 1.0; i <= radius; i += 1.0)
        {
            accum += (texture2D(u_texture, vec2(v_texCoord.x + cosAngle * step_w * i, v_texCoord.y + sinAngle * step_h * i)));// - 0.4) * 30.0;
            count ++;
        }
    }
  //  clamp(accum / (count * 30), 0.0, 1.0);
    clamp(accum.a / count , 0.0, 1.0);
    accum.rgb =  u_1 * u_2 * accum.a * 0.95 / radius;
 // gl_FragColor = normal + u_1 * u_2* accum;
   // accum.rgb =  u_1 * u_2 * accum.a * 0.95;
    float opacity = ((1.0 - normal.a) * 2.0 / (radius));// * (0.3 + 0.7 * abs(sin(CC_Time[1])));
    gl_FragColor = (accum * opacity) + (normal * normal.a);
}