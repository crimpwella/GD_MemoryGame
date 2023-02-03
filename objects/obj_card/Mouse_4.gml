/// @description Insert description here
// You can write your code in this editor

// TODO: possible bugs:
//make sure you can't click an invisible card (or just destroy)
//mkae sure you don count clicking the same card twice as a match
if (global.game_state == game_states.WAITING) {
	if (face == 0) {
		face = 1;
		
		if(global.cards_selected[0] == noone) {
			global.cards_selected [0] = self;
		} else {
			global.game_state = game_states.CHECKING;
			global.cards_selected[1] = self;
			
			if (global.cards_selected[0].type == global.cards_selected[1].type)
			{
				instance_destroy(global.cards_selected[0]);
				instance_destroy(global.cards_selected[1]);
				
			} else {
				// set an alarm and flip them back over
				// or is there an easier way to couunt down - like wait ? 
				
			}
			// TODO check if the two cards match. 
			// if they od, make them invisible
			// if they dont, flip them back over
			
			global.game_state = game_states.WAITING;
			global.cards_selected[0] = noone;
			global.cards_selected[0] = noone;
			
		}
		
	} else {
		face = 0;
	}

}
