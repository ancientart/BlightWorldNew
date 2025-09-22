/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("G"))){
	character.stomach += .53;
	
}
if(keyboard_check_pressed(ord("H"))){
	character.stomach += 10;

}
if(keyboard_check_pressed(ord("J"))){
	character.stomach -= 2;

}
var _transfer = 0;
	if(character.stomach > 0){
		character.stomach -= character_rate.stomach;
		_transfer = character_rate.stomach;
		
	character.head += (character_rate.stomach*character_rate.head);
	character.body += (character_rate.stomach*character_rate.body);
	character.arms += (character_rate.stomach*character_rate.arms);
	character.legs += (character_rate.stomach*character_rate.legs);
	character.belly += (character_rate.stomach*character_rate.belly);		
	}else{
		_transfer = 0;
		character.stomach = 0;
	}


	character.head -= (.0002*character_rate.head);
	character.body -= (.0002*character_rate.body);
	character.arms -= (.0002*character_rate.arms);
	character.legs -= (.0002*character_rate.legs);
	character.belly -= (.0002*character_rate.belly);
	
	character.total = character.head + character.body + character.arms + character.legs + character.belly;