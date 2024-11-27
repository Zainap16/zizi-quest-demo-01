/// @description Insert description here
// You can write your code in this editor












// Inherit the parent event
event_inherited();

/// @description Insert description here



// Inherit the parent event
event_inherited();


state = ENEMYSTATE.WANDER;

//ENEMY SPRITES
sprMove = sWalkBoss;
sprAttack =sAttackBoss;
sprDie = sDieBoss;
sprHurt=sHitBoss;

//enemy scripts
enemyScript[ENEMYSTATE.WANDER] =BossWander;
enemyScript[ENEMYSTATE.CHASE] =BossChase;
enemyScript[ENEMYSTATE.ATTACK] = BossAttack;
enemyScript[ENEMYSTATE.HURT] = BossHurt;
enemyScript[ENEMYSTATE.DIE] = BossDie;