#region KEYBINDS
	key_FullScreen = ord("U");
	fullScreen = 0;
	player = 0;
	camera = 0;
	splashscreen = 0;
	mainMenu = 0;
#endregion
#region SPAWN MECHANICS
		player = instance_create_depth(100, 100, -100, obj_Player);
		camera = instance_create_depth(100, 100, -100, obj_Player_Camera);
		splashscreen = instance_create_depth(100, 100, -100, obj_Game_SplashScreen);	
#endregion