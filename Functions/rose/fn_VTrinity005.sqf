//aim
disableSerialization;
private _ctrl = _this # 0;
private _index = _ctrl # 1;
((uiNamespace getVariable "ledisplaysav") displayCtrl 91114) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", parseNumber (_index toFixed 0)];
missionNamespace setVariable ["hexdistance", _index];
