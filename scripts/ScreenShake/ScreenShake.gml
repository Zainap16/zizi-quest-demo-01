// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake(Magnitude, Frames){
	// @desc ScreenShake (magnitude, frames)
	// @arg Magnitude sets the strength of the shake (distance range)
	// @ Frames sets the length of the shake  in frames (60 = 1 sec)


//with (global.iCamera) 
{
	if (Magnitude > shakeRemain) 
	{
		shakeMagnitude = Magnitude; 
		shakeRemain = shakeMagnitude; 
		shakeLength = Frames; 
	
	}
}

}
