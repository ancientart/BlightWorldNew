character = {
	body : {
		head : 0,
		body : 0,
		l_arm : 0,
		r_arm : 0,
		chest : 0,
		belly : 0,
		butt : 0,
		l_leg : 0,
		r_leg : 0,
		tail : 0,
		wings : 0,
	},
	gear : {
		head : 0,
		body : 0,
		bracers : 0,
		gloves : 0,
		pants : 0,
		boots : 0,
		tail : 0,
		wings : 0,
	},
	weight : {
		genetic : {
			base : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			cap : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			rate : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			adjust_rate : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			}
		},
		current : {
			base : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			cap : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			rate : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			},
			adjust_rate : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
			}
		
		},
		stomach : {  // hunger < %5 start damage -- hunger < %20 no hp regen 
			cap : 4,		// stomach size
			substanence : 0,// calories
			average_day : 0 // average of overeatten amount
		}
	},
	stats : {
		base_stats : {
			level : 0,
			experiance : 0,
			hp : 100,
			mana : 100,
			energy : 100,
			hunger : 1,
			thurst : 1
		},
		adjust_stats : {
			level : 0,
			experiance : 0,
			hp : 100,
			mana : 100,
			energy : 100,
			hunger : 1,
			thurst : 1
		},
	},
	attributes : {
		base_attributes : {
			attribute_points : 0,
			attribute_spent : 0,
			strength : 0,
			intellect : 0,
			stamina : 0,
			agility : 0,
			wisdom : 0,
			charisma : 0,
			luck : 0,
			move_speed : 0, // both walk and run
			walk_speed : 0,
			run_speed : 0,
			attack_speed : 0,
			cast_speed : 0,
			armor_rating : 0
		
		},
		adjust_attributes : {
			attribute_points : 0,
			attribute_spent : 0,
			strength : 0,
			intellect : 0,
			stamina : 0,
			agility : 0,
			wisdom : 0,
			charisma : 0,
			luck : 0,
			move_speed : 0, // both walk and run
			walk_speed : 0,
			run_speed : 0,
			attack_speed : 0,
			cast_speed : 0,
			armor_rating : 0
		
		}
	}
}
function char_eat(_character, _ate){

}
function f_art_frameRate(_percent){
	image_speed = _percent;
}
function f_art_eScale(_percent){
	image_xscale = _percent;
	image_yscale = _percent;
}
function f_art_charBuild(_head,_hair,_Lear,_Rear,_torso,_Lbreast,_Rbreast,_Larm,_Rarm,_Lglove,_Rglove,_Lleg,_Rleg,_Lboot,_Rboot){

}  

//			80, 120, 160, 200, 240, 280, 320, 360, 400
// head		5		5 - 7		/ 8 - 10
// body		43		30 - 40		/
// breasts	0		0 - 2		/ 3 - 4		/ 5 - 6 ect..
// belly	8		2 - 10		/ 11 - 20	/ 21 - 30
// legs		14		5 - 10		/
// arms		10		4 - 10
// tail		0		0 - 4

// .0625
// .5375
// .1
// .175
// .125
//
//