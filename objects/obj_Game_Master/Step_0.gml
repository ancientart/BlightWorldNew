#region KEYBINDS
	fullScreen = keyboard_check_pressed(key_FullScreen);
#endregion
	if(keyboard_check_released(ord("R"))){
		game_restart();
	}