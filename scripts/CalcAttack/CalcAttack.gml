// Script assets have changed for v2.3.0, see:
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @description Use attack hitbox & check for hits
function CalcAttack(_maskindex) {
    mask_index = _maskindex;

    // Create a temporary list to store entities hit by the attack
    var hitByAttackNow = ds_list_create();
    var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);

    // If any entities are hit
    if (hits > 0) {
        for (var i = 0; i < hits; i++) {
            // Get the ID of the hit instance
            var hitID = hitByAttackNow[| i];

            // If this instance has not yet been hit, process it
            if (ds_list_find_index(hitByAttack, hitID) == -1) {
                ds_list_add(hitByAttack, hitID);

                // Apply hit effect to the target
                with (hitID) {
                    //image_blend = c_red;
					if(object_is_ancestor(object_index, pEnemy))
						{
							
						HurtEnemy(id, 20, other.id,10);//5 damage dealt
						}
						else if(entityHitScript != -1 ) script_execute(entityHitScript);
                }
				
				
            }
        }
    }

    // Clean up the temporary list
	
    ds_list_destroy(hitByAttackNow);

    // Reset the mask index to the default
    mask_index = sPlayer_Idle;
}
function AttackHit(){
if (sprite_index != sPlayerAttackHit)
{
	//setip correct animtation
sprite_index = sPlayerAttackHit;
localFrame = 0;
image_index = 0;

//clear hit list
if (!ds_exists(hitByAttack,ds_type_list)) hitByAttack = ds_list_create();
ds_list_clear(hitByAttack);


}
CalcAttack(sPlayerAttackHitHB);
//update sprite
PlayerAnimationSprite();

if (animationEnd)
{
state = PlayerStateFree;
animationEnd = false;
}
}
function AttackSpin(){

}

function HurtEnemy(_enemy, _damage, _source, _knockback) {
    with (_enemy) {
        if (state != ENEMYSTATE.DIE) {
            // Apply ultimate damage if the key is active
            if (global.keyUlt == true) {
                _damage = 100; // Override damage for ultimate
                enemyHP -= _damage;
                flash = 1; // Trigger flash effect
             //   show_message("Hello, this is a message!");
           } else {
                enemyHP -= _damage; // Apply regular damage
                flash = 1; // Trigger flash effect
            }

            // Check if the enemy is hurt or dead
            if (enemyHP <= 0) {
                state = ENEMYSTATE.DIE; // Set enemy state to dead
            } else {
                // Set state to hurt if not already hurt
                if (state != ENEMYSTATE.HURT) statePrevious = state;
                state = ENEMYSTATE.HURT;
            }

            // Reset the animation frame to start the hurt/death animation
            image_index = 0;

            // Apply knockback if any
            if (_knockback != 0) {
                var _knockDirection = point_direction(x, y, _source.x, _source.y);
                xTo = x - lengthdir_x(_knockback, _knockDirection);
                yTo = y - lengthdir_y(_knockback, _knockDirection);
            }
        }
    }
}
