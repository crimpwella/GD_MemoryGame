/// @description Insert description here
// You can write your code in this editor

enum game_states {
	WAITING,
	CHECKING,
	WON,
	LOST
};

global.game_state = game_states.WAITING;

global.card1 = noone;
global.card2 = noone;
global.deck = ds_list_create();

play_time = 30;
curr_time = play_time;

cards_number = 8;

create_deck(cards_number);

shuffle_cards();

alarm[0] = play_time * room_speed;