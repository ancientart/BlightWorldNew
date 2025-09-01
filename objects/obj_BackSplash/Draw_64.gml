// Feather ignore GM1041
draw_sprite_ext(spr_MainMenu_backsplash,0,(_halign*2)/3,(_valign*2)/3,2.5,2.5,0,c_white,.4);

ui_pos_size_update(menu,menu);
ui_draw_elements(menu);
ui_pos_size_update(menu2,menu2);
ui_draw_elements(menu2);


ui_pos_size_update(menu3,menu3);
ui_draw_elements(menu3);
ui_pos_size_update(menu4,menu3);
ui_draw_elements(menu4);
ui_pos_size_update(menu5,menu3);
ui_draw_elements(menu5);
				
draw_text(menu.pos.x1+8,menu.pos.y1+8,"Shell")
f_draw_default();
	children_length = array_length(menu.children);
	for (var i = 0; i < children_length; i++) {
		var _child = menu.children[i];
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_child.pos.x1,
						_child.pos.y1,
						_child.pos.x2,
						_child.pos.y2,
						true);
		draw_circle(_child.pos.x1,_child.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_child.pos.x2,_child.pos.y2,16,true);
	}
	children_length = array_length(menu2.children);
	for (var i = 0; i < children_length; i++) {
		var _child = menu2.children[i];
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_child.pos.x1,
						_child.pos.y1,
						_child.pos.x2,
						_child.pos.y2,
						true);
		draw_circle(_child.pos.x1,_child.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_child.pos.x2,_child.pos.y2,16,true);
	}
	f_draw_default();
	draw_circle(menu.pos.x1,menu.pos.y1,16,true);
	draw_circle(menu.pos.x2,menu.pos.y2,16,true);
	
	
	
	
	
	children_length = array_length(menu3.children);
	for (var i = 0; i < children_length; i++) {
		var _child = menu3.children[i];
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_child.pos.x1,
						_child.pos.y1,
						_child.pos.x2,
						_child.pos.y2,
						true);
		draw_circle(_child.pos.x1,_child.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_child.pos.x2,_child.pos.y2,16,true);
	}
	f_draw_default();
	draw_circle(menu3.pos.x1,menu3.pos.y1,16,true);
	draw_circle(menu3.pos.x2,menu3.pos.y2,16,true);
	
	
	children_length = array_length(menu4.children);
	for (var i = 0; i < children_length; i++) {
		var _child = menu4.children[i];
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_child.pos.x1,
						_child.pos.y1,
						_child.pos.x2,
						_child.pos.y2,
						true);
		draw_circle(_child.pos.x1,_child.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_child.pos.x2,_child.pos.y2,16,true);
	}
	f_draw_default();
	draw_circle(menu4.pos.x1,menu4.pos.y1,16,true);
	draw_circle(menu4.pos.x2,menu4.pos.y2,16,true);
	
	
	children_length = array_length(menu5.children);
	for (var i = 0; i < children_length; i++) {
		var _child = menu5.children[i];
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_child.pos.x1,
						_child.pos.y1,
						_child.pos.x2,
						_child.pos.y2,
						true);
		draw_circle(_child.pos.x1,_child.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_child.pos.x2,_child.pos.y2,16,true);
	}
	f_draw_default();
	draw_circle(menu5.pos.x1,menu5.pos.y1,16,true);
	draw_circle(menu5.pos.x2,menu5.pos.y2,16,true);
	
	draw_text(menu3.pos.x1+8,menu3.pos.y1+8," outer Shell");
	draw_text(menu4.pos.x1+100,menu4.pos.y1+8," inner Shell 1");
	draw_text(menu5.pos.x1+200,menu5.pos.y1+8," inner Shell 2");
	
	
