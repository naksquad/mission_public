private _lecavier = _this # 0;
private _lesunitarray = _this # 1;
private _lesobjarray = _this # 2;

["aoTask112", "SUCCEEDED",true] call BIS_fnc_taskSetState; 
sleep 2;

["aoTask112",west] call bis_fnc_deleteTask;
"matrix_008" setMarkerPos [-35206.1,-25793.5];

deleteVehicle _lecavier;
{deleteVehicle _x;} forEach _lesobjarray;
{deleteVehicle _x;} forEach _lesunitarray;

sleep 120;
[] spawn NAK_fnc_t03;
