#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // New text slides in from left
    vec2 uvNew = p;
    uvNew.x = p.x - (1.0 - progress) * 1.5;

    // Old text slides out to right
    vec2 uvOld = p;
    uvOld.x = p.x + progress * 1.5;

    // Perspective compression on X axis
    float perspective = mix(0.7, 1.0, progress);
    uvNew.x = 0.5 + (uvNew.x - 0.5) / perspective;
    uvOld.x = 0.5 + (uvOld.x - 0.5) / perspective;

    // Sample both textures
    vec4 texColorNew = vec4(0.0);
    vec4 texColorOld = vec4(0.0);

    // Check bounds and sample
    if (uvNew.x >= 0.0 && uvNew.x <= 1.0) {
        texColorNew = texture2D(to, uvNew);
        texColorNew.a *= smoothstep(0.0, 0.3, progress);
    }

    if (uvOld.x >= 0.0 && uvOld.x <= 1.0) {
        texColorOld = texture2D(from, uvOld);
        texColorOld.a *= smoothstep(1.0, 0.7, progress);
    }

    // Combine - new text on top
    gl_FragColor = mix(texColorOld, texColorNew, texColorNew.a);
}
