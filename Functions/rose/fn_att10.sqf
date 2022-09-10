_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 

missionNamespace setVariable ["thecopperMP", 1, true];


