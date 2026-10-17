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
    gl_Position = CC_PMatrix * a_position;
    //gl_Position = CC_MVPMatrix * a_position;
            // CC_MVPMatrix  is inverting y

           /*
           uniform mat4 CC_PMatrix;
           uniform mat4 CC_MultiViewPMatrix[4];
           uniform mat4 CC_MVMatrix;
           uniform mat4 CC_MVPMatrix;
           uniform mat4 CC_MultiViewMVPMatrix[4];
           uniform mat3 CC_NormalMatrix;
                                          */

	v_texCoord = a_texCoord;
	v_fragmentColor = a_color;
    v_screenX =  clamp(v_texCoord.x, 0.0, 1.0); // gl_Position.x;
	v_screenY = clamp(1.0-v_texCoord.y, 0.0, 1.0); //1.0-v_texCoord.y; // gl_Position.y;
}