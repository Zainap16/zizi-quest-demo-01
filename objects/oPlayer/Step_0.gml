/// @description player keys for movement
keyLeft =  keyboard_check(vk_left) || keyboard_check(ord("A")) ;
keyRight =  keyboard_check(vk_right) || keyboard_check(ord("D")) ;
keyUp =  keyboard_check(vk_up) || keyboard_check(ord("W")) ;
keyDown =  keyboard_check(vk_down) || keyboard_check(ord("S")) ;

keyActivate = keyboard_check_pressed(vk_space) ;
keyAttack = keyboard_check_pressed(ord("E"));
keyItem = keyboard_check_pressed(vk_control);

global.keyUlt = keyboard_check(ord("L"));


//diagnoals directions |
inputDirection = point_direction(0,0,keyRight - keyLeft,keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0 );

if (global.gamePaused == false) 
{

script_execute(state);
invulnerable = max(invulnerable - 1, 0);
flash = max(flash - 0.05, 0);
}


depth = -bbox_bottom;//cant go thru object

// In Player Step Event
if (global.keyUlt) {
    powerUpActive = !powerUpActive; // Toggle the power-up state
    if (powerUpActive) {
        sprite_index = spriteUlt; // Change to active sprite
    } else {
        sprite_index =spriteIdle; // Change to inactive sprite
    }
}


