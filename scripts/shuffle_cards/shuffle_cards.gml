// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_cards(argument0){
	var deck = argument0;
	var deck_size = ds_list_size(deck);
	randomize();
	ds_list_shuffle(deck);
	var cards_x = 130;
	var cards_y = 100;
	var cards = 1;
	
	for (var i = 0; i < deck_size; i+=1){
		deck[|i].x = cards_x;
		deck[|i].y = cards_y;
		deck[|i].index = i;
		deck[|i].visible = true;
		
		if(cards % 4 == 0) {
			cards_x = 130;
			cards_y += 160;
		} else {
			cards_x += 110;
		}
		cards += 1;
	}
}