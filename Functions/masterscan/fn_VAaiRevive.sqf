#include "..\..\DefinePrice.hpp"
if (vehicle player != player) exitWith {hint "Revive is Not Available While Inside a Vehicle"};
_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "AI Revive System is not Available, Please Wait For The System To Cool Down";
};
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= AIREVIVEVAL) then
	{
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1];
		playSound "AddItemOK";
		closeDialog 0; 

			_leresult = _lecallers - AIREVIVEVAL;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 

		_playerpos = position player;
		_id = clientOwner;
		_position =[_playerpos, 50, 150, 3, 0, 20, 0] call BIS_fnc_findSafePos;
		_legrp = createGroup west;
		_theaireviver = _legrp createUnit ["C_IDAP_Man_Paramedic_01_F", _position, [], 0, "FORM"];
		_waypoint = _legrp addWaypoint [_playerpos, 0];
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointCompletionRadius 0;

		_yhecounter = 0;
		while {true} do 
		{
			
			if ((_playerpos distance _theaireviver) < 5) exitWith {
				[[ "#rev", 1, player ], BIS_fnc_reviveOnState] remoteExec ["call",_id]; 
				sleep 5; 
				deleteVehicle _theaireviver;
				removeallactions player;
				player addAction 
				[
					"<t color='#ffff00'>PLAYER MENU</t>", 
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
			};
			if !(alive _theaireviver) exitWith {[toUpper localize "STR_PARAMETICDIE"] spawn BIS_fnc_WLSmoothText;deleteVehicle _theaireviver;};
			if (_yhecounter >= 60) exitWith {[toUpper localize "STR_PARAMETICDIE"] spawn BIS_fnc_WLSmoothText;  _theaireviver setDamage 1; deleteVehicle _theaireviver;};
			_yhecounter = _yhecounter + 1;
			sleep 1;
		};
		sleep COOLDOWNSYST2;
		missionNamespace setVariable ["lock1", 0];
	};					
}
else
{
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};

