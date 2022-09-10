/*
File: fn_turretActionCancel.sqf
Author:

	Quiksilver / VileAce
	
Last modified:

	10/23/20 VileAce made compatible with Altis 
	
Description:

	Turret actions
_______________________________________________*/

_v = vehicle player;
missionNamespace setVariable ['QS_turretControl',FALSE,FALSE];
missionNamespace setVariable ['QS_inturretloop',FALSE,FALSE];
[_v,1,0] call (missionNamespace getVariable 'QS_fnc_turretReset');
[_v,2,0] call (missionNamespace getVariable 'QS_fnc_turretReset');