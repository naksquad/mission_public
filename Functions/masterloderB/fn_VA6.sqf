#include "..\..\DefinePrice.hpp"
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;

private _daytime = daytime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_themasterrankin = 0;
};
(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];

//(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 12001) ctrlSetTooltip DWEAPONCRATE;
(_dispay displayCtrl 12002) ctrlSetTooltip DLAUNCHERCRATE;
(_dispay displayCtrl 12003) ctrlSetTooltip DSPECWEAPONSCRATE;
(_dispay displayCtrl 12004) ctrlSetTooltip DEQUIPDIVINGCRATE;
(_dispay displayCtrl 12005) ctrlSetTooltip DFIRSTAIDCRATE;
(_dispay displayCtrl 12006) ctrlSetTooltip DPERSONALAMMOCRATE;
(_dispay displayCtrl 12007) ctrlSetTooltip DEXPLOSIVESCRATE;
(_dispay displayCtrl 12008) ctrlSetTooltip DNIGHTSUPPLIESCRATE;
