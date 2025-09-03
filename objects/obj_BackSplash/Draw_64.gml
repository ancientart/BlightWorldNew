// Feather ignore GM1041
draw_sprite_ext(spr_MainMenu_backsplash,0,(_halign*2)/3,(_valign*2)/3,2.5,2.5,0,c_white,.4);



ui_element_move_and_update(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), menu);
ui_element_move_and_update(1200, 64, menu2);
ui_element_move_and_update(menu2.pos.x1, menu2.pos.y2+64, menu1);
ui_element_move_and_update(0, 0, menu3);

ui_element_move_and_update(64, 64, menu3);

ui_draw_elements(menu);
ui_draw_elements(menu1);
ui_draw_elements(menu2);

ui_draw_elements(menu3);	
ui_draw_elements(menu4);
ui_draw_elements(menu5);
		

ui_draw_text_box(menu);
ui_draw_text_box(menu1);
ui_draw_text_box(menu2);


draw_text(menu.pos.x1+8,menu.pos.y1+8,"Shell")
draw_text(menu3.pos.x1+8,menu3.pos.y1+8," outer Shell");
draw_text(menu4.pos.x1+100,menu4.pos.y1+8," inner Shell 1");
draw_text(menu5.pos.x1+200,menu5.pos.y1+8," inner Shell 2");
	
	
