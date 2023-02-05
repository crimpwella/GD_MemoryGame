// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_cards(){
	var deck_size = ds_list_size(global.deck);
	randomize();
	ds_list_shuffle(global.deck);
	var cards_x = 130;
	var cards_y = 100;
	var cards = 1;
	
	for (var i = 0; i < deck_size; i+=1){
		global.deck[|i].x = cards_x;
		global.deck[|i].y = cards_y;
		global.deck[|i].index = i;
		global.deck[|i].visible = true;
		
		if(cards % 4 == 0) {
			cards_x = 130;
			cards_y += 160;
		} else {
			cards_x += 110;
		}
		cards += 1;
	}
}