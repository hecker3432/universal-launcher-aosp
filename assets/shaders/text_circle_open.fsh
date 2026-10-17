#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif

// Text animation shader: Circle Open effect
// Works with single texture (the text label)
// progress: 0.0 = invisible, 1.0 = fully visible

uniform sampler2D u_texture;
uniform float progress;

void main() {
    vec2 p = v_texCoord;

    // Sample the text texture
    vec4 texColor = texture2D(u_texture, p);

    // Calculate distance from center
    vec2 center = vec2(0.5, 0.5);
    float dist = distance(center, p);

    // Circle open effect: reveal from center outward
    // As progress goes from 0 to 1, the circle expands
    float SQRT_2 = 1.414213562373;
    float smoothness = 0.1;  // Reduced for sharper edge
    // Use squared progress for slower start, faster end (ease-in effect)
    float easedProgress = progress * progress;
    float radius = easedProgress * (1.0 + smoothness) * SQRT_2;
    float mask = smoothstep(radius - smoothness, radius, dist);

    // Apply mask to alpha - invert so center shows first
    texColor.a *= (1.0 - mask);

    gl_FragColor = texColor;
}
