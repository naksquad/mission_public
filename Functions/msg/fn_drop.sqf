/*
Author:

	Jester [AW]
	
Edited by:
 
	Quiksilver 
 
Note:
 
	This script does not broadcast public variables.
 
______________________________________________________________*/

private ["_heli", "_reloadtime"];

	//------------------------------------------------------- CONFIG
	
	_heli = _this # 0;
    _chuteType = "B_Parachute_02_F";			//parachute for blufor, for opfor and greenfor replace the 'B' with 'O' or 'G' respectively
    _crateType =  ["O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","I_CargoNet_01_ammo_F"];			//ammocrate class for blufor, feel free to change to whichever box you desire
    _smokeType =  ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange"];  			//smoke shell color you want to use
    _lightType =  ["Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue"];			//chemlightcolor you want used
    _reloadtime = 300;  							// time before next ammo drop is available to use, default 600 or 480
    _minheight = 50;  							// the height you have to be before you can actually drop the crate
	// display this when too low to drop
    _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>TOO LOW</t><br/><t size='1.2' color='#9ef680'>You need to be above</t><br/><t size='1.5' color='#ed3b00'>%1 meters</t><br/><t size='1.2' color='#9ef680'>in order to drop an ammo crate.</t></t>",_minheight];

	//--------------------------------------------------------- MEAT AND POTATOES
	
	if ( !(isNil "AW_ammoDrop") ) exitWith {
		hint "Ammo drop is not currently available"
	};
	
	if ((getPos player) select 2 < _minheight) exitWith {
		hint parseText _tooLow
	};
	
	if ((getPos player) select 2 > _minheight) then {
		AW_ammoDrop = false;
	//	deleteVehicle _crate;  // moved from below - this deletes old crate before creating a new one.
		publicVariable "AW_ammoDrop";
		_chute = createVehicle [_chuteType, [100, 100, 200], [], 0, 'FLY'];
		_chute setPos [getPosASL _heli select 0, getPosASL _heli select 1, (getPosASL _heli select 2) - 50];
		_crate = createVehicle [selectRandom _crateType, position _chute, [], 0, 'NONE'];
		_crate attachTo [_chute, [0, 0, -1.3]];
		_crate allowdamage false;
	//	_light = createVehicle [_lightType, position _chute, [], 0, 'NONE'];
	//	_light attachTo [_chute, [0, 0, 0]];

		//---------------------------------------------------- CLEAR CRATE
		
		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;

		//---------------------------------------------------- CRATE CONTENTS
		
		[_crate, ["<t color='#47842c'>Mobile Arsenal</t>", "VA.sqf"]] remoteExec ["addAction", 0, true];
	

		//--------------------------------------------------- BRIEF
		
		hint "UH-80 supply drop has been deployed.";
		
		//--------------------------------------------------- CRATE LANDING
		
		waitUntil {
			position _crate select 2 < 1 || isNull _chute
		};
		
		detach _crate;
		_crate setPos [position _crate select 0, position _crate select 1, 0];
		_smoke = (selectRandom _smokeType) createVehicle [getPos _crate select 0, getPos _crate select 1,5];

		//--------------------------------------------------- BRIEF
		
		hint "UH-80 supply drop has touched down.";

		//--------------------------------------------------- COOLDOWN TIMER
		
		sleep _reloadtime;
		
		//--------------------------------------------------- DELETE OLD CRATE
		
		deleteVehicle _crate;

		//--------------------------------------------------- NEW CRATE READY
		
		hint "UH-80 supply drop is available.";
		
		AW_ammoDrop = nil;
		publicVariable "AW_ammoDrop";
	};
