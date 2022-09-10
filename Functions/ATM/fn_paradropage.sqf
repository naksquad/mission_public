//nak parah
_vehType = _this # 0;
_player = _this # 1;
if (getPosATL _player select 2 < 150) exitWith {hint "To low to Paradrop (Altitude less than 150) ";};
if (getPosATL _player select 2 > 100) then {
	if (alive _player) then {
		_MBBack = unitBackpack _player;
		_LEtrueBK = typeof _MBBack;
		if (_LEtrueBK != "B_Parachute") then {
			 moveOut _player;
			 sleep 5;
		//	_player action ["GetOut",vehicle _player];
			if (vehicle _player IsEqualto _player) then {
				waitUntil {(position _player select 2) <= 150};//add kill version will be suck
				addCamShake [8, 2, 20];
				chute = createVehicle ['Steerable_Parachute_F', position _player, [], 0, 'FLY'];
				chute setPos position _player;
				_player moveIndriver chute;
				chute allowDamage false;
			};
		};
	};
};