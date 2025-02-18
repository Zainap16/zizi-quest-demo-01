/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//intrinsic variables
state = ENEMYSTATE.IDLE
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0
timePassed = 0;
waitDuration = 60;
wait = 0;

stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

aggroCheck = 0;
aggroCheckDuration = 5;
//enemy sprites
sprMove = sSlime;

//enemy scripts
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;