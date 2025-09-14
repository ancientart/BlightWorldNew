enum UI_LAYOUT{
	IS_EMPTY,
	IS_LIST,
	IS_STRIP,
	IS_GRID
}
enum UI_TYPE{
	OUTTER,
    SHELL,
    FRAME,
    TEXT,
    SPRITE,
    GRID
}
global.ds_grid_list = [];


// =======================================    CREATION CODE    ==========================================
function ui_element_create(_x,_y,_parent,_layout,_padding) constructor{
	ui_type = UI_TYPE.SHELL;
	outerShell = false;
	scale = 1;
	padding = _padding;
	hide = false;
	isMouseOver = false;
	layout = _layout;
	
	next_pos = {		// NEXT SPACE FOR A NEW ELEMENT
		x1 : _x + padding,
		y1 : _y + padding
	}
	pos = {				// OUTTER MOST FRAME or OUTER FRAME FROM SPRITE
		x1 : _x,
		y1 : _y,
		x2 : 0,
		y2 : 0
	}
	frame_size = {		// WIDTH AND HEIGHT OF THE FULL FRAME
		w : 0,
		h : 0
	}

}
function ui_element_shell_create(_x, _y,_parent, _layout,_padding) 
		: ui_element_create(_x, _y,_parent,_layout,_padding) constructor{
		ui_type = UI_TYPE.SHELL;
		children = [];
		force = {
			w : 0,
			h : 0
		}
		subShells = [];	
}

function ui_element_grid_add(_parent, _shell,_layout, _width, _height,_gridsize, _padding) 
		: ui_element_create(0,0,_parent,_layout,_padding) constructor{
		grid_size = _gridsize;
		ui_type = UI_TYPE.GRID;
		element_grid = {
			ds_grid : ds_grid_create(_width, _height)
		}
		array_push(global.ds_grid_list,element_grid);

}
function ui_element_sprite_add(_parent, _shell, _layout, _sprite, _index,_padding) 
		: ui_element_create(0,0,_parent,_layout,_padding) constructor{
		element_name = "";	
		ui_type = UI_TYPE.SPRITE;
		padding = _padding
		sprite_scale = 1;
		sprite_layer[0] = _sprite;
		sprite_index_layer[0] = _index;

		sprite_size = {
			w : (sprite_get_width(_sprite)*sprite_scale),
			h : (sprite_get_height(_sprite)*sprite_scale)
		}
		frame_size.w = sprite_size.w + _padding*2;
		frame_size.h = sprite_size.h + _padding*2;



		
		if(_parent != undefined){
			switch (_parent.layout){
				case UI_LAYOUT.IS_EMPTY:
			        pos.x1 = _parent.pos.x1 + _parent.padding + _padding;
					pos.y1 = _parent.pos.y1 + _parent.padding + _padding;
					pos.x2 = pos.x1 + sprite_size.w;
					pos.y2 = pos.y1 + sprite_size.h;
			    break;
			    case UI_LAYOUT.IS_LIST:
			        pos.x1 = _parent.pos.x1 + _parent.padding + _padding;
					pos.y1 = _parent.next_pos.y1 + _padding;
					pos.x2 = pos.x1 + sprite_size.w;
					pos.y2 = pos.y1 + sprite_size.h;
					_parent.next_pos.x1 = _parent.pos.x1 + frame_size.w + _parent.padding;
					_parent.next_pos.y1 += frame_size.h;
					_parent.pos.x2 = _parent.next_pos.x1 + _parent.padding;
					_parent.pos.y2 = _parent.next_pos.y1 + _parent.padding;

			    break;
			    case UI_LAYOUT.IS_STRIP:
			        pos.x1 = _parent.next_pos.x1 + _padding;
					pos.y1 = _parent.pos.y1 + _parent.padding + _padding;
					pos.x2 = pos.x1 + sprite_size.w;
					pos.y2 = pos.y1 + sprite_size.h;
					_parent.next_pos.y1 = _parent.pos.y1 + frame_size.h + _parent.padding;
					_parent.next_pos.x1 += frame_size.w;
					_parent.pos.x2 = _parent.next_pos.x1 + _parent.padding;
					_parent.pos.y2 = _parent.next_pos.y1 + _parent.padding;

			    break;
			    case UI_LAYOUT.IS_GRID:
			        pos.x1 = _parent.pos.x1 + _parent.padding + _padding;
					pos.y1 = _parent.pos.y1 + _parent.padding + _padding;
					pos.x2 = pos.x1 + sprite_size.w;
					pos.y2 = pos.y1 + sprite_size.h;
			    break;
			    default:
			        pos.x1 = _parent.pos.x1 + _parent.padding + _padding;
					pos.y1 = _parent.pos.y1 + _parent.padding + _padding;
					pos.x2 = pos.x1 + sprite_size.w;
					pos.y2 = pos.y1 + sprite_size.h;
			}
		}
}
function ui_element_frame_add(_parent, _shell, _layout, _sprite,_tilesize,_padding) 
		: ui_element_create(0,0,_parent,_layout,_padding) constructor{
		ui_type = UI_TYPE.FRAME;
		frame_sprite = _sprite;
		slice_size = _tilesize;
		enum NINESLICE{ 
			TL, TM, TR,
			ML, MM, MR,
			BL, BM, BR
		}
		pos.x1 = _parent.pos.x1;
		pos.y1 = _parent.pos.y1;
		pos.x2 = pos.x1 + _parent.frame_size.w;
		pos.y2 = pos.y1 + _parent.frame_size.h;

}
function ui_element_text_add(_parent, _shell, _layout, _string, _font, _size, _color,_padding) 
		: ui_element_create(0,0,_parent,_layout,_padding) constructor{
		ui_type = UI_TYPE.TEXT;	
		element_text = {
			text : [],
			color : [],
			align : [],
			size : [],
			font : []
		}
}

