// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function returnToVillage(){
// Check if the current room is room6
if (room == Room6) {
	instance_destroy();
    // Transition to rVillage
    room_goto(rVillage);
//check if oPlayer exits and change player's posiiton

global.completedTrial = true;
// atop mini game audio

audio_stop_sound(snd_music); 

}



}