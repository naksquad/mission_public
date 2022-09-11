#include "..\..\DefinePrice.hpp"

private _DSECTORSCAN = DSECTORSCAN;
private _DREVIVEVAL = DREVIVEVAL;
private _DAIREVIVEVAL = DAIREVIVEVAL;
private _AAMATRIXP = AAMATRIXP;
private _DRECRUITAI = DRECRUITAI;

if ((missionNameSpace getVariable "isNakElite")) then {
	_DSECTORSCAN = DSECTORSCANELT;
	_DREVIVEVAL = DREVIVEVALELT;
	_DAIREVIVEVAL = DAIREVIVEVALELT;
	_AAMATRIXP = AAMATRIXPELT;
	_DRECRUITAI = DRECRUITAIELT;
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
private _daytime = dayTime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];
(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];
(_dispay displayCtrl 12001) ctrlSetTooltip _DSECTORSCAN;
(_dispay displayCtrl 12002) ctrlSetTooltip _DREVIVEVAL;
(_dispay displayCtrl 12003) ctrlSetTooltip _DAIREVIVEVAL;
(_dispay displayCtrl 12008) ctrlSetTooltip _AAMATRIXP;
(_dispay displayCtrl 12009) ctrlSetTooltip _DRECRUITAI;