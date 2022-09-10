/*
File: fn_clientEventCuratorKeyDown.sqf
Author:

	Quiksilver / VileAce
	
Description:

	Curator KeyDown Event
__________________________________________________*/

_key = _this select 1;
private _c = FALSE;
if (_key isEqualTo 61) then {
	if (_this select 2) then {
		if (alive player) then {
			if (!((lifeState player) isEqualTo 'INCAPACITATED')) then {
				[getAssignedCuratorLogic player, [entities [[],['Logic'],true], true]] remoteExecCall ["addCuratorEditableObjects", 2];
				_c = TRUE;
			};
		};
	};
};
_c;