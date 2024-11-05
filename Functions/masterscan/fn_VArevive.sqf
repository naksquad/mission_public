#include "..\..\DefinePrice.hpp"

private _REVIVEVAL = REVIVEVAL;

if ((missionNameSpace getVariable "isNakElite")) then {
	_REVIVEVAL = REVIVEVALELT;
};

if (vehicle player != player) exitWith {
	hint "Revive is Not Available While Inside a Vehicle"
};

private _lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Revive System is not Available, Please Wait For The System To Cool Down";
};

private _lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then {
	missionNamespace setVariable ["themasterrankin", 0];
	_lecallers = 0;
};

if (_lecallers >= _REVIVEVAL) then {
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1];
		playSound "AddItemOK";
		closeDialog 0;

		private _leresult = _lecallers - _REVIVEVAL;
		private _therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01;
		private _id = clientOwner;
		[[ "#rev", 1, player ], BIS_fnc_reviveOnState] remoteExec ["call", _id];
		removeAllActions player;
		player addAction
		[
			"<t color='#0036d9'>PLAYER MENU</t>",
			{
				createDialog 'nastynak007';
			},
			[],
			-100,
			false,
			true,
			"",
			"true",
			-1,
			false,
			"",
			""
		];
		sleep COOLDOWNSYST2;
		missionNamespace setVariable ["lock1", 0];
	};
} else {
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};