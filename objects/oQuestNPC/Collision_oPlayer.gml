/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer) || keyboard_check_pressed(ord("E"))) {
    if (!has_interacted || keyboard_check_pressed(ord("E"))) {  // Check if the interaction has not occurred yet
        // Step 1: Initial interaction

NewTextBox("\n[Scene: Ndebele Village – The edge of the lush \ngreenlands, with the barren void visible in the \ndistance. The warrior is painting symbols on a wall.]", 0); 

NewTextBox("Zizi: (looking around) Why does this part of \nNdebele still thrive?", 0); 
NewTextBox("The rest… it\’s like the life was ripped away.", 0); 

NewTextBox("Warrior: The greenlands are protected by the \nspirit of our ancestors.", 0); 
NewTextBox("But beyond this place, the Shadow Council \nleft nothing but death.", 0); 

NewTextBox("Zizi: (urgent) I need to find my family.", 0); 
NewTextBox("Do you know where they could be?", 0); 

NewTextBox("Warrior: I don\’t. But your path to them", 0); 
NewTextBox("lies through the trial.", 0); 

NewTextBox("Zizi: (frowning) Trial? What trial?", 0); 

NewTextBox("Warrior: Deep in the void lies a sacred site,", 0); 
NewTextBox("where our ancestors first painted their stories.", 0); 
NewTextBox("If you go there and complete the trial,", 0); 
NewTextBox("their strength will awaken in you.", 0); 
NewTextBox("They will guide you to those you’ve lost.", 0); 

NewTextBox("Zizi: (hopeful) You mean… they’ll help me find my family?", 0); 

NewTextBox("Warrior: If your heart is true, yes.", 0); 
NewTextBox("But the trial will test your spirit.", 0); 
NewTextBox("Through the art of the mural,", 0); 
NewTextBox("you will see the threads that connect you,", 0); 
NewTextBox("to your family, to our people, and to yourself.", 0); 

NewTextBox("Zizi: (nodding) I’ll go.", 0); 
NewTextBox("Whatever it takes to find them, I’ll do it.", 0); 

NewTextBox("Warrior: (placing a hand on her shoulder)", 0); 
NewTextBox("Trust the ancestors, Zizi.", 0); 
NewTextBox("Their strength flows in you.", 0); 
NewTextBox("Let it guide you through the darkness.", 0); 

NewTextBox("[Zizi looks toward the void,", 0); 
NewTextBox("determination hardening her resolve as she steps forward.]", 0); 

      /*
	          NewTextBox("\n(The air hums \nwith faint chanting, and\n Nobuhle prepares a ritual to \ncommune with the spirits.)", 0); // Where 1 is the background type
	NewTextBox("\nNobuhle: 'These herbs will connect you \nto the ancestors. Let the smoke carry your\n intentions to them.'",0)//,"2:Response B"
	NewTextBox("(Zizi lights the herbs, and the grove comes \nalive with swirling light. She chants\n softly, her voice growing stronger.)",0,["1:Guide me.","1:Chant"])//,"2:Response B"
	NewTextBox("\n(The smoke forms a compass, glowing faintly.)",0)
	NewTextBox("Nobuhle: 'It is a spirit\n compass! It will lead us \nto your family. But\n first, we must brave the Dying Jungle.'",0)
	  
	  */
        // Mark as interacted
        has_interacted = true;  // Set the flag to true after the dialogue
    }
}












