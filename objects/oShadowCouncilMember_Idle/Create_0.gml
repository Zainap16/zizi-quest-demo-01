/// @description Insert description here
// You can write your code in this editor











// Inherit the parent event
event_inherited();
state = ENEMYSTATE.WANDER;

//ENEMY SPRITES
sprMove =sShadowCouncilMember_Idle ;
sprAttack =ShadowCouncilMember_Attack;
sprDie = ShadowCouncilMember_Dead;
sprHurt=sShadowCouncilMember_IdleHurt;

//enemy scripts
enemyScript[ENEMYSTATE.WANDER] =ShadowCouncilMemberWander;
enemyScript[ENEMYSTATE.CHASE] =ShadowCouncilMemberChase;
enemyScript[ENEMYSTATE.ATTACK] = ShadowCouncilMemberAttack;
enemyScript[ENEMYSTATE.HURT] = ShadowCouncilMemberHurt;
enemyScript[ENEMYSTATE.DIE] = ShadowCouncilMemberDie;
