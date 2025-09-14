	#region VARIABLES
		display_base_width = 0;
		display_base_height = 1200;//1200
		//blackmask = true;
		adjustzoom = .75;
		adjustwindow = 1;
		bool_fullScreen = false;
	#endregion
	#region RATIO SETUP
		display_aspectRatio = display_get_width()/display_get_height();

		display_base_width = round(display_base_height*display_aspectRatio);

		display_adj_height = round(display_base_height/adjustzoom);
		display_adj_width = round(display_base_width/adjustzoom);

		display_window_height = round(display_base_height/adjustwindow);
		display_window_width = round(display_base_width/adjustwindow);
	#endregion
	#region IF ODD, MAKE EVEN
		if(display_base_width & 1){
			display_base_width++;
		}
		if(display_adj_width & 1){
			display_adj_width++;
		}
		if(display_window_width & 1){
			display_window_width++;
		}
		if(display_adj_height & 1){
			display_adj_height++;
		}
		if(display_window_height & 1){
			display_window_height++;
		}
	#endregion
	#region ROOM CAMERA SETUP
		for(var _i = 1; _i <= room_last; _i++){
			if(room_exists(_i)){
				room_set_viewport(_i,0,true,0,0,display_base_width,display_base_height);
				room_set_view_enabled(_i,true);
				view_camera[0] = camera_create_view(0, 0,display_adj_width,display_adj_height);
				room_set_camera(_i,0,view_camera[0])
			}
		}
	#endregion
	#region CAMERA START
		window_set_size(display_window_width,display_window_height);
		window_center();
	#endregion
	guiH = display_get_gui_height();
	guiW = display_get_gui_width();
	guiH_default = display_get_gui_height();
	guiW_default = display_get_gui_width();
	display_set_gui_size(guiW*2, guiH*2);