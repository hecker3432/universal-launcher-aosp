varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_hue;


vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    vec3 rgb = hsv2rgb(vec3(u_hue, v_texCoord.x, 1.0 - v_texCoord.y));
    gl_FragColor = vec4(rgb.r, rgb.g, rgb.b, 1);
}