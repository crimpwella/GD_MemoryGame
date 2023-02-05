/// @description cards match 
// You can write your code in this editor

instance_destroy(global.card1);
instance_destroy(global.card2);

global.card1 = noone;
global.card2 = noone;
global.game_state = game_states.WAITING;