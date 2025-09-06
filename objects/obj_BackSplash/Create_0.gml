camera = obj_Game_Master.camera;
_valign = camera.display_base_height;
_halign = camera.display_base_width;
#region menu
	MainMenu = new ui_element_shell_add(1400, 400,undefined , UI_LAYOUT.IS_LIST, 32); 

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
