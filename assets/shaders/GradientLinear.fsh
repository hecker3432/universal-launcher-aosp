varying vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;
uniform vec3 u_1;
uniform vec3 u_2;
uniform float u_3;
uniform float u_4;
varying vec4 v_fragmentColor;
#define PI 3.1415926535897932384626433832795

void main()
{
    vec4 color = texture2D(u_texture, v_texCoord) * v_fragmentColor;
    float yNew = 0.5 + (v_texCoord.x - 0.5) * sin(-u_3*PI/180.0) + (v_texCoord.y - 0.5) * cos(-u_3*PI/180.0);
    yNew = (yNew - 0.5) / (u_4 / 100.0) + 0.5;
    yNew = clamp(yNew, 0.0, 1.0);
    vec3 mixed = vec3(mix(u_1, u_2, yNew));
    gl_FragColor = vec4(mixed, color.a * u_opacity);
}