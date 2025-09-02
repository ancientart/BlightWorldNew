camera = obj_Game_Master.camera;
_valign = camera.display_base_height;
_halign = camera.display_base_width;

menu = new ui_element_shell_add(1400, 400,undefined , UI_LAYOUT.IS_LIST, 32); 

newgame = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu.children,newgame);
newgame2 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu.children,newgame2);
newgame3 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu.children,newgame3);
newgame4 = new ui_element_sprite_add(menu, menu, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu.children,newgame4);
menu_frame = new ui_element_frame_add(menu, menu, UI_LAYOUT.IS_LIST, spr_nineSlice_01,32,0)
array_push(menu.children,menu_frame);

menu2 = new ui_element_shell_add(1000, 64,undefined , UI_LAYOUT.IS_STRIP, 32); 

newgam = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu2.children,newgam);
newgam2 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu2.children,newgam2);
newgam3 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu2.children,newgam3);
newgam4 = new ui_element_sprite_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu2.children,newgam4);
menu_fram = new ui_element_frame_add(menu2, menu2, UI_LAYOUT.IS_LIST, spr_nineSlice_01,32,0)
array_push(menu2.children,menu_fram);





// main container
menu3 = new ui_element_shell_add(464, 400,undefined , UI_LAYOUT.IS_STRIP, 32); 
menu3.mainshell = true;

menu3_fram10 = new ui_element_frame_add(menu3, menu3, UI_LAYOUT.IS_LIST, spr_nineSlice_01,32,0)
array_push(menu3.children,menu3_fram10);

//first inner container
menu4 = new ui_element_shell_add(0, 0,menu3 , UI_LAYOUT.IS_LIST, 32);
array_push(menu3.children,menu4);



newgam10 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu4.children,newgam10);
newgam12 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu4.children,newgam12);
newgam13 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu4.children,newgam13);
newgam14 = new ui_element_sprite_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu4.children,newgam14);
menu_fram10 = new ui_element_frame_add(menu4, menu3, UI_LAYOUT.IS_LIST, spr_nineSlice_01,32,0)
array_push(menu4.children,menu_fram10);

// second inner container
menu5 = new ui_element_shell_add(0, 0,menu3 , UI_LAYOUT.IS_LIST, 32); 
array_push(menu3.children,menu5);

newgam20 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
array_push(menu5.children,newgam20);
newgam22 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
array_push(menu5.children,newgam22);
newgam23 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
array_push(menu5.children,newgam23);
newgam24 = new ui_element_sprite_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
array_push(menu5.children,newgam24);
menu_fram20 = new ui_element_frame_add(menu5, menu3, UI_LAYOUT.IS_LIST, spr_nineSlice_01,32,0)
array_push(menu5.children,menu_fram20);


//ui_element_move_and_update(64, 64, menu);
//ui_element_outerShell_insert(menu3, menu5);
//ui_element_outerShell_insert(menu3, menu4);
