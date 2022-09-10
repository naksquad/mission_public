/*
File: fn_turretActions.sqf
Author:

	Quiksilver / VileAce
	
Last modified:

	10/23/20 VileAce made compatible with Altis 
	
Description:

	Turret actions
	
	Trialing turretLocal
_______________________________________________*/

private ["_array","_v","_turret","_lock"];
_array = _this select 3;
_v = _array select 0;
_turret = _array select 1;
_lock = _array select 2;
{
	player removeAction _x;
} count QS_turretActions;
if (_lock isEqualTo 0) exitWith {
	if (_turret isEqualTo 1) then {
		//[_v, ["LMG_Minigun_Transport", [1]]] remoteExecCall ["removeWeaponTurret", 0, false];
		[_v,1,'LMG_Minigun_Transport',1] call (missionNamespace getVariable 'QS_fnc_turret');
		_v setVariable ['QS_turretL_locked',FALSE,TRUE];
	};
	if (_turret isEqualTo 2) then {
		//[_v, ["LMG_Minigun_Transport", [2]]] remoteExecCall ["removeWeaponTurret", 0, false];
		[_v,2,'LMG_Minigun_Transport2',1]  call (missionNamespace getVariable 'QS_fnc_turret');
		_v setVariable ['QS_turretR_locked',FALSE,TRUE];
	};
	missionNamespace setVariable ['QS_turretControl',FALSE,FALSE];
	missionNamespace setVariable ['QS_inturretloop',FALSE,FALSE];
};
if (_lock isEqualTo 1) exitWith {
	if (_turret isEqualTo 1) then {
		//[_v, ["LMG_Minigun_Transport", [1]]] remoteExecCall ["addWeaponTurret", 0, false];	
		[_v,1,'LMG_Minigun_Transport',0]  call (missionNamespace getVariable 'QS_fnc_turret');
		_v setVariable ['QS_turretL_locked',TRUE,TRUE];
	};
	if (_turret isEqualTo 2) then {
		//[_v, ["LMG_Minigun_Transport", [2]]] remoteExecCall ["addWeaponTurret", 0, false];	
		[_v,2,'LMG_Minigun_Transport2',0]  call (missionNamespace getVariable 'QS_fnc_turret');
		_v setVariable ['QS_turretR_locked',TRUE,TRUE];
	};
	missionNamespace setVariable ['QS_turretControl',FALSE,FALSE];
	missionNamespace setVariable ['QS_inturretloop',FALSE,FALSE];
};