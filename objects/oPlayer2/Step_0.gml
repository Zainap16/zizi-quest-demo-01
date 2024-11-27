//current state

var _onground = place_meeting(x,y+groundbuffer,obj_ground);

///movement

var _key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); 
var _key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space);
var _key_jump_held = keyboard_check(vk_up)  || keyboard_check(ord("W"))  || keyboard_check(vk_space);

var _dir = _key_right - _key_left

hsp += _dir*accel

if (_dir == 0) {
	
	if (hsp < 0) {//left
	hsp = min(hsp + decel,0);
	} else{//right
		hsp = max(hsp - decel,0);
	}
	
}

hsp = clamp(hsp,-max_hsp,max_hsp); //max speeds

///gravity

vsp += grav;

//jump

if (jumpbuffer > 0) {
	jumpbuffer--;
	if (_key_jump) && (vsp > 0) { 
		jumpbuffer = 0;
		vsp = jumpheight;
	}
}

if (_onground) jumpbuffer = 10;

if (place_meeting(x+hsp,y,obj_ground)) {
	var _x = round(x);
	var _pixel = sign(hsp);
	while (!place_meeting(_x+_pixel,y,obj_ground)) _x += _pixel;
	x = _x;
	hsp = 0;
	
}	

//if (place_meeting(x+hsp,y,obj_moss)) {
//	var _x = round(x);
//	var _pixel = sign(hsp);
//	while (!place_meeting(_x+_pixel,y,obj_moss)) _x += _pixel;
//	x = _x;
//	hsp = 0;
	
//}	

if (place_meeting(x,y+vsp,obj_ground)) {
	var _y = round(y);
	var _pixel = sign(vsp);
	while (!place_meeting(x,_y+_pixel,obj_ground)) _y += _pixel;
	y = _y;
	vsp = 0;
	
}	

//if (place_meeting(x,y+vsp,obj_moss)) {
//	var _y = round(y);
//	var _pixel = sign(vsp);
//	while (!place_meeting(x,_y+_pixel,obj_moss)) _y += _pixel;
//	y = _y;
//	vsp = 0;
	
//}	

if (_onground) jumpbuffer = 10; 

//jump while jumping

if (vsp < 0) && (!_key_jump_held) {
	vsp = max(vsp,jumpheight_min);
}

vsp = clamp(vsp,jumpheight,grav_max);
//commit movements
x += hsp;
y += vsp;

//Game Over

if (place_meeting(x,y,obj_danger)) {
	game_restart();
}

//paint collection

if (place_meeting(x,y,oPaint))
{
	room_goto_next();
}