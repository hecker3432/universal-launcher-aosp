precision mediump float;
varying lowp vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float u_opacity;

float map(vec3 p) {
    float t = length(mod(p, 2.0) - 1.0) - 0.1;
    t = min(t, length(mod(p.xz, 2.0) - 1.0) - 0.03);
    t = min(t, length(mod(p.yz, 2.0) - 1.0) - 0.03);
    return min(t, length(mod(p.xy, 2.0) - 1.0) - 0.03);
}
#define rot(p, a) vec2(p.x * cos(a) - p.y * sin(a),p.x * sin(a) + p.y * cos(a))

void main()
{
    float iTime = CC_Time[1];
    vec2 uv = ( gl_FragCoord.xy / vec2(640.0,480.0) ) * 2.0 - 1.0;
    vec3 dir = normalize(vec3(uv, 1.0));
    dir.xz= rot(dir.xz, iTime /10.0);
    dir.yx= rot(dir.yx, iTime /10.0);
    vec3 pos = vec3(0., 0., iTime /1.0);
    float i = 0.0;
    vec3 ip;
    for(;  i < 100.0; i++) {
		ip = dir * i + pos;
        if(map(ip) < 0.1) break;
    }
    gl_FragColor = vec4(i * 0.01) + map(ip + 0.1) + dir.xyzz * 0.7;
}