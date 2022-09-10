/*
File: fn_conditionTurretActionUnlockL.sqf
Author:

	Quiksilver / VileAce
	
Last modified:

	10/23/20 VileAce made compatible with Altis 
	
Description:

	Add action condition for pilot control of UH80 turrets
_______________________________________________________________*/

private ["_c","_v","_type"];

_c = FALSE;
_v = vehicle player;
_type = typeOf _v;
_heliTypes = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F","B_Heli_Transport_03_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F"];
if (_type in _heliTypes) then {
	if (_v getVariable "QS_turretL_locked") then {
		_c = TRUE;
	};
};
_c;	