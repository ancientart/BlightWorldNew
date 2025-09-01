function scr_KeyBinds(){
	global.key = {
		FullScreen : ord("U"),
		LeftD : ord("A"),
		UpD : ord("W"),
		DownD : ord("S"),
		RightD : ord("D"),
		Interact : ord("E"),
		QuickItem : ord("Q"),
		Menu : vk_escape,
		Sprint : vk_shift,
		Roll : vk_space,
		
		LightAttack : mb_left,	// fast swing or wand attack
		HeavyAttack : mb_right,	// slow powerfull swing or charged magic bolt
		
		Inventory : ord("I"),	// equipment , currency , and items
		Character : ord("C"),	// visible player stats, weight , hp , mana .ect...
		Skills : ord("O"),		// Unlocked abilitys
		Perks : ord("P"),		// Rogue like dungeon perks obtained by completeing levels and events reset after
		Quests : ord("L"),		// Quest log
		
		Ability1 : ord("1"),
		Ability2 : ord("2"),
		Ability3 : ord("3"),
		Ability4 : ord("4"),
		Ability5 : ord("5"),
		
	}
}