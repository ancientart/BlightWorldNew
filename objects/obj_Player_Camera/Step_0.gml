	#region TOGGLE FULLSCREEN
		if(obj_Game_Master.fullScreen){
			if(bool_fullScreen){
				window_set_fullscreen(false);
				bool_fullScreen = false;
			}else{
				window_set_fullscreen(true);
				bool_fullScreen = true;				
			}
		}
	#endregion
	#region CAMERA STEP
		var _hh = camera_get_view_height(view_camera[0]);
		var _ww = camera_get_view_width(view_camera[0]);

		var _xx = camera_get_view_x(view_camera[0]);
		var _yy = camera_get_view_y(view_camera[0]);

		var _posx = obj_Player.x - _ww/2;
		var _posy = obj_Player.y - _hh/2;
		var _nx = clamp(_posx,0,room_width + _ww/2);
		var _ny = clamp(_posy,0,room_height + _hh/2);
		camera_set_view_pos(view_camera[0],_nx,_ny);
	#endregion	
