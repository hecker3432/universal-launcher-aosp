#ifdef GL_ES
precision mediump float;
#endif

varying mediump vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // New text slides in from top
    vec2 uvNew = p;
    uvNew.y = p.y + (1.0 - progress) * 1.5;

    // Old text slides out to bottom
    vec2 uvOld = p;
    uvOld.y = p.y - progress * 1.5;

    // Perspective compression on Y axis
    float perspective = mix(0.7, 1.0, progress);
    uvNew.y = 0.5 + (uvNew.y - 0.5) / perspective;
    uvOld.y = 0.5 + (uvOld.y - 0.5) / perspective;

    // Sample both textures
    vec4 texColorNew = vec4(0.0);
    vec4 texColorOld = vec4(0.0);

    // Check bounds and sample
    if (uvNew.y >= 0.0 && uvNew.y <= 1.0) {
        texColorNew = texture2D(to, uvNew);
        texColorNew.a *= smoothstep(0.0, 0.3, progress);
    }

    if (uvOld.y >= 0.0 && uvOld.y <= 1.0) {
        texColorOld = texture2D(from, uvOld);
        texColorOld.a *= smoothstep(1.0, 0.7, progress);
    }

    // Combine - new text on top
    gl_FragColor = mix(texColorOld, texColorNew, texColorNew.a);
}
