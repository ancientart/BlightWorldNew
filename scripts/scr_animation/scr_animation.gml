character = {
	info : {
		name : "",
		race : "",
		skin_color : 0,
		height : 0
	},
	body_sprites : {
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
	gear_sprites : {
		head : 0,
		body : 0,
		bracers : 0,
		gloves : 0,
		pants : 0,
		boots : 0
	},
	body_weight : {
		genetic : {
			fat : {
				burn_rate : 0,
				low : {
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
				mid : {
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
				}
			},
			muscle : {
				burn_rate : 0,
				low : {
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
				mid : {
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
				}
			}
		},
		current : {
			fat : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
				
				total : 0
			},
			muscle : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
				
				total : 0
			},
			final_weight : {
				head : 0,
				body : 0,
				arms : 0,
				chest : 0,
				belly : 0,
				butt : 0,
				legs : 0,
				tail : 0,
				wings : 0,
				
				total : 0
			}
		},
		adjusted : {
			fat : {
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
			muscle : {
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
			fat_rate : {
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
			muscle_rate : {
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
		stomach : {  // hunger < %5 start damage -- hunger < %20 no hp regen -- hunger > %90 - movement speed and attack speed
			cap : 4,		// stomach size
			substanence : 0,// calories
			weight : 0,
			average_day : 0 // average of overeatten amount
		},
		pregnancy : {
			// chance of baby = character fertility
			// child 1 = %100
			// child 2 = %20
			// child 3 = %0.20
			// child 4 = %0.00000001
			// child 5 = %0.000000000000000001
			// child 6 = %0.0000000000000000000000000000000001
			min_weight : 5,
			max_weight : 10,
			chance_gender : .5,
			chance_race : 1,
			babies : 0,
			child_weights : [],
			child_currentWeights : [],
			child_structs : []
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

item = {
	name : "",
	rarity : 0,
	food : {
		substanence : 0,
		weight : 0
	}
	
}
function char_build_updater(_character){
	var _quickaccess = _character.bodywight;
#region MERGE CURRENT / ADJUSTED / EXTRAS WITH FINAL WEIGHT
	_quickaccess.current.final_weight.head = _quickaccess.current.muscle.head + _quickaccess.current.fat.head + _quickaccess.adjusted.muscle.head + _quickaccess.adjusted.fat.head;
	_quickaccess.current.final_weight.body = _quickaccess.current.muscle.body + _quickaccess.current.fat.body + _quickaccess.adjusted.muscle.body + _quickaccess.adjusted.fat.body;
	_quickaccess.current.final_weight.arms = _quickaccess.current.muscle.arms + _quickaccess.current.fat.arms + _quickaccess.adjusted.muscle.arms + _quickaccess.adjusted.fat.arms;
	_quickaccess.current.final_weight.chest = _quickaccess.current.muscle.chest + _quickaccess.current.fat.chest + _quickaccess.adjusted.muscle.chest + _quickaccess.adjusted.fat.chest;
	var _totalBabyWeight = 0;
	for (var i = 0; i < array_length(child_currentWeights); i++) {
	   _totalBabyWeight += child_currentWeights[i];
	}
	_quickaccess.current.final_weight.belly = _quickaccess.stomach.weight + _quickaccess.current.fat.belly + _quickaccess.current.muscle.belly + _quickaccess.adjusted.fat.belly + _quickaccess.adjusted.muscle.belly + _totalBabyWeight;
						
	_quickaccess.current.final_weight.butt = _quickaccess.current.muscle.butt + _quickaccess.current.fat.butt + _quickaccess.adjusted.muscle.butt + _quickaccess.adjusted.fat.butt;
	_quickaccess.current.final_weight.legs = _quickaccess.current.muscle.legs + _quickaccess.current.fat.legs + _quickaccess.adjusted.muscle.legs + _quickaccess.adjusted.fat.legs;
	_quickaccess.current.final_weight.tail = _quickaccess.current.muscle.tail + _quickaccess.current.fat.tail + _quickaccess.adjusted.muscle.tail + _quickaccess.adjusted.fat.tail;
	_quickaccess.current.final_weight.wings = _quickaccess.current.muscle.wings + _quickaccess.current.fat.wings + _quickaccess.adjusted.muscle.wings + _quickaccess.adjusted.fat.wings;
#endregion

}
function char_eat(_character, _ate){
	_character.body_weight.stomach.weight += _ate.food.weight;
	_character.body_weight.stomach.substanence += _ate.food.substanence;
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


body_types[0] = fat_parts[0,0];
// 0,0 = fat				0,0 = slight fat				0,0 = head
// 1,0 = tone				1,0 = more fat					0,2 = body
// 2,0 = muscular			2,0 = more fat					0,3 = arms ect...

//	fat > muscle* 1.5							= fat
//  fat > muscle/ 2  and   fat < muscle * 1.5  = tone
//  else										= muscular

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