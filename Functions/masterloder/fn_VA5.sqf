#include "..\..\DefinePrice.hpp"
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_themasterrankin = 0;
};
(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];

private _daytime = daytime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];
//(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 12001) ctrlSetTooltip DSTATICAT;
(_dispay displayCtrl 12002) ctrlSetTooltip DSTATICAA;
(_dispay displayCtrl 12003) ctrlSetTooltip DSTATICMK30;
(_dispay displayCtrl 12004) ctrlSetTooltip DSTATICMK30RAISED;
(_dispay displayCtrl 12005) ctrlSetTooltip DSTATICMK30A;

(_dispay displayCtrl 12006) ctrlSetTooltip DSTATICMK20;
(_dispay displayCtrl 12007) ctrlSetTooltip DSTATICMK20RAISED;
(_dispay displayCtrl 12008) ctrlSetTooltip DSTATICMK20A;

(_dispay displayCtrl 12009) ctrlSetTooltip DSTATICMORTAR;