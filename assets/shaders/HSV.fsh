#define M_PI 3.1415926535897932384626433832795

varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform float u_1;
uniform float u_2;
uniform float u_3;
varying vec4 v_fragmentColor;


vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));
    
    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord)* v_fragmentColor;
    vec3 hsv = rgb2hsv(vec3(color.r, color.g, color.b));
    hsv.x += u_1 / 100.0;
    hsv.y = clamp(hsv.y + u_2 / 100.0, 0.0, 1.0);
    hsv.z = clamp(hsv.z + u_3 / 100.0, 0.0, 1.0);
    vec3 rgb = hsv2rgb(hsv);
    gl_FragColor = vec4(rgb.r, rgb.g, rgb.b, color.a * u_opacity);
}