function ui_element_insertshell(_outerShell, _insertShell){
		array_push(_outerShell.subShells,_insertShell);

		var _childLength = array_length(_outerShell.subShells);
		for (var i = 0; i < _childLength; i++) {
			var _child = _outerShell.subShells[i];
			var _last = array_last(_outerShell.subShells);
			var _first = array_first(_outerShell.subShells)

			if(i > 0){
				ui_element_move_and_update((_outerShell.pos.x1 + _child.frame_size.w + _outerShell.padding), (_insertShell.pos.y1 + _outerShell.padding), _child);
				_outerShell.pos.x2 = _last.pos.x2 + _outerShell.padding;
				_outerShell.pos.y2 = _last.pos.y2 + _outerShell.padding;
				_outerShell.frame_size.w = _outerShell.pos.x2 - _outerShell.pos.x1;
				_outerShell.frame_size.h = _outerShell.pos.y2 - _outerShell.pos.y1;
				_child.frame_size.w = _child.pos.x2 - _child.pos.x1;
				_child.frame_size.h = _child.pos.y2 - _child.pos.y1;
			}else{
				ui_element_move_and_update((_outerShell.pos.x1 + _outerShell.padding), (_outerShell.pos.y1 + _outerShell.padding), _child);
				_outerShell.pos.x2 = _last.pos.x2 + _outerShell.padding;
				_outerShell.pos.y2 = _last.pos.y2 + _outerShell.padding;
				_outerShell.frame_size.w = _outerShell.pos.x2 - _outerShell.pos.x1;
				_outerShell.frame_size.h = _outerShell.pos.y2 - _outerShell.pos.y1;
				_child.frame_size.w = _child.pos.x2 - _child.pos.x1;
				_child.frame_size.h = _child.pos.y2 - _child.pos.y1;
			}
		}
}
// =======================================    DRAW/STEP CODE    ==========================================
function ui_draw_elements(_shell){
	children_length = array_length(_shell.children)-1;
	for (var i = children_length; i >= 0; i--) {
		var _child = _shell.children[i];
		switch(_child.ui_type){
			case UI_TYPE.GRID:
		
			break;
			case UI_TYPE.SPRITE:
				layers = array_length(_child.sprite_layer);
				for (var v = 0; v < layers; v++) {
					draw_sprite_ext(_child.sprite_layer[v],_child.sprite_index_layer[v],_child.pos.x1,_child.pos.y1,_child.sprite_scale,_child.sprite_scale,0,c_white,1);
				}
			break;
			case UI_TYPE.FRAME: //												X               SLICE SIZE				  Y				SLICE SIZE				     W                 SLICE SIZE					H					SLICE SIZE
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.TL,_shell.pos.x1,							_shell.pos.y1,							_child.slice_size,								_child.slice_size,								c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.TM,_shell.pos.x1 + _child.slice_size,		_shell.pos.y1,							_shell.frame_size.w - (_child.slice_size*2),	_child.slice_size,								c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.TR,_shell.pos.x2 - _child.slice_size,		_shell.pos.y1,							_child.slice_size,								_child.slice_size,								c_white,1);
																														
																													
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.ML,_shell.pos.x1,							_shell.pos.y1 + _child.slice_size,		_child.slice_size,								_shell.frame_size.h - (_child.slice_size*2),	c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.MM,_shell.pos.x1 + _child.slice_size,		_shell.pos.y1 + _child.slice_size,		_shell.frame_size.w - (_child.slice_size*2),	_shell.frame_size.h - (_child.slice_size*2),	c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.MR,_shell.pos.x2 - _child.slice_size,		_shell.pos.y1 + _child.slice_size,		_child.slice_size,								_shell.frame_size.h - (_child.slice_size*2),	c_white,1);
																													
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.BL,_shell.pos.x1,							_shell.pos.y2 - _child.slice_size,		_child.slice_size,								_child.slice_size,								c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.BM,_shell.pos.x1 + _child.slice_size,		_shell.pos.y2 - _child.slice_size,		_shell.frame_size.w - (_child.slice_size*2),	_child.slice_size,								c_white,1);
				draw_sprite_stretched_ext(_child.frame_sprite,NINESLICE.BR,_shell.pos.x2 - _child.slice_size,		_shell.pos.y2 - _child.slice_size,		_child.slice_size,								_child.slice_size,								c_white,1);
			break;
			case UI_TYPE.TEXT:
		
			break;
			case UI_TYPE.SHELL:
				
			break;
			default:
		}
		if(f_mouseInRegion_gui(_child.pos.x1, _child.pos.y1, _child.pos.x2, _child.pos.y2, false)){
			_child.isMouseOver = true;
		}else{
			_child.isMouseOver = false;
		}
	}
}
function ui_element_change_sprite(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && _child.ui_type == UI_TYPE.SPRITE){
				_child.sprite_layer[0] = spr_newgame_mo;
			}else{
				_child.sprite_layer[0] = spr_newgame;
			}
			if(_child.isMouseOver == true && mouse_check_button(mb_left) && _child.ui_type == UI_TYPE.SPRITE){
				_child.sprite_layer[0] = spr_newgame_down;
			}			
		}
}
function ui_element_move_and_update(_x, _y, _parent){
	newXY = m_move_difference(_x, _y, _parent.pos.x1, _parent.pos.y1);
	_parent.pos.x1 += newXY.x1;
	_parent.pos.y1 += newXY.y1;
	_parent.pos.x2 += newXY.x2;
	_parent.pos.y2 += newXY.y2;
	var _childLength = array_length(_parent.children);
	for (var i = 0; i < _childLength; i++) {
		_parent.children[i].pos.x1 += newXY.x1;
		_parent.children[i].pos.y1 += newXY.y1;
		_parent.children[i].pos.x2 += newXY.x2;
		_parent.children[i].pos.y2 += newXY.y2;
	}
	_parent.frame_size.w	= _parent.pos.x2 - _parent.pos.x1;
	_parent.frame_size.h	= _parent.pos.y2 - _parent.pos.y1;

}
	
