_rutchie = _this # 0;
_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 

_lewire = missionNamespace getVariable "clientwire";

missionNamespace setVariable ["LARMED1", 1, true];

parseText format ["Wire Color To Cut: %1", _lewire] remoteExec ["hint", -2, false]; 

deleteVehicle _rutchie;

["aoTask6", "SUCCEEDED",true] call BIS_fnc_taskSetState;
["aoTask6",west] call bis_fnc_deleteTask;
"matrix_1" setMarkerPos [-35206.1,-25793.5];