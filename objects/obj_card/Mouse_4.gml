/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.WAITING) {
	if (face == 0) {
		face = 1;
		
		if (global.card1 == noone) {
			global.card1 = self;
			
		} else {										// first card chosen already
			global.game_state = game_states.CHECKING;
			global.card2 = self;
			
			// cards match
			if ((global.card1.type == global.card2.type) && (global.card1.index != global.card2.index))
			{	
				alarm[0] = room_speed/3;
				
			} else {
				alarm[1] = room_speed/3;
			}
			
			
		}
		
	} else {
		face = 0;
	}

}
