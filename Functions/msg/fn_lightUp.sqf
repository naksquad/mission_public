private ["_veh","_id","_vehicle","_light_array","_red_color","_attachpos","_setLightAttenuation","_light","_the_veh_tp","_now","_hour","_min","_levariaToString"];

_vehicle = _this # 0;
_id = _this # 2;

_veh = typeOf _vehicle;

_light_array = [];
_red_color = [255,0,0];

_vehicle removeAction _id;


switch (_veh) do {
    case "B_Heli_Light_01_F": { 
		_attachpos = [[0,1,0.5]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString1", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Light_02_unarmed_F": {
		_attachpos = [[0,0,-0.4],[0,2.5,-0.4]];
		_setLightAttenuation = [0.3,0,0,500];

		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString2", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Light_02_dynamicLoadout_F": { 
		_attachpos = [[0,0,-0.4],[0,2.5,-0.4]];
		_setLightAttenuation = [0.3,0,0,500];

		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString3", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "B_Heli_Transport_01_F": { 
		_attachpos = [[0,2,0]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString4", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_dynamicLoadout_F": { 
		_attachpos = [[0,2.5,0.5]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString5", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_base_F": {
		_attachpos = [[0,2.5,0.5]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString6", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_F": { 
		_attachpos = [[0,2.5,0.5]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString7", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_unarmed_F": { 
		_attachpos = [[0,2.5,0.5]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString8", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];


	};
    case "I_Heli_Transport_02_F": { 
		_attachpos = [[0,1.5,-0.4]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString9", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "C_IDAP_Heli_Transport_02_F": { 
		_attachpos = [[0,1.5,-0.4]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString10", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "B_Heli_Transport_03_F": { 
		_attachpos = [[0,-2,0.3],[0,4,0.3]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

		missionNamespace setVariable ["_levariaToString11", _light_array, true];
	};
    case "B_Heli_Transport_03_unarmed_F": { 
		_attachpos = [[0,-2,0.3],[0,4,0.3]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString12", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
	case "O_Heli_Transport_04_covered_F": { 
		_attachpos = [[0.2,-1.95,-0.1],[-0.4,-1.95,-0.1],[0.2,0.93,-0.1],[-0.4,0.93,-0.1],[-0.13,3.13,0.35]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

	missionNamespace setVariable ["_levariaToString13", _light_array, true];
	[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Transport_04_medevac_F": { 
		_attachpos = [[0.2,-1.95,-0.1],[-0.4,-1.95,-0.1],[0.2,0.93,-0.1],[-0.4,0.93,-0.1],[-0.13,3.13,0.35]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString14", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};

	case "B_CTRG_Heli_Transport_01_sand_F": { 
		_attachpos = [[0,2,0]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString15", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};

	case "B_CTRG_Heli_Transport_01_tropic_F": { 
		_attachpos = [[0,2,0]];
		_setLightAttenuation = [0.3,0,0,500];
		
		{
			_light = '#lightpoint' createVehicle [0,0,0];
			_light attachTo [_vehicle,_x];
			_light setLightColor _red_color;
			_light setLightAttenuation _setLightAttenuation;
			_light setLightIntensity 50;
			_light_array pushBack _light;
		} forEach _attachpos;

		missionNamespace setVariable ["_levariaToString16", _light_array, true];
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light OFF</t>", {_this call NAK_fnc_lightOff;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
};
