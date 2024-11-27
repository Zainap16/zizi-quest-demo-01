/// @description Insert description here



// Inherit the parent event
event_inherited();


state = ENEMYSTATE.WANDER;

//ENEMY SPRITES
sprMove = sSlime;
sprAttack =sSlimeAttack;
sprDie = sSlimeDie;
sprHurt=sSlimeHurt;

//enemy scripts
enemyScript[ENEMYSTATE.WANDER] =SlimeWander;
enemyScript[ENEMYSTATE.CHASE] =SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;