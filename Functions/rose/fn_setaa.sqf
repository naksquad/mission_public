private _lecavier = _this # 0;
private _objtopush = _this # 1;
private _lesvTspawnedunits = _this # 2;

if (isServer) then {
	if !(hasInterface) then {
		["aoTask111", "SUCCEEDED", true] call BIS_fnc_taskSetState;
		sleep 2;

		["aoTask111", west] call BIS_fnc_deleteTask;
		"matrix_007" setMarkerPos [-35206.1, -25793.5];

		deleteVehicle _lecavier;
		{
			deleteVehicle _x;
		} forEach _lesvTspawnedunits;
		{
			deleteVehicle _x;
		} forEach _objtopush;

		sleep 120;
		[] spawn NAK_fnc_t02;
	};
};