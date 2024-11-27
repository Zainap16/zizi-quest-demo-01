/// @description variables for movement and speed
state = PlayerStateFree;
lastState = state;
hitByAttack = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;

z = 0; 
z = 0; 
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 1.5;

stateAttack = AttackHit;

invulnerable = 120;
flash = 0;
flashShader =  shWhiteFlash;

spriteWalk = sPlayer_walk;
spriteIdle = sPlayer_Idle;
spriteUlt = sPlayerUltAttack;
localFrame = 0;

// In Player Create Event
powerUpActive = false; // Power-up starts inactive
sprite_index = sPlayer_Idle; // Initial sprite is inactive


//self.keyActivate = false;
if (global.targetX != -1){

x = global.targetX;
y = global.targetY;
direction = global.targetDirection;
}
global.bossIsDead = false;
//BattleBossFight();


