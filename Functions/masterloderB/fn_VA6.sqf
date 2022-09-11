#include "..\..\DefinePrice.hpp"

private _DWEAPONCRATE = DWEAPONCRATE;
private _DLAUNCHERCRATE = DLAUNCHERCRATE;
private _DSPECWEAPONSCRATE = DSPECWEAPONSCRATE;
private _DEQUIPDIVINGCRATE = DEQUIPDIVINGCRATE;
private _DFIRSTAIDCRATE = DFIRSTAIDCRATE;
private _DPERSONALAMMOCRATE = DPERSONALAMMOCRATE;
private _DEXPLOSIVESCRATE = DEXPLOSIVESCRATE;
private _DNIGHTSUPPLIESCRATE = DNIGHTSUPPLIESCRATE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_DWEAPONCRATE = DWEAPONCRATEELT;
	_DLAUNCHERCRATE = DLAUNCHERCRATEELT;
	_DSPECWEAPONSCRATE = DSPECWEAPONSCRATEELT;
	_DEQUIPDIVINGCRATE = DEQUIPDIVINGCRATEELT;
	_DFIRSTAIDCRATE = DFIRSTAIDCRATEELT;
	_DPERSONALAMMOCRATE = DPERSONALAMMOCRATEELT;
	_DEXPLOSIVESCRATE = DEXPLOSIVESCRATEELT;
	_DNIGHTSUPPLIESCRATE = DNIGHTSUPPLIESCRATEELT;
};

_dispay = _this # 0;
disableSerialization;
private _now = date;
private _hour = _now select 3;
private _min = _now select 4;

private _daytime = dayTime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then {
	missionNamespace setVariable ["themasterrankin", 0];
	_themasterrankin = 0;
};
(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];
(_dispay displayCtrl 12001) ctrlSetTooltip _DWEAPONCRATE;
(_dispay displayCtrl 12002) ctrlSetTooltip _DLAUNCHERCRATE;
(_dispay displayCtrl 12003) ctrlSetTooltip _DSPECWEAPONSCRATE;
(_dispay displayCtrl 12004) ctrlSetTooltip _DEQUIPDIVINGCRATE;
(_dispay displayCtrl 12005) ctrlSetTooltip _DFIRSTAIDCRATE;
(_dispay displayCtrl 12006) ctrlSetTooltip _DPERSONALAMMOCRATE;
(_dispay displayCtrl 12007) ctrlSetTooltip _DEXPLOSIVESCRATE;
(_dispay displayCtrl 12008) ctrlSetTooltip _DNIGHTSUPPLIESCRATE;