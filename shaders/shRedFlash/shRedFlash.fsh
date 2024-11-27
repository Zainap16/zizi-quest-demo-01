//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float flash;

void main()
{
vec4 source = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
//source.rgb += flash;
    // Add flash value to the red channel only
    source.r += flash;
    
    // Ensure RGB values stay within the valid range [0, 1]
    source.rgb = clamp(source.rgb, 0.0, 1.0);
	
	 gl_FragColor = source;
}
