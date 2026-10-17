attribute vec4 a_position;
attribute vec2 a_texCoord;
attribute vec4 a_color;

#ifdef GL_ES
varying mediump vec2 v_texCoord;
varying lowp vec4 v_fragmentColor;
#else
varying vec2 v_texCoord;
varying vec4 v_fragmentColor;
#endif
varying float v_screenX;
varying float v_screenY;

void main()
{
    gl_Position = CC_MVPMatrix * a_position;
	v_texCoord = a_texCoord;
	v_fragmentColor = a_color;
	v_screenX = clamp(gl_Position.x, 0.0, 1.0);
	v_screenY = clamp(gl_Position.y, 0.1, 0.9);
}