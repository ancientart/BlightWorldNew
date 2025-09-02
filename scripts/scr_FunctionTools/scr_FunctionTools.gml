//======================================================================================================
//										   GLOBALS
//======================================================================================================
global.tileSize = 32;
//======================================================================================================
//											MATH
//======================================================================================================
function m_sine_wave(time, period, amplitude, midpoint) {
	return sin(time * 2 * pi / period) * amplitude + midpoint;
}
function m_sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return f_sine_wave(time, period, amplitude, midpoint);
}
function m_MultTile(_num){
	var _mnum = _num * global.tileSize;
	return _mnum;
}
function m_DivTile(_num){
	var _mnum = _num / global.tileSize;
	return _mnum;
}
function m_random(_amount){
	var _rand_times = (irandom(20)+1);
	for (var _i = _rand_times; _i >= 0; _i--) {
	    var _num = irandom(_amount);
		if(_i <= 0){
			_num = irandom(_amount);
			return _num;
		}
	}
}	
function m_move_difference(_newX, _newY, _oldX, _oldY){
	pos = {
		x1 : 0,
		y1 : 0,
		x2 : 0,
		y2 : 0
	}
	if(_newX > _oldX){
		pos.x1 = (_newX - _oldX);
		pos.x2 = (_newX - _oldX);
	}else{
		pos.x1 = (_newX - _oldX);
		pos.x2 = (_newX - _oldX);
	}
	if(_newY > _oldY){
		pos.y1 = (_newY - _oldY);
		pos.y2 = (_newY - _oldY);
	}else{
		pos.y1 = (_newY - _oldY);
		pos.y2 = (_newY - _oldY);
	}
	return pos;
}
#region SHAKE
	function f_shaker_create(){
	shake = false;
	shake_time = 0;
	shake_magnitude = 0;
	shake_fade = 0.25;

	start_x = x;
	start_y = y;
	}
	function f_shaker_edit(_shake = false, _time = 0, _mag = 0, _fade = .25){
	shake = _shake;
	shake_time = _time;
	shake_magnitude = _mag;
	shake_fade = _fade;
	}
	function f_shaker_run(){
	if (shake) 
	{ 
	   shake_time -= 1; 
	   var _xval = choose(-shake_magnitude, shake_magnitude); 
	   var _yval = choose(-shake_magnitude, shake_magnitude); 
	   x = start_x + _xval;
	   y = start_y + _yval; 

	   if (shake_time <= 0) 
	   { 
	      shake_magnitude -= shake_fade; 

	      if (shake_magnitude <= 0) 
	      { 
	         x = start_x;
			 y = start_y; 
	         shake = false; 
	      } 
	   } 
	}
	}	
#endregion
//======================================================================================================
//										  FUNCTIONS
//======================================================================================================
function f_draw_default(){
	draw_set_color(c_white);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
}
function f_mouseInRegion_gui(_xmin,_ymin,_xmax,_ymax,_spacing){
	if(_spacing){
		if(device_mouse_x_to_gui(0) > _xmin && 
		device_mouse_x_to_gui(0) < _xmax && 
		device_mouse_y_to_gui(0) > _ymin && 
		device_mouse_y_to_gui(0) < _ymax ){
			return true;
		}else{
			return false;
		}
	}else{
		if(device_mouse_x_to_gui(0) >= _xmin && 
		device_mouse_x_to_gui(0) <= _xmax && 
		device_mouse_y_to_gui(0) >=  _ymin && 
		device_mouse_y_to_gui(0) <= _ymax ){
			return true;
		}else{
			return false;
		}
	}
}
function f_mouseInRegion(_xmin,_ymin,_xmax,_ymax,_spacing){
	if(_spacing){
		if(mouse_x > _xmin && 
		mouse_x < _xmax && 
		mouse_y >  _ymin && 
		mouse_y < _ymax ){
			return true;
		}else{
			return false;
		}
	}else{
		if(mouse_x >= _xmin && 
		mouse_x <= _xmax && 
		mouse_y >=  _ymin && 
		mouse_y <= _ymax ){
			return true;
		}else{
			return false;
		}
	}
}
function f_objInRegionIV(_obj,_x1,_y1,_x2,_y2,_x3,_y3,_x4,_y4){
	if(point_in_triangle(_obj.x,_obj.y,_x1,_y1,_x2,_y2,_x3,_y3) &&
	point_in_triangle(_obj.x,_obj.y,_x2,_y2,_x3,_y3,_x4,_y4)){
		return true;
	}else{
		return false;
	}
}	
function f_text(_string, _x, _y, _font = -1, _color = c_white, _halign = fa_left, _valign = fa_top){
	draw_set_font(_font);
	draw_set_color(_color);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_text(_x, _y, string(_string));
	f_draw_default();
}
function f_findObject(_object){
	if(object_exists(_object)){
		return _object;
	}else{
		return false;
	}
}
//======================================================================================================
//										  CONSTRUCTORS
//======================================================================================================