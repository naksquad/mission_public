private _lecavier = _this # 0;
private _objtopush = _this # 1;
private _lesvTspawnedunits = _this # 2;



if (isServer) then {
	if !(hasInterface) then {	
		diag_log format [" _lecavier %1", _lecavier];
		diag_log format ["_objtopush %1", _objtopush];
		diag_log format ["_lesvTspawnedunits %1", _lesvTspawnedunits];

		//[_lalocpos] remoteExecCall ["NAK_fnc_vbnet17", -2, false];

		["aoTask111", "SUCCEEDED",true] call BIS_fnc_taskSetState; 
		sleep 2;

		["aoTask111",west] call bis_fnc_deleteTask;
		"matrix_007" setMarkerPos [-35206.1,-25793.5];

		deleteVehicle _lecavier;
		{deleteVehicle _x;} forEach _lesvTspawnedunits;
		{deleteVehicle _x;} forEach _objtopush;



		sleep 120;
		[] spawn NAK_fnc_t02;
	};
};
