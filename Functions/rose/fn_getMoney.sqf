private _myvec4 = _this # 0;
private _waterobjpush = _this # 1;
private _wateraipsuh = _this # 2;
private _wlesdvai = _this # 3;
private _leboatuchai = _this # 4;
private _leboatuchai1 = _this # 5;

if (isServer) then {
	if !(hasInterface) then {	
		["aoTask113", "SUCCEEDED",true] call BIS_fnc_taskSetState; 
		sleep 2;
		["aoTask113",west] call bis_fnc_deleteTask;
		"matrix_009" setMarkerPos [-35206.1,-25793.5];
		deleteVehicle _myvec4;

		{deleteVehicle _x;} forEach _leboatuchai;
		{deleteVehicle _x;} forEach _leboatuchai1;
		{deleteVehicle _x;} forEach _waterobjpush;
		{deleteVehicle _x;} forEach _wateraipsuh;
		{deleteVehicle _x;} forEach _wlesdvai;
		sleep 120;
		[] spawn NAK_fnc_t01;
	};
};

