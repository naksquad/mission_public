private _ledispay = _this # 0;
disableSerialization;
private _combo1 = 70001;
private _now = date;
private _hour = _now select 3;
private _min = _now select 4;
private _daytime = dayTime;
private _strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;

(_ledispay displayCtrl 100011) ctrlRemoveAllEventHandlers "LBSelChanged";

(_ledispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];

{
	private _index = lbAdd [_combo1, _x];
} forEach ["MIM-145 Defender", "Mk21 Centurion", "Mk49 Spartan", "Praetorian 1C"];

(_ledispay displayCtrl _combo1) ctrlRemoveAllEventHandlers "LBSelChanged";

(_ledispay displayCtrl _combo1) ctrlAddEventHandler ["LBSelChanged", "_this execVM 'VAA.sqf'"];