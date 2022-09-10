_pos = _this # 0;
_lepackage = _this # 1;

_chuteType = "B_Parachute_02_F";			
_smokeType =  ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange"];  			
_lightType =  ["Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue"];			
//Change VileAce - lower altitude of airdrop
//_chute = createVehicle [_chuteType, [100, 100, 200], [], 0, 'FLY'];
//_chute setPos [_pos select 0, (_pos select 1), (_pos select 2) + 200];
//_lepackage setPos [_pos select 0, (_pos select 1), (_pos select 2) + 200];

_chute = createVehicle [_chuteType, [100, 100, 200], [], 0, 'FLY'];
_chute setPos [_pos select 0, (_pos select 1), (_pos select 2) + 50];
_lepackage setPos [_pos select 0, (_pos select 1), (_pos select 2) + 50];
_lepackage attachTo [_chute, [0, 0, 0]];
_lepackage allowdamage false;
waitUntil {
			position _lepackage select 2 < 1 || isNull _chute
		};
		
detach _lepackage;
_lepackage setPos [position _lepackage select 0, position _lepackage select 1, 0];
_smoke = (selectRandom _smokeType) createVehicle [getPos _lepackage select 0, getPos _lepackage select 1,5];
_lepackage allowdamage true;
[_lepackage, ["<t color='#ed3b00'>Delete/Remove Package</t>", {_this call ROSE_fnc_vbcleaner1;}]] remoteExec ["addAction", 0, true];