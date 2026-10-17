#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoord;
uniform sampler2D from, to;
uniform float progress;

const float SQRT_2 = 1.414213562373;
float dots = 20.0;

vec2 center = vec2(1, 1);

void main() {
    vec2 p = vec2(v_texCoord.x, 1.0 - v_texCoord.y);
    
    float x = progress /2.0;
    
    bool nextImage = distance(fract(p * dots), vec2(0.5, 0.5)) < (2.0 * x / distance(p, center));
    
    if(nextImage) gl_FragColor = texture2D(to, p);
    else gl_FragColor = texture2D(from, p);
}
