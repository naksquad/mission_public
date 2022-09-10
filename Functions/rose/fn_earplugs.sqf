//    VAS EARPLUGS v2.0   //
//scripts\VAS\Earplugs.sqf//
//      MykeyRM [AW]      //
////////////////////////////

	PlugsIN = 2;     			 //Set 'EARPLUGS REMOVED' as init value 


																						//Add keybind to player [Pause/Break] key - US keyboard.
MEP_KD = (findDisplay 46) displayAddEventHandler ["KeyDown", "if (_this select 1 == 197 || _this select 1 == 210 ) then {         
 switch (PlugsIN) do {
     case 1: { PlugsIN = 2; 2 fadeSound 1; player groupChat 'EARPLUGS REMOVED'; };
	case 2: { PlugsIN = 1; 2 fadeSound 0.2; player groupChat 'EARPLUGS FITTED';  };
	 default { };
	 };
}"];

//Once Earplugs taken from vas the Earplugs remain constant.
//Keybind remains until diconnection from server.



//mission.sqf - Script calls
//Object init Quartermaster - line 2308
//Object init Supply_Officer - Line 2623