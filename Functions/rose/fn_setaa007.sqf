private _lecavier = _this # 0;
private _lesunitarray = _this # 1;
private _lesobjarray = _this # 2;


diag_log format [" _lecavier %1", _lecavier];
diag_log format ["_lesunitarray %1", _lesunitarray];
diag_log format ["_lesobjarray %1", _lesobjarray];

//[_lalocpos] remoteExecCall ["NAK_fnc_vbnet17", -2, false];

["aoTask112", "SUCCEEDED",true] call BIS_fnc_taskSetState; 
sleep 2;

["aoTask112",west] call bis_fnc_deleteTask;
"matrix_008" setMarkerPos [-35206.1,-25793.5];

deleteVehicle _lecavier;
{deleteVehicle _x;} forEach _lesobjarray;
{deleteVehicle _x;} forEach _lesunitarray;



sleep 120;
[] spawn NAK_fnc_t03;
