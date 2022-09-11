#include "..\..\DefinePrice.hpp"

private _RECRUITAIPRICE = RECRUITAIPRICE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_RECRUITAIPRICE = RECRUITAIPRICEELT;
};

_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Recruit AI is not available, please wait for the system to cool down";
};

//Need to make sure if already AI in group
//If AI in group == 0 create new group
//If AI in group > 1 && < max_units_allowed do not create new grou -p
//IF AI in group >= max_units_allowed exit with hint - "You've reached the max. allowed group size."
//DEFAULT CODE if((count (units group player) + count recruit_queue) >= max_units_allowed) exitWith {hint "You've reached the max. allowed group size."};

_AIPlayers = [];
{
	if !(isPlayer _x) then {
		_AIPlayers pushBack _x;
	};
} forEach (units group player);

if (count _AIPlayers >= max_units_allowed) exitWith {
	hint "You've reached the max. allowed group size."
};
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= _RECRUITAIPRICE) then
	{
		if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1]; 
		playSound "AddItemOK";
		closeDialog 0; 
		_leresult = _lecallers - _RECRUITAIPRICE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		sleep 0.01; 
		
if (count _AIPlayers == 0) then {
	//VileAce - move user to own group and register as a dynamic group
	[player] join grpNull;
	private _group = group player;
	private _leader = leader _group;
	private _groupName = name player+"'s Group";
	private _data = [nil, _groupName, false];

	["RegisterGroup",[ _group, _leader, _data ]] remoteExec [ "BIS_fnc_dynamicGroups", 2 ];
	["SetPrivateState",[_group, TRUE]] remoteExec [ "BIS_fnc_dynamicGroups", 2 ];
	//VileAce End - move user to own group and register as a dynamic group
};
createDialog "RecruitUnitsDialog";

sleep COOLDOWNSYST;
		missionNamespace setVariable ["lock1", 0];
	};					
}
else
{
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};
