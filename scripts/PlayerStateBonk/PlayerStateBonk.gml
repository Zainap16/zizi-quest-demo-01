// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateBonk(){
	
//movement
hSpeed = legthdir_x(speedBonk,direction - 180);
vSpeed = legthdir_y(speedBonk,direction -180);

moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
var _collided = PlayerCollision();

//update sprite
sprite_index = sPlayerHurt;
image_index = CARDINAL_DIR -2;

//change state

if(moveDistanceRemaining <= 0)
{
state = PlayerStateFree;
}

}