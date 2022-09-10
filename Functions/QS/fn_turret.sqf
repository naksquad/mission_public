/*
@filename: fn_uh80Turret.sqf
Author:

	Quiksilver / VileAce
	
Last modified:

	10/23/20 VileAce made compatible with Altis 
	
Description:

	Send across network
___________________________________________________*/

params ['_v','_t','_w','_type'];
if (_type isEqualTo 0) then {

	[_v, [_w,[_t]]] remoteExecCall ["removeWeaponTurret", 0, false];
	//_v removeWeaponTurret [_w,[_t]];
};
if (_type isEqualTo 1) then {
	[_v, [_w,[_t]]] remoteExecCall ["addWeaponTurret", 0, false];
	//_v addWeaponTurret [_w,[_t]];
};
TRUE;