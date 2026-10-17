#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

void main() {
    
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    
    float circPos = atan(p.y - 0.5, p.x - 0.5) + progress;
    float modPos = mod(circPos, 3.1415 / 4.);
    float signed = sign(progress - modPos);
    float smoothed = smoothstep(0., 1., signed);
    
    if (smoothed > 0.5){
        gl_FragColor = texture2D(to, p);
    } else {
        gl_FragColor = texture2D(from, p);
    }
    
}
