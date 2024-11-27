//For the new update
/// @arg Message
/// @arg Background
/// @arg [Repsonses]
function NewTextBox(_message, _background = 1)
{
	var _obj = instance_exists(oText) ? oTextQueued : oText;
	
	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		message = _message;
		background = _background;
		originInstance = instance_exists(other) ? other.id : noone;
		
		if (argument_count > 2)
{
//trim markers from responses
//responses = argument[2];
 _responses = argument[2];
 
  responses = array_create(array_length(_responses),"");
   _arrayIndex = 0;
   while(_arrayIndex < array_length(_responses))
   {
      responses[_arrayIndex] = string_copy(_responses[_arrayIndex], 1, string_length(_responses[_arrayIndex]));
      _arrayIndex++;
   }
  //IM A FEWAKING GENUIS
for (var i = 0; i < array_length_1d(responses); i++)
{
var _markerPosition = string_pos(":", responses[i]);
responseScripts[i] =  string_copy(responses[i],1,_markerPosition -1);
responseScripts[i] = real(responseScripts[i]);
responses[i] = string_delete(responses[i], 1, _markerPosition);
//breakpoint = 10;
}
}
else
{
responses = [-1];
responseScripts = [-1];
}
	}
	
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}