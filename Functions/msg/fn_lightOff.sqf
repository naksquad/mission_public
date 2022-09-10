private ["_veh","_id","_vehicle","_light_array","_red_green","_attachpos","_setLightAttenuation","_light","_the_veh_tp","_now","_hour","_min","_levariaToString"];

_vehicle = _this # 0;

_veh = typeOf _vehicle;

_id = _this # 2;

_light_array = [];


_red_green = [0,255,0];

_vehicle removeAction _id;


switch (_veh) do {
    case "B_Heli_Light_01_F": { 
		_now = missionNamespace getVariable"_levariaToString1";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Light_02_unarmed_F": {
		_now = missionNamespace getVariable"_levariaToString2";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Light_02_dynamicLoadout_F": { 
		_now = missionNamespace getVariable"_levariaToString3";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "B_Heli_Transport_01_F": { 
		_now = missionNamespace getVariable"_levariaToString4";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_dynamicLoadout_F": { 
		_now = missionNamespace getVariable"_levariaToString5";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_base_F": {
		_now = missionNamespace getVariable"_levariaToString6";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_F": { 
		_now = missionNamespace getVariable"_levariaToString7";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_light_03_unarmed_F": { 
		_now = missionNamespace getVariable"_levariaToString8";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "I_Heli_Transport_02_F": { 
		_now = missionNamespace getVariable"_levariaToString9";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "C_IDAP_Heli_Transport_02_F": { 
		_now = missionNamespace getVariable"_levariaToString10";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "B_Heli_Transport_03_F": { 
		_now = missionNamespace getVariable"_levariaToString11";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "B_Heli_Transport_03_unarmed_F": { 
		_now = missionNamespace getVariable"_levariaToString12";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
	case "O_Heli_Transport_04_covered_F": { 
		_now = missionNamespace getVariable"_levariaToString13";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
    case "O_Heli_Transport_04_medevac_F": { 
		_now = missionNamespace getVariable"_levariaToString14";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};

	case "B_CTRG_Heli_Transport_01_sand_F": { 
		_now = missionNamespace getVariable"_levariaToString15";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};

	case "B_CTRG_Heli_Transport_01_tropic_F": { 
		_now = missionNamespace getVariable"_levariaToString16";

		{
			deleteVehicle _x;
		} forEach _now;
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

	};
};