function ui_element_mouseLeft_pressed(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button_pressed(mb_left) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}
			
		}
}
function ui_element_mouseLeft_released(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button_released(mb_left) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}
		}
}	
function ui_element_mouseLeft(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button(mb_left) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}
		}
}		

function ui_element_mouseRight_pressed(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button_pressed(mb_right) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}

		}
}
function ui_element_mouseRight_released(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button_released(mb_right) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}
		}
}	
function ui_element_mouseRight(_parent){
		var _childLength = array_length(_parent.children);
		for (var i = 0; i < _childLength; i++) {
			var _child = _parent.children[i];
			if(_child.isMouseOver == true && mouse_check_button(mb_right) && _child.ui_type == UI_TYPE.SPRITE){
				return _child;
			}
		}
}			
	
function ui_draw_text_box(_element){
f_draw_default();

	children_length = array_length(_element.children);
	for (var i = 0; i < children_length; i++) {
		var _child = _element.children[i];
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
f_draw_default();
		draw_text(_child.pos.x1, _child.pos.y1, string(_child.pos.x1) + "  " + string(_child.pos.y1));
		draw_text(_child.pos.x2, _child.pos.y2, string(_child.pos.x2) + "  " + string(_child.pos.y2));
	}	
		if(_child.isMouseOver == true){
			draw_set_color(c_red);
		}else{
			draw_set_color(c_blue);
		}
		draw_rectangle(	_element.pos.x1,
						_element.pos.y1,
						_element.pos.x2,
						_element.pos.y2,
						true);
		draw_circle(_element.pos.x1,_element.pos.y1,16,true);
		draw_set_color(c_green);
		draw_circle(_element.pos.x2,_element.pos.y2,16,true);
		draw_text(_element.pos.x1, _element.pos.y1 - 64, string(_element.pos.x2) + "  " + string(_element.pos.y2));
}