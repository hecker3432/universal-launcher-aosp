#ifdef GL_ES
precision mediump float;
#endif

varying vec2 v_texCoord;
uniform sampler2D from;
uniform sampler2D to;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    if (p.y > 0.5) {
        // TOP HALF
        if (progress < 0.5) {
            // Top part shows new text cut to size
            float revealHeight = progress * 2.0; // 0.0 to 1.0
            float cutOff = 0.5 + (1.0 - revealHeight) * 0.5;
            
            if (p.y < cutOff) {
                // Show compressed old texture
                float compressedY = 0.5 + (p.y - 0.5) / (1.0 - revealHeight);
                gl_FragColor = texture2D(from, vec2(p.x, compressedY));
            } else {
                // Show new texture (cut to size)
                gl_FragColor = texture2D(to, p);
            }
        } else {
            // Top half shows top half of new text
            gl_FragColor = texture2D(to, p);
        }
    } else {
        // BOTTOM HALF
        float revealHeight = (progress - 0.5) * 2.0; // 0.0 to 1.0
        float cutOff =(1.0 - revealHeight) * 0.5;

        if (progress < 0.5) {
            // Show old value
            gl_FragColor = texture2D(from, p);
        } else {
            // Show new value starting compressed and expanding
            
            if (p.y < cutOff) {
                gl_FragColor = texture2D(from, p);
            } else {
                float compressedY = 0.5 + (p.y - 0.5) / revealHeight;
                gl_FragColor = texture2D(to, vec2(p.x, compressedY));
            }
        }
    }
}