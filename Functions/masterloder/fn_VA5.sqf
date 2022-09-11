#include "..\..\DefinePrice.hpp"

private _DSTATICAT = DSTATICAT;
private _DSTATICAA = DSTATICAA;
private _DSTATICMK30 = DSTATICMK30;
private _DSTATICMK30RAISED = DSTATICMK30RAISED;
private _DSTATICMK30A = DSTATICMK30A;
private _DSTATICMK20 = DSTATICMK20;
private _DSTATICMK20RAISED = DSTATICMK20RAISED;
private _DSTATICMK20A = DSTATICMK20A;
private _DSTATICMORTAR = DSTATICMORTAR;


if ((missionNameSpace getVariable "isNakElite")) then {
	_DSTATICAT = DSTATICATELT;
	_DSTATICAA = DSTATICAAELT;
	_DSTATICMK30 = DSTATICMK30ELT;
	_DSTATICMK30RAISED = DSTATICMK30RAISEDELT;
	_DSTATICMK30A = DSTATICMK30AELT;
	_DSTATICMK20 = DSTATICMK20ELT;
	_DSTATICMK20RAISED = DSTATICMK20RAISEDELT;
 	_DSTATICMK20A = DSTATICMK20AELT;
	_DSTATICMORTAR = DSTATICMORTARELT;
};

_dispay = _this # 0;
disableSerialization;
private _now = date;
private _hour = _now select 3;
private _min = _now select 4;

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then {
	missionNamespace setVariable ["themasterrankin", 0];
	_themasterrankin = 0;
};
(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];

private _daytime = dayTime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];

(_dispay displayCtrl 12001) ctrlSetTooltip _DSTATICAT;
(_dispay displayCtrl 12002) ctrlSetTooltip _DSTATICAA;
(_dispay displayCtrl 12003) ctrlSetTooltip _DSTATICMK30;
(_dispay displayCtrl 12004) ctrlSetTooltip _DSTATICMK30RAISED;
(_dispay displayCtrl 12005) ctrlSetTooltip _DSTATICMK30A;

(_dispay displayCtrl 12006) ctrlSetTooltip _DSTATICMK20;
(_dispay displayCtrl 12007) ctrlSetTooltip _DSTATICMK20RAISED;
(_dispay displayCtrl 12008) ctrlSetTooltip _DSTATICMK20A;
(_dispay displayCtrl 12009) ctrlSetTooltip _DSTATICMORTAR;