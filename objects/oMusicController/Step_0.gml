/// @description Insert description here
// You can write your code in this editor



//audio_stop_all();




if (instance_exists(oBoss)) {
    // Play the enemy's sound if it exists and isn't already playing
    if (!audio_is_playing(sndBattle)) {
        audio_play_sound(sndBattle, 1, true); // Play the enemy's sound
    }

    // Stop the background music while the enemy exists
    if (audio_is_playing(sndAdventureSong)) {
        audio_stop_sound(sndAdventureSong); // Stop the normal background music
    }
} else {
    // If no enemies exist, stop the enemy's sound and play background music
    if (audio_is_playing(sndBattle)) {
        audio_stop_sound(sndBattle); // Stop the enemy's sound
    }

    if (!audio_is_playing(sndAdventureSong)) {
        audio_play_sound(sndAdventureSong, 1, true); // Play the background music
    }
}





