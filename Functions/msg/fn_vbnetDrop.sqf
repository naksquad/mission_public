_pos = _this # 0;
_lepackage = _this # 1;

_chuteType = "B_Parachute_02_F";			
_crateType =  ["O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","I_CargoNet_01_ammo_F"];			
_smokeType =  ["SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange"];  			
_lightType =  ["Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue"];			

//_tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>TOO LOW</t><br/><t size='1.2' color='#9ef680'>You need to be above</t><br/><t size='1.5' color='#ed3b00'>%1 meters</t><br/><t size='1.2' color='#9ef680'>in order to drop an ammo crate.</t></t>",_minheight];


_chute = createVehicle [_chuteType, [100, 100, 200], [], 0, 'FLY'];
_chute setPos [_pos select 0, (_pos select 1), (_pos select 2) + 150];
_crate = createVehicle [_lepackage, position _chute, [], 0, 'NONE'];
_crate attachTo [_chute, [0, 0, 1]];
_crate allowdamage false;
//_light = createVehicle [_lightType, position _chute, [], 0, 'NONE'];
//_light attachTo [_chute, [0, 0, 0]];


waitUntil {
			position _crate select 2 < 1 || isNull _chute
		};
		
detach _crate;
_crate setPos [position _crate select 0, position _crate select 1, 0];
_smoke = (selectRandom _smokeType) createVehicle [getPos _crate select 0, getPos _crate select 1,5];
_crate allowdamage true;
[_crate, ["<t color='#ed3b00'>Delete/Remove Package</t>", {_this call ROSE_fnc_vbcleaner1;}]] remoteExec ["addAction", 0, true];