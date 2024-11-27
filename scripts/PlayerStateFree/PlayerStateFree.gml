function PlayerStateFree() {
    // Movement
    hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
    vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

    PlayerCollision();

    // Update Sprite Index
    var _oldSprite = sprite_index;
    if (inputMagnitude != 0) {
        direction = inputDirection;
        sprite_index = spriteWalk;
    } else {
        sprite_index = spriteIdle;
    }

    if (_oldSprite != sprite_index) localFrame = 0;

    // Update Image Index
    PlayerAnimationSprite();

//attack key logic - shift
if (keyAttack)
{
state = PlayerStateAttack;
stateAttack = AttackHit;

}


    // Activate key logic
    if (keyActivate) {
        // Check for an entity to activate
        var _activateX = lengthdir_x(10, direction);
        var _activateY = lengthdir_y(10, direction);
        activate = instance_position(x + _activateX, y + _activateY, pEntity);

        if (activate != noone && activate.entityActivateScript != -1) {
            // Execute activation script
            ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);

            // Make the NPC face the player
            if (activate.entityNPC) {
                with (activate) {
                    direction = point_direction(x, y, oPlayer.x, oPlayer.y); // Make NPC face the player
                    image_index = CARDINAL_DIR; // Set NPC sprite index if needed (can be customized)
                }
            }
        }
    }
}
