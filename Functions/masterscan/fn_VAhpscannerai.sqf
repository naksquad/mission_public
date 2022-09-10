//for drop
//playSound3D ["A3\Data_F_Warlords\sfx\flyby.wss", objNull, FALSE, (position player) vectorAdd [0, 0, 100]];
// playSound "AddItemFailed";
//[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 
//playSound "AddItemOK";
//	[toUpper format [localize "STR_A3_WL_deploy_done", getText (BIS_WL_cfgVehs >> _class >> "displayName")]] spawn BIS_fnc_WLSmoothText;
//touch the goround playSound "assemble_target"
//[toUpper localize "STR_A3_WL_popup_airdrop_selection"] spawn BIS_fnc_WLSmoothText; select air drop zone
//[toUpper localize "STR_A3_WL_refund"] spawn BIS_fnc_WLSmoothText; 
#include "..\..\DefinePrice.hpp"

if (vehicle player != player) exitWith {hint "Sector Scan is Not Available While Inside a Vehicle"};
_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Sector Scan System is not Available, Please Wait For The System To Cool Down";

};
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= SECTORSCAN) then
	{
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1];
		closeDialog 0;

			_leresult = _lecallers - SECTORSCAN;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		 
		sleep 0.01; 
		openMap true; 
		missionNamespace setVariable ["lecardena", 0];
		playSound "sectorsecl";
		[toUpper localize "STR_A3_WL_popup_scan"] spawn BIS_fnc_WLSmoothText;
		_mapEH = addMissionEventHandler ["MapSingleClick", {_pos = _this # 1; 
		if ((missionNamespace getVariable "lecardena") == 0) then {
			missionNamespace setVariable ["lecardena", 1];
			playSound "AddItemOK";
			playSound "sectorscan";
			[toUpper format [localize "STR_SCANERON"]] spawn BIS_fnc_WLSmoothText;
			_markedmen = [];
			{ 

				if ((_x IsKindof 'Man') && !(side _x isEqualTo west)) then 
				{
					if ((_pos distance _x) < 2000 ) then 
					{
						_marker = createMarkerlocal [format ["ManMarker_%1",_x], visiblePosition _x];
						format ["ManMarker_%1",_x] setMarkerTypelocal "Mil_dot";
						format ["ManMarker_%1",_x] setMarkerColorlocal "ColorRed";
						_markedmen pushBack [format ["ManMarker_%1",_x]];
					};
				};
				
			} forEach allUnits;
			missionNamespace setVariable ["markedmen", _markedmen]; 
		};
		_leunacheck = missionNamespace getVariable "lecardena";
		if (_leunacheck == 0) then {
			playSound "AddItemFailed";
		};
		}];

		while {((missionNamespace getVariable "lecardena") == 0) || visibleMap } do 
		{
			_leunacheck = missionNamespace getVariable "lecardena";
			if ((_leunacheck == 1) || !(visibleMap)) exitWith {};
			sleep 1;
		};
		sleep 15;
		_lemarkerman = missionNamespace getVariable "markedmen";
		{deleteMarkerlocal (_x select 0)} foreach _lemarkerman;
		removeAllMissionEventHandlers "MapSingleClick";
		playSound "scanterminatedq";
		[toUpper format [localize "STR_SCANEROFF"]] spawn BIS_fnc_WLSmoothText;
		missionNamespace setVariable ["lecardena", 0];
		sleep COOLDOWNSYST2;
		missionNamespace setVariable ["lock1", 0];
	};
}
else
{
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};