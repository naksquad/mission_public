private ["_id","_vehicle","_le_ghost","_lechinok","_Le_mohak"];

_vehicle = _this # 0;

_id = _this # 2;

_le_ghost = ["B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F"];
_lechinok = ["B_Heli_Transport_03_unarmed_F","B_Heli_Transport_03_F"];
_Le_mohak = ["I_Heli_Transport_02_F","C_IDAP_Heli_Transport_02_F"];

_vehicle removeAction _id;

if (typeOf _vehicle in _le_ghost) then {
	_vehicle animateDoor ['door_R', 1];
	_vehicle animateDoor ['door_L', 1];
};

if (typeOf _vehicle == "O_Heli_Attack_02_dynamicLoadout_F") then {
	_vehicle animateDoor ['door_R', 1];
	_vehicle animateDoor ['door_L', 1];
};

if (typeOf _vehicle in _lechinok) then {
	_vehicle animatedoor ['Door_L_source', 1];
	_vehicle animatedoor ['Door_R_source', 1];
};

if (typeOf _vehicle in _Le_mohak) then {
	_vehicle animateDoor ['door_back_L', 1];
	_vehicle animateDoor ['door_back_R', 1];;
};

[( _this select 0),{_this addAction ["<t color='#f8f8ff'>Close Doors</t>", {_this call NAK_fnc_ghostDoorC;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2];



