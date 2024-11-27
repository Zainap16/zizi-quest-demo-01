/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x, y, oPlayer) ) {
    if (!has_interacted || keyboard_check_pressed(ord("E"))) {  // Check if the interaction has not occurred yet
        // Step 1: Initial interaction
       NewTextBox("\nThe voided lands : A desolate, shadowy expanse. \nZizi sits by a faint fire, her wounds being tended\n to by the healer, Nora. Noras hands glow faintly as \nshe channels energy into Zizis injuries.",0 ,["5:How… how are you"]); // Where 1 is the background type
        NewTextBox("Nora: (calmly) Its not me, child. Its \n the ancestors. Their power flows \n through me,",0 ); // Where 1 is the background type
		NewTextBox("just as it flows through you. They guide \n my hands, just as they will \nguide your blade.",0,["6:You know about my \n fight?"])

NewTextBox("Zizi: (confused) Ingwe Yezizimu?", 0); // Continuation from the conversation above

NewTextBox("Nora: The one who stalks the shadows,\nborn of rage and greed.", 0); 
NewTextBox("Long ago, he was a protector.\n  But the Shadow Council twisted his heart.", 0); 

NewTextBox("Nora: Now, he enforces their will,\n and he feeds on fear and despair.", 0,["7:I can..."]);  

NewTextBox("Nora: (placing a hand on her shoulder) \n Ingwe Yezizimu is no ordinary foe \nHe carries the strength of a hundred battles.", 0); 
NewTextBox("His claws tear through both body and spirit. \nTo defeat him, you must be more than strong. \nYou must be wise, patient, and attuned", 0,["8:(hesitant)"]); 


NewTextBox("Nora: 'You are ready. \nThe ancestors would not have brought you here \nif you weren’t meant to face this.'", 0); 

NewTextBox("'Trust the ancestors. Feel their strength within you.\n Just as I feel it when I heal. \n They will not let you fight alone.'", 0,["9:(resolute)"]); 

NewTextBox("Nora: (smiling softly) 'Good. Remember, Zizi,\nthe ancestors power is strongest with purpose.\nDo not let fear guide you.'", 0); 
NewTextBox("'Let your love for your people light the way.'", 0); 

        // Mark as interacted
        has_interacted = true;  // Set the flag to true after the dialogue
    }
}
























