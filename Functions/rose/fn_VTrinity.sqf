//aim
disableSerialization;
private _ctrl = _this # 0;
private _index = _ctrl # 1;
((uiNamespace getVariable "ledisplaysav") displayCtrl 91111) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", parseNumber (_index toFixed 1)];
if (_index < 0.1) then {missionNamespace setVariable ["lesniperpour", _index];};
if (_index >= 0.1 && _index < 0.2) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.2 && _index < 0.3) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.3 && _index < 0.4) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.4 && _index < 0.5) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.5 && _index < 0.6) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.6 && _index < 0.7) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.7 && _index < 0.8) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.8 && _index < 0.9) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index >= 0.9 && _index < 1) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
if (_index == 1) then {missionNamespace setVariable ["lesniperpour", _index];player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");};
