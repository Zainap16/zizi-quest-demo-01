// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(){
/// @arg Response


//NewTextBox("Reponse", num do which background to use starting with 1,)
switch(argument0) {
    case 0:
        break;
    case 1:
        NewTextBox("\nAncestors, guide me. \nShow me the way to my family\n and our path forward.", 0);
        break;
    case 2:
        NewTextBox("You gave a Response B!!!Any further response?", 0, ["3:Yes!", "0:No"]);
        break;
    case 3:
        NewTextBox("you pressed Yes!!!!!", 0);
        break;
	case 4: NewTextBox("\nOkay! If you ever get hurt, \nIm here to heal you "); break;
	case 5: NewTextBox("\nZizi: (winces) How… how are you \n doing this? The pain, its \n fading");
	with (oPlayer) {
           global.playerHealth = global.playerHealthMax; // Set health to maximum
        }
	break;

	case 6: NewTextBox(" Healing completed!");
	with (oPlayer) {
           global.playerHealth = global.playerHealthMax; // Set health to maximum
        }
	break;
    default:
        break;
}


}