/// @description Insert description here
// You can write your code in this editor

// TODO: draw if you won, lost, ot decrement the timer
curr_time = ceil(alarm[0] / room_speed);

draw_set_font(fnt_arial);
draw_set_color(c_white);
draw_text(90, 10, "Time Left: " + string(curr_time));