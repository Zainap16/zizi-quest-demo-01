
function ShadowCouncilMemberWander
(){
sprite_index = sprMove;

//at destination or given up?
if ((x == xTo) && (y == yTo) || (timePassed > enemyWanderDistance / enemySpeed)) 
{
hSpeed = 0;
vSpeed = 0;
//end our move animation
if (image_index < 1)
{
image_speed = 0.0;
image_index = 0;
}

//set new target destination
if (++wait >= waitDuration)
{
wait =0;
timePassed =0;
dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
xTo = x + lengthdir_x(enemyWanderDistance, dir);
yTo = y + lengthdir_y(enemyWanderDistance, dir);

}

}
else //move towards new destination
//move towards new destination
{
timePassed++;
image_speed = 1.0;
var _distanceToGo = point_distance(x,y,xTo,yTo);
var _speedThisFrame = enemySpeed;
if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
dir = point_direction(x,y,xTo,yTo);
hSpeed = lengthdir_x(_speedThisFrame,dir);
vSpeed = lengthdir_y(_speedThisFrame,dir);

if (hSpeed != 0) image_xscale =sign(hSpeed);

//collide & move
var _collided = EnemyTileCollision();


}

//check for aggro

if (++aggroCheck >= aggroCheckDuration)
{
aggroCheck = 0;
if(instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius)
{

state = ENEMYSTATE.CHASE;
target = oPlayer;

}
}


}

function ShadowCouncilMemberChase(){

sprite_index = sprMove;

if(instance_exists(target))
{
xTo =target.x;
yTo =target.y;

var _distanceToGo = point_distance(x,y,xTo,yTo);

image_speed = 1.0;
dir = point_direction(x,y,xTo,yTo);
if (_distanceToGo > enemySpeed)
{
hSpeed = lengthdir_x(enemySpeed,dir);
vSpeed = lengthdir_y(enemySpeed,dir);
}
else
{
hSpeed = lengthdir_x(_distanceToGo,dir);
vSpeed = lengthdir_y(_distanceToGo,dir);
}
if (hSpeed != 0) image_xscale = sign(hSpeed);

//collide &move
EnemyTileCollision();


}

if (_distanceToGo >= enemyGiveUpRange) state = ENEMYSTATE.WANDER;

//check if close to launch an attack

if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemyAttackRadius)
{
state = ENEMYSTATE.ATTACK;
sprite_index = sprAttack;
image_index = 0;
image_speed = 1.0;
//target 8px past the player
xTo += lengthdir_x(8,dir);
yTo += lengthdir_y(8,dir);


}

}
	
function ShadowCouncilMemberAttack() {
    sprite_index = sprAttack;

    var _spd = enemySpeed;

    // Pause if preparing to jump
    if (image_index < 2) _spd = 0;

    // Resume animation when nearly done
    if (point_distance(x, y, xTo, yTo) < 4 && image_index < 5) {
        image_speed = 1.0;
    }

    // Movement logic
    if (point_distance(x, y, xTo, yTo) > _spd) {
        var dir = point_direction(x, y, xTo, yTo);
        hSpeed = lengthdir_x(_spd, dir);
        vSpeed = lengthdir_y(_spd, dir);

        if (hSpeed != 0) image_xscale = sign(hSpeed);

        if (EnemyTileCollision()) {
            xTo = x;
            yTo = y;
        }
    } else {
        x += hSpeed;
        y += vSpeed;

        // Transition state after attack animation
        if (floor(image_index) == 5) {
            show_debug_message("Attack complete. Switching to CHASE.");
            state = ENEMYSTATE.CHASE;
        }
    }
}



function ShadowCouncilMemberHurt()
{

sprite_index = sprHurt;
var _distanceToGo = point_distance(x,y,xTo,yTo);
if (_distanceToGo > enemySpeed)
{
image_speed = 1.0;
dir = point_direction(x,y,xTo,yTo);
hSpeed =lengthdir_x(enemySpeed, dir);
vSpeed =lengthdir_y(enemySpeed, dir);

if (hSpeed != 0) image_xscale = -sign(hSpeed);

//collide & move if theres a collision thne stop afterwards

if (EnemyTileCollision())
{
xTo =x;
yTo =y;
}

}
else
{
x =xTo;
y =yTo;

if (statePrevious != ENEMYSTATE.ATTACK) state = statePrevious; else state = ENEMYSTATE.CHASE;
}
}


function ShadowCouncilMemberDie(){
	sprite_index = sprDie;
image_speed = 1.0;
var _distanceToGo =point_distance(x,y,xTo,yTo);
if(_distanceToGo > enemySpeed)
{
dir = point_direction(x,y,xTo,yTo);
hSpeed = lengthdir_x(enemySpeed,dir);
vSpeed = lengthdir_y(enemySpeed,dir);

if (hSpeed != 0) image_xscale = -sign(hSpeed);

//collide &move

EnemyTileCollision();

}

else
{
x = xTo;
y = yTo;
}

if (image_index + (sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps)) >= image_number)
{
instance_destroy();
}
	}
	
	