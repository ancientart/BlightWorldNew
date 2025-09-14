camera = obj_Game_Master.camera;
_valign = camera.display_base_height;
_halign = camera.display_base_width;
#region menu
	MainMenu = new ui_element_shell_create(1400, 400,undefined , UI_LAYOUT.IS_LIST, 32); 

	NewGame = new ui_element_sprite_add(MainMenu, MainMenu, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
	NewGame.element_name = "newgame";
	array_push(MainMenu.children,NewGame);
	
	LoadGame = new ui_element_sprite_add(MainMenu, MainMenu, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
	LoadGame.element_name = "Load Game - menu";
	array_push(MainMenu.children,LoadGame);	
	
	Settings = new ui_element_sprite_add(MainMenu, MainMenu, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
	Settings.element_name = "Settings - menu";
	array_push(MainMenu.children,Settings);
	
	ExitGame = new ui_element_sprite_add(MainMenu, MainMenu, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
	ExitGame.element_name = "Exit - menu";
	array_push(MainMenu.children,ExitGame);	
	
	MainMenu_frame = new ui_element_frame_add(MainMenu, MainMenu, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
	array_push(MainMenu.children,MainMenu_frame);
#endregion

#region menu
	MainMenu2 = new ui_element_shell_create(1700, 400,undefined , UI_LAYOUT.IS_LIST, 32); 

	NewGame2 = new ui_element_sprite_add(MainMenu2, MainMenu2, UI_LAYOUT.IS_LIST, spr_newgame, 0,16);
	NewGame2.element_name = "newgame";
	array_push(MainMenu2.children,NewGame2);
	
	LoadGame2 = new ui_element_sprite_add(MainMenu2, MainMenu2, UI_LAYOUT.IS_LIST, spr_newgame, 1,16);
	LoadGame2.element_name = "Load Game - menu";
	array_push(MainMenu2.children,LoadGame2);	
	
	Settings2 = new ui_element_sprite_add(MainMenu2, MainMenu2, UI_LAYOUT.IS_LIST, spr_newgame, 2,16);
	Settings2.element_name = "Settings - menu";
	array_push(MainMenu2.children,Settings2);
	
	ExitGame2 = new ui_element_sprite_add(MainMenu2, MainMenu2, UI_LAYOUT.IS_LIST, spr_newgame, 3,16);
	ExitGame2.element_name = "Exit - menu";
	array_push(MainMenu2.children,ExitGame2);	
	
	MainMenu_frame2 = new ui_element_frame_add(MainMenu2, MainMenu2, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
	array_push(MainMenu2.children,MainMenu_frame2);
#endregion

	MainMenu3 = new ui_element_shell_create(1700, 400,undefined , UI_LAYOUT.IS_LIST, 4); 
	MainMenu_frame3 = new ui_element_frame_add(MainMenu3, MainMenu3, UI_LAYOUT.IS_LIST, spr_nineSlice_01,64,0)
	array_push(MainMenu3.children,MainMenu_frame3);
	
	ui_element_insertshell(MainMenu3, MainMenu);
	ui_element_insertshell(MainMenu3, MainMenu2);	