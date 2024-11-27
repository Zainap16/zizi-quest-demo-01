/// @description Insert description here
// You can write your code in this editor



if (type == TRANS_TYPE.SLIDE) {
    draw_set_color(c_black);
    
    // Draw top rectangle
    draw_rectangle(0, 0, width, percent * heightHalf, false);
    
    // Draw bottom rectangle
    draw_rectangle(0, height, width, height - (percent * heightHalf), false);
}

/*if (type == TRANS_TYPE.FADE){
	draw_set_alpha(percent);
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, height, false);
	draw_set_alpha(1);
}*/

//if (type == TRANS_TYPE.FADE)
//{

//}





