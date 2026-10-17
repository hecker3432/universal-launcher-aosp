#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D u_texture;
uniform float progress;

highp float random(vec2 co) {
    highp float a = 12.9898;
    highp float b = 78.233;
    highp float c = 43758.5453;
    highp float dt = dot(co.xy, vec2(a, b));
    highp float sn = mod(dt, 3.14);
    return fract(sin(sn) * c);
}

float voronoi(in vec2 x) {
    vec2 p = floor(x);
    vec2 f = fract(x);
    float res = 8.0;
    for (float j = -1.; j <= 1.; j++)
        for (float i = -1.; i <= 1.; i++) {
            vec2 b = vec2(i, j);
            vec2 r = b - f + random(p + b);
            float d = dot(r, r);
            res = min(res, d);
        }
    return sqrt(res);
}

vec2 displace(vec4 tex, vec2 texCoord, float dotDepth, float textureDepth, float strength) {
    float b = voronoi(.003 * texCoord + 2.0);
    float g = voronoi(0.2 * texCoord);
    float r = voronoi(texCoord - 1.0);
    vec4 dt = tex * 1.0;
    vec4 dis = dt * dotDepth + 1.0 - tex * textureDepth;

    dis.x = dis.x - 1.0 + textureDepth * dotDepth;
    dis.y = dis.y - 1.0 + textureDepth * dotDepth;
    dis.x *= strength;
    dis.y *= strength;
    vec2 res_uv = texCoord;
    res_uv.x = res_uv.x + dis.x - 0.0;
    res_uv.y = res_uv.y + dis.y;
    return res_uv;
}

float ease1(float t) {
    return t == 0.0 || t == 1.0
        ? t
        : t < 0.5
        ? +0.5 * pow(2.0, (20.0 * t) - 10.0)
        : -0.5 * pow(2.0, 10.0 - (t * 20.0)) + 1.0;
}

float ease2(float t) {
    return t == 1.0 ? t : 1.0 - pow(2.0, -10.0 * t);
}

void main() {
    vec2 p = v_texCoord;
    vec4 texColor = texture2D(u_texture, p);

    vec2 disp = displace(texColor, p, 0.33, 0.7, 1.0 - ease1(progress));
    vec4 dColor = texture2D(u_texture, disp);

    float val = ease1(progress);
    vec3 gray = vec3(dot(dColor.rgb, vec3(0.299, 0.587, 0.114)));
    vec4 grayColor = vec4(gray, texColor.a);
    grayColor *= 2.0;

    vec4 finalColor = mix(texColor, grayColor, smoothstep(0.0, 0.5, progress));
    finalColor = mix(finalColor, dColor, smoothstep(0.5, 1.0, progress));
    finalColor.a = texColor.a * progress;

    gl_FragColor = finalColor;
}
