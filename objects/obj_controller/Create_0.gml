/// @description Insert description here
// You can write your code in this editor

enum game_states {
	WAITING,
	CHECKING,
	WON,
	LOST
};

global.game_state = game_states.WAITING;
global.cards_selected = [noone, noone];

play_time = 30;
curr_time = play_time;

cards_number = 8;
deck = ds_list_create();

var deck_size = cards_number * 2;

for (var i = 0; i < deck_size; i += 1) {
	ds_list_add(deck, instance_create_layer(0,0, "Instances", obj_card));
}

for (var i = 0; i < deck_size; i += 1) {
	deck[|i].type = i % cards_number;
	deck[|i].face = 0;
	deck[|i].index = i;
	deck[|i].visible = false;
}

shuffle_cards(deck);

alarm[0] = play_time * room_speed;