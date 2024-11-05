private _pos = _this # 0;
private _lepackage = _this # 1;

private _chuteType = "B_Parachute_02_F";			
private _crateType =  ["O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","I_CargoNet_01_ammo_F"];			
private _smokeType =  ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange"];  			
private _lightType =  ["Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue"];			

private _chute = createVehicle [_chuteType, [100, 100, 200], [], 0, 'FLY'];
_chute setPos [_pos select 0, (_pos select 1), (_pos select 2) + 150];
private _crate = createVehicle [_lepackage, position _chute, [], 0, 'NONE'];
_crate attachTo [_chute, [0, 0, 1]];
_crate allowdamage false;

waitUntil {
			position _crate select 2 < 1 || isNull _chute
		};
		
detach _crate;
_crate setPos [position _crate select 0, position _crate select 1, 0];
private _smoke = (selectRandom _smokeType) createVehicle [getPos _crate select 0, getPos _crate select 1,5];
_crate allowdamage true;
[_crate, ["<t color='#ed3b00'>Delete/Remove Package</t>", {_this call ROSE_fnc_vbcleaner1;}]] remoteExec ["addAction", 0, true];