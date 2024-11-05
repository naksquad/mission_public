#include "..\..\DefinePrice.hpp"

private _SECTORSCAN = SECTORSCAN;

if ((missionNameSpace getVariable "isNakElite")) then {
	_SECTORSCAN = SECTORSCANELT;
};

if (vehicle player != player) exitWith {
	hint "Sector Scan is Not Available While Inside a Vehicle"
};

private _lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Sector Scan System is not Available, Please Wait For The System To Cool Down";
};

private _lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then {
	missionNamespace setVariable ["themasterrankin", 0];
	_lecallers = 0;
};

if (_lecallers >= _SECTORSCAN) then {
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1];
		closeDialog 0;

		private _leresult = _lecallers - _SECTORSCAN;
		private _therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01;
		openMap true;
		missionNamespace setVariable ["lecardena", 0];
		playSound "sectorsecl";
		[toUpper localize "STR_A3_WL_popup_scan"] spawn BIS_fnc_WLSmoothText;
		
		private _mapEH = addMissionEventHandler ["MapSingleClick", {
			private _pos = _this # 1;
			if ((missionNamespace getVariable "lecardena") == 0) then {
				missionNamespace setVariable ["lecardena", 1];
				playSound "AddItemOK";
				playSound "sectorscan";
				[toUpper format [localize "STR_SCANERON"]] spawn BIS_fnc_WLSmoothText;
				private _markedmen = [];
				{
					if ((_x IsKindof 'Man') && !(side _x isEqualTo west)) then {
						
						if ((_pos distance _x) < 2000) then {
							_marker = createMarkerlocal [format ["ManMarker_%1", _x], visiblePosition _x];
							format ["ManMarker_%1", _x] setMarkerTypelocal "Mil_dot";
							format ["ManMarker_%1", _x] setMarkerColorlocal "ColorRed";
							_markedmen pushBack [format ["ManMarker_%1", _x]];
						};
					};
				} forEach allUnits;
				missionNamespace setVariable ["markedmen", _markedmen];
			};
		
			private _leunacheck = missionNamespace getVariable "lecardena";
			if (_leunacheck == 0) then {
				playSound "AddItemFailed";
			};
		}];

		while { ((missionNamespace getVariable "lecardena") == 0) || visibleMap } do {
			private _leunacheck = missionNamespace getVariable "lecardena";
			if ((_leunacheck == 1) || !(visibleMap)) exitWith {};
			sleep 1;
		};
		sleep 15;
		private _lemarkerman = missionNamespace getVariable "markedmen";
		{
			deleteMarkerLocal (_x select 0)
		} forEach _lemarkerman;
		removeAllMissionEventHandlers "MapSingleClick";
		playSound "scanterminatedq";
		[toUpper format [localize "STR_SCANEROFF"]] spawn BIS_fnc_WLSmoothText;
		missionNamespace setVariable ["lecardena", 0];
		sleep COOLDOWNSYST2;
		missionNamespace setVariable ["lock1", 0];
	};
} else {
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};