private _myvec4 = _this # 0;
private _theunitca = _this # 1;
private _waterobjpush = _this select 3 select 0;
private _wateraipsuh = _this select 3 select 1;
private _lescordinW = _this select 3 select 2;
private _wlesdvai = _this select 3 select 3;
private _leboatuchai = _this select 3 select 4;
private _leboatuchai1 = _this select 3 select 5;




private _uidr = getPlayerUID _theunitca;


[_lescordinW] remoteExecCall ["NAK_fnc_vbnet17", -2, false];

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet19", 0, false]; 

[_myvec4,_waterobjpush,_wateraipsuh,_wlesdvai,_leboatuchai,_leboatuchai1] remoteExec ["ROSE_fnc_getMoney",0,false];


["aoTask113", "SUCCEEDED",true] call BIS_fnc_taskSetState; 

["aoTask113",west] call bis_fnc_deleteTask;
"matrix_009" setMarkerPos [-35206.1,-25793.5];
deleteVehicle _myvec4;

{deleteVehicle _x;} forEach _leboatuchai;
{deleteVehicle _x;} forEach _leboatuchai1;
{deleteVehicle _x;} forEach _waterobjpush;
{deleteVehicle _x;} forEach _wateraipsuh;
{deleteVehicle _x;} forEach _wlesdvai;


