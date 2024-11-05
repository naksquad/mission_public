private _theunitca = _this # 1;

private _uidr = getPlayerUID _theunitca;

private _desactivefucn = missionNamespace getVariable "desactivefucn";

if (_desactivefucn == 1) exitWith {};

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 
missionNamespace setVariable ["desactivefucn", 1, true];