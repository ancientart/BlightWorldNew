camera = obj_Game_Master.camera;
_valign = camera.display_base_height;
_halign = camera.display_base_width;
#region menu
	menu = new ui_element_shell_add(1400, 400,undefined , UI_LAYOUT.IS_LIST, 32); 

	newgame = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
	array_push(menu.children,newgame);
	newgame.element_name = "newgame";
	
	newgame2 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
	array_push(menu.children,newgame2);
	newgame2.element_name = "Load Game";
	
	newgame3 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
	array_push(menu.children,newgame3);
	newgame3.element_name = "Settings";
	
	newgame4 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
	array_push(menu.children,newgame4);
	newgame4.element_name = "Exit";
	
	menu_frame = new ui_element_frame_add(menu, menu, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
	array_push(menu.children,menu_frame);
#endregion

#region menu1
menu1 = new ui_element_shell_add(1400, 464,undefined , UI_LAYOUT.IS_LIST, 32); 

anewgame = new ui_element_sprite_add(menu1, menu1, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu1.children,anewgame);
anewgame2 = new ui_element_sprite_add(menu1, menu1, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu1.children,anewgame2);
anewgame3 = new ui_element_sprite_add(menu1, menu1, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu1.children,anewgame3);
anewgame4 = new ui_element_sprite_add(menu1, menu1, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu1.children,anewgame4);
amenu_frame = new ui_element_frame_add(menu1, menu1, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
array_push(menu1.children,amenu_frame);
#endregion

#region menu2
menu2 = new ui_element_shell_add(1000, 64,undefined , UI_LAYOUT.IS_STRIP, 32); 

newgam = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu2.children,newgam);
newgam2 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu2.children,newgam2);
newgam3 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu2.children,newgam3);
newgam4 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu2.children,newgam4);
menu_fram = new ui_element_frame_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
array_push(menu2.children,menu_fram);
#endregion





// main container
menu3 = new ui_element_shell_add(464, 400,undefined , UI_LAYOUT.IS_STRIP, 32); 
menu3.mainshell = true;

menu3_fram10 = new ui_element_frame_add(menu3, menu3, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
array_push(menu3.children,menu3_fram10);

//first inner container
menu4 = new ui_element_shell_add(0, 0,menu3 , UI_LAYOUT.IS_LIST, 0);




newgam10 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 0,0);
array_push(menu4.children,newgam10);
newgam12 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 1,0);
array_push(menu4.children,newgam12);
newgam13 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 2,0);
array_push(menu4.children,newgam13);
newgam14 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 3,0);
array_push(menu4.children,newgam14);
array_push(menu3.subShells,menu4);

// second inner container
menu5 = new ui_element_shell_add(menu4.pos.x2 - (menu4.padding*2), 0,menu3 , UI_LAYOUT.IS_LIST, 0); 


newgam20 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 0,0);
array_push(menu5.children,newgam20);
newgam22 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 1,0);
array_push(menu5.children,newgam22);
newgam23 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 2,0);
array_push(menu5.children,newgam23);
newgam24 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 3,0);
array_push(menu5.children,newgam24);
array_push(menu3.subShells,menu5);


//menu3.pos.x2 = menu5.pos.x2;
//menu3.pos.y2 = menu5.pos.y2;
//menu3.frame_size.w	= menu5.pos.x2 - menu5.pos.x1;
//menu3.frame_size.h	= menu5.pos.y2 - menu5.pos.y1;

//ui_element_move_and_update(64, 64, menu);
//ui_element_outerShell_insert(menu3, menu5);
//ui_element_outerShell_insert(menu3, menu4);
