// Feather ignore GM1041
draw_sprite_ext(spr_MainMenu_backsplash,0,(_halign*2)/3,(_valign*2)/3,2.5,2.5,0,c_white,.4);

ui_element_move_and_update(200, 500, MainMenu);
ui_draw_elements(MainMenu);

if(keyboard_check_released(ord("R"))){
NewGame.sprite_scale += .5;
LoadGame.sprite_scale += .5;
Settings.sprite_scale += .5;
ExitGame.sprite_scale += .5;
show_debug_message(mouse_x,mouse_y, "click!");	
}
if(keyboard_check_released(ord("Q"))){
NewGame.sprite_scale -= .5;
LoadGame.sprite_scale -= .5;
Settings.sprite_scale -= .5;
ExitGame.sprite_scale -= .5;
show_debug_message(mouse_x,mouse_y, "click!");	
}

var _button = ui_element_mouseLeft_released(MainMenu);
if(_button != undefined || 0){
	show_debug_message(_button.element_name);
	if(_button.element_name == "newgame"){
	room_goto(rm_World);	
	}
}