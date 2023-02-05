// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_deck(argument0){

	deck_size = argument0 * 2;
	
	for (var i = 0; i < deck_size; i += 1) {
		ds_list_add(global.deck, instance_create_layer(0,0, "Instances", obj_card));
	}

	for (var i = 0; i < deck_size; i += 1) {
		global.deck[|i].type = i % cards_number;
		global.deck[|i].face = 0;
		global.deck[|i].index = i;
		global.deck[|i].visible = false;
	}
}