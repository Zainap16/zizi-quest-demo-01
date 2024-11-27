/// @description Insert description here
// You can write your code in this editor

//In the BEGIN STEP event of the oTransition object:

with (oPlayer)
{
 if (oPlayer.state != PlayerStateDead) state = PlayerStateTransition;
}


if (leading = OUT)
{
percent = min(1, percent + TRANSITION_SPEED);
if (percent >= 1)// if screen fully obsured
{
room_goto(target);
leading = IN;
}
}
else //leading == IN
{
percent = max(0, percent - TRANSITION_SPEED);
if (percent <= 0)// if screen fully revealed
{
with(oPlayer) state = PlayerStateFree; //Back to original state
instance_destroy();
}
}








