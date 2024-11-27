/// @description Insert description here
// You can write your code in this editor



/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer) || keyboard_check_pressed(ord("E"))) {
    if (!has_interacted || keyboard_check_pressed(ord("E"))) {  // Check if the interaction has not occurred yet
        // Step 1: Initial interaction
        NewTextBox("WASD/Arrow keys - Movement\nEsc - Game Menu\nL - Ultimate Attack\nE - Light Attack\nSpace - Interact\n  Ensure\n to press space on SignPost!",0 ); // Where 1 is the background type

        
      
        // Mark as interacted
        has_interacted = true;  // Set the flag to true after the dialogue
    }
}




















