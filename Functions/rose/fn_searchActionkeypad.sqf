_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 

missionNamespace setVariable ["LARMED", 1, true];

sleep 1;

parseText format ["Bomb disarm Code: %1", (missionNamespace getVariable "LECODE")] remoteExec ["hint", -2, false]; 