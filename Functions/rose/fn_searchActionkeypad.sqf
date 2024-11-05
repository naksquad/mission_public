private ["_theunitca", "_uidr"];
_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 

missionNamespace setVariable ["LARMED", 1, true];
parseText format ["Bomb disarm Code: %1", (missionNamespace getVariable "LECODE")] remoteExec ["hint", -2, false]; 

private _theCode = (missionNamespace getVariable "LECODE");
private _finalStringCode = "Bomb Code: " + " " + (str _theCode);
[RangeMaster, _finalStringCode] remoteexec ['globalChat', -2];