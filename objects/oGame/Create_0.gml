/// @description initialise & globals
randomize();
global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = 0;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;

global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.iUI = instance_create_layer(0,0,layer,oUI);
//surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);
//Resize the application surface to match the room's view size
surface_resize(application_surface,RESOLUTION_W ,RESOLUTION_H );
//1280,700
room_goto(ROOM_START);










