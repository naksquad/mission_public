//    VAS EARPLUGS v2.0  // 
// scripts\VAS\Earplugs.sq// 
//      MykeyRM [AW]     // 
// //////////////////////////

PlugsIN = 2;     // Set 'EARPLUGS REMOVED' as init value 

// Add keybind to player [Pause/break] key - US keyboard.
MEP_KD = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 197 || _this select 1 == 210) then {
	switch (PlugsIN) do {
		case 1: {
			PlugsIN = 2;
			2 fadeSound 1; player groupChat 'EARPLUGS REMOVED';
		};
		case 2: {
			PlugsIN = 1;
			2 fadeSound 0.2; player groupChat 'EARPLUGS FITTED';
		};
		default {};
	};
}"];