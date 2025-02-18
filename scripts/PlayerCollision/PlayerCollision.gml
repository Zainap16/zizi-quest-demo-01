// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){


 var _collision = false;
var _entityList = ds_list_create();
// Horizontal Tiles

if (tilemap_get_at_pixel(collisionMap,x + hSpeed, y)){

x -= x mod TILE_SIZE;
if (sign(hSpeed)== 1){
x += TILE_SIZE - 1
}
hSpeed = 0;
_collision =true;
}

//horizontal entities
var _entityCount = instance_position_list(x + hSpeed, y, pEntity, _entityList, false);
var _snapX; //snap if there is a collision

while (_entityCount > 0){
var _entityCheck = _entityList[| 0]; //ds_list_find_value(_entityList, 0) -- exatcku the same
if (_entityCheck.entityCollision == true)
{
// move as close as we can
//don't have multiple collidaet objs it can cause problems
if (sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right + 1;
else _snapX = _entityCheck.bbox_left -1;
x = _snapX;
hSpeed = 0;
_collision = true;
_entityCount = 0;
}

ds_list_delete(_entityList, 0);
_entityCount--;
}
// horitonal move commit
x += hSpeed;

//clear list between axis
ds_list_clear(_entityList);

// vertical Tiles

if (tilemap_get_at_pixel(collisionMap,x, y + vSpeed)){

y -= y mod TILE_SIZE;
if (sign(vSpeed)== 1){
y += TILE_SIZE - 1
}
vSpeed = 0;
_collision =true;
}


//vertical entities
var _entityCount = instance_position_list(x, y + vSpeed, pEntity, _entityList, false);
var _snapY; //snap if there is a collision

while (_entityCount > 0){
var _entityCheck = _entityList[| 0]; //ds_list_find_value(_entityList, 0) -- exatcku the same
if (_entityCheck.entityCollision == true)
{
// move as close as we can
//don't have multiple collidaet objs it can cause problems
if (sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom + 1;
else _snapY = _entityCheck.bbox_top -1;
y = _snapY;
vSpeed = 0;
_collision = true;
_entityCount = 0;
}

ds_list_delete(_entityList, 0);
_entityCount--;
}

// vertical move commit
y += vSpeed;

ds_list_destroy(_entityList);

return _collision
}