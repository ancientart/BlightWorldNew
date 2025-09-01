draw_set_color(c_black);
draw_rectangle(0, 0, _halign, _valign, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(drawlogo == true){
draw_sprite_ext(spr_GameMakerLogo,0,(_halign*2)/3,(_valign*2)/3,1,1,0,c_white,logoalpha);
	if(logoalpha <= 1){
		logoalpha = logoalpha + 0.01;
		}
	}
	if(drawlogo == false){
		draw_sprite_ext(spr_GameMakerLogo,0,(_halign*2)/3,(_valign*2)/3,1,1,0,c_white,logoalpha);
		if(logoalpha > -2.4){
			logoalpha = logoalpha - 0.04;
		}
		if(logoalpha <= -2){
			if(drawlogoAGE == true){
				draw_sprite_ext(spr_AGE_Logo,0,(_halign*2)/3,(_valign*2)/3,1,1,0,c_white,logoalphaAGE);
				if(logoalphaAGE <= 1){
					logoalphaAGE = logoalphaAGE + 0.01;
				}
			}
			if(drawlogoAGE == false){
				draw_sprite_ext(spr_AGE_Logo,0,(_halign*2)/3,(_valign*2)/3,1,1,0,c_white,logoalphaAGE);
				if(logoalphaAGE > -2.4){
					logoalphaAGE = logoalphaAGE - 0.01;
				}
				if(logoalphaAGE <= -2){
					room_goto(rm_MainMenu);
				}
			}
		}
	}
	f_draw_default();