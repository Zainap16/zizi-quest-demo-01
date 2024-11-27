/// @description Insert description here
// You can write your code in this editor
//audio_play_sound(sndBattle,1,true); // Stops the specific sound `sndSlimeHit`.
// Stop all currently playing sounds
audio_stop_all();

// Play specific music based on the room
 if (room == rVillage || room == rNext) { // Replace 'rRoom1' with another room's name
    audio_play_sound(sndAdventureSong, 1, true);
	//audio_sound_gain(sndAdventureSong, 1, 1000); // Fade in the music
} 









