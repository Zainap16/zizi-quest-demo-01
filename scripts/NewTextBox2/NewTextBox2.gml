/// @function NewTextBox
/// @description Creates a new text box with optional responses.
/// @arg _message: The text to display.
/// @arg _background: The background style (default is 1).
/// @arg [_responses]: Array of response strings with scripts (optional).
function NewTextBox2(_message, _background = 1, _responses = [-1])
{
    // Determine which object to use for the text box
    var _obj = instance_exists(oText) ? oTextQueued : oText;

    // Create the text box instance
    with (instance_create_layer(0, 0, "Instances", _obj))
    {
        // Set message and background
        message = _message;
        background = _background;
        originInstance = instance_exists(other) ? other.id : noone;

        // Handle responses
        if (array_length(_responses) > 0 && _responses[0] != -1) {
            // Initialize responses and responseScripts arrays
            responses = array_create(array_length(_responses), "");
            responseScripts = array_create(array_length(_responses), 0);

            // Process each response string
            for (var i = 0; i < array_length_1d(_responses); i++) {
                var _markerPosition = string_pos(":", _responses[i]);
                if (_markerPosition > 0) {
                    // Extract script ID and response text
                    responseScripts[i] = real(string_copy(_responses[i], 1, _markerPosition - 1));
                    responses[i] = string_copy(_responses[i], _markerPosition + 1, string_length(_responses[i]) - _markerPosition);
                } else {
                    // Default response handling if no marker found
                    responseScripts[i] = -1;
                    responses[i] = _responses[i];
                }
            }
        } else {
            // Default values for no responses
            responses = [-1];
            responseScripts = [-1];
        }
    }

    // Lock the player state
    with (oPlayer)
    {
        if (state != PlayerStateLocked)
        {
            lastState = state;
            state = PlayerStateLocked;
        }
    }
}
