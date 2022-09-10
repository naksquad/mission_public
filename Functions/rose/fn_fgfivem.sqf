private _hours = _this select 3 select 0;
private _minute = _this select 3 select 1;
private _caller = _this # 1;	
_uid = getPlayerUID _caller;
_leplayer = getPlayerUID player;
if (_minute == 0) exitWith { _minute = "00"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 1) exitWith { _minute = "01"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 2) exitWith { _minute = "02"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 3) exitWith { _minute = "03"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 4) exitWith { _minute = "04"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 5) exitWith { _minute = "05"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 6) exitWith { _minute = "06"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 7) exitWith { _minute = "07"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 8) exitWith { _minute = "08"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};
if (_minute == 9) exitWith { _minute = "09"; if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};};


if (_uid isEqualTo _leplayer ) then {hint format ["The Vehicle Will Respawn At %1:%2 Game Time", _hours,_minute];};