#include "unitDefines.hpp"
disableSerialization;
private _ctrl = _this # 0;
private _index = _this # 1;
private _TheGodPhase2 = _ctrl lbText _index;
private  _prayGod =  ctrlIDC _ctrl - 70000; 
_lemonde = worldName;
missionNamespace setVariable ["pausemsys", 0, true];
switch (_lemonde) do {
    case "Altis": { lesdistcpp = 1500;};
    case "Malden": {lesdistcpp = 800; };
    case "Tanoa": { lesdistcpp = 800; };
	};
_leuavtosp = _TheGodPhase2;
_ladirect = random 360;
closeDialog 0;
_mtcoodw = missionNamespace getVariable "mtcoodw";
if (_mtcoodw == 1) exitWith { hint "Please wait 10 minutes for the system to cooldown";openMap false;};
_leodw = missionNamespace getVariable "leodw";
if (_leodw == 1) exitWith { [toUpper localize "STR_PARUAV"] spawn BIS_fnc_WLSmoothText;openMap true;;};
openMap true;
//playSound "airdroppross";
[toUpper localize "STR_PARUAV"] spawn BIS_fnc_WLSmoothText; 
addMissionEventHandler ["MapSingleClick", {_pos = _this # 1; missionNamespace setVariable ["poaitines", _pos, true];missionNamespace setVariable ["lakillerposs", 1, true];}];
missionNamespace setVariable ["leodw", 1, true];
waitUntil {sleep 3;_lakillerposs = missionNamespace getVariable "lakillerposs"; _lakillerposs == 1};
removeAllMissionEventHandlers "MapSingleClick";
sleep 2;
missionNamespace setVariable ["leodw", 0, true];

missionNamespace setVariable ["lakillerposs", 0, true];

_poaitines = missionNamespace getVariable "poaitines";

if ((_poaitines distance (getMarkerPos "respawn_west")) < lesdistcpp || (_poaitines distance (getMarkerPos "elite")) < lesdistcpp) exitWith
	{
		hint "Sorry Friendly Base Near the Location, Please try another loaction";	
		openMap false;
	};

_leerspawnuav = missionNamespace getVariable "leerspawnuav";
if (_leerspawnuav == 1) then {
	_thesaveruav = missionNamespace getVariable "thesaveruav";
	{
	 	deleteVehicle _x;
	} forEach _thesaveruav;
};
_flatPos = [0,0,0];
_accepted = false;
_list = [];
_list = _poaitines nearEntities ["Man", lesdistcpp];
if (count _list == 0) then {
	_flatPos = [0,0,0];
	_accepted = false;
	_dbtn = 0;
	_thequiter = 0;
	while {!_accepted} do {
		_position =[_poaitines, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
		_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
		_dbtn = _dbtn + 1;
		if (_dbtn == 10) exitWith {_thequiter = 1;};
		while {(count _flatPos) < 2} do {
			_position =[_poaitines, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
			_dbtn = _dbtn + 1;
			if (_dbtn == 10) exitWith {_thequiter = 1;};
			_accepted = true;
		};
	};
	if (_thequiter == 1) exitWith {hint "Error, Bad Terrain";openMap false;};
	sleep 2 ;
	switch (_leuavtosp) do {
		case "MIM-145 Defender": { 
			_flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			_flatPos2 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];
			_vecarray  = [_flatPos1, _ladirect, "B_SAM_System_03_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vecarray1  = [_flatPos2, _ladirect, "B_Radar_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v1 = _vecarray1 # 0;
			_vbkiller = [_v,_v1];
			_v setAutonomous false;
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;

			_v1 setAutonomous false;
			vehicleReportOwnPosition _v1;
			_v1 setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v1;
			_v1 setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v1;
			_v1 setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
		case "Mk21 Centurion": { 	
			_vecarray  = [_flatPos, _ladirect, "B_SAM_System_02_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
			};
		case "Mk49 Spartan": { 
			_vecarray  = [_flatPos, _ladirect, "B_SAM_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
		case "Praetorian 1C": { 	
			_vecarray  = [_flatPos, _ladirect, "B_AAA_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0; 
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
	};
	missionNamespace setVariable ["mtcoodw", 1, true];
	missionNamespace setVariable ["leerspawnuav", 1, true];
	sleep 600;
	sleep 60;
	missionNamespace setVariable ["mtcoodw", 0, true];
};

if (count _list == 0) exitWith { };

{
if (side _x == east) exitWith { hint "Sorry AO or Side Mission Near the Location, Please try another loaction"; missionNamespace setVariable ["leuavspawn", 1, true];missionNamespace setVariable ["pausemsys", 1, true];};
} forEach _list;

_pausemsys = missionNamespace getVariable "pausemsys";
if (_pausemsys == 1) exitWith { missionNamespace setVariable ["pausemsys", 0, true];openMap false; };

if (count _list != 0) then {
	_flatPos = [0,0,0];
	_accepted = false;
	_dbtn = 0;
	_thequiter = 0;
	while {!_accepted} do {
		_position =[_poaitines, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
		_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
		if (_dbtn == 10) exitWith {_thequiter = 1;};
		_dbtn = _dbtn + 1;
		while {(count _flatPos) < 2} do {
			_position =[_poaitines, 10, 300, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
			if (_dbtn == 10) exitWith {_thequiter = 1;};
			_dbtn = _dbtn + 1;
			_accepted = true;
		};
	};
	if (_thequiter == 1) exitWith {hint "Error, Bad Terrain";openMap false;};
	sleep 2 ;
		//hint format ["la pos %1",_flatPos ];
	switch (_leuavtosp) do {
		case "MIM-145 Defender": { 
			_flatPos1 = [(_flatPos select 0) - 2, (_flatPos select 1) - 2, (_flatPos select 2)];
			_flatPos2 = [(_flatPos select 0) + 20, (_flatPos select 1) + random 20, (_flatPos select 2)];
			_vecarray  = [_flatPos1, _ladirect, "B_SAM_System_03_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vecarray1  = [_flatPos2, _ladirect, "B_Radar_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v1 = _vecarray1 # 0;
			_vbkiller = [_v,_v1];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;

			vehicleReportOwnPosition _v1;
			_v1 setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v1;
			_v1 setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v1;
			_v1 setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
		case "Mk21 Centurion": { 	
			_vecarray  = [_flatPos, _ladirect, "B_SAM_System_02_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
			};
		case "Mk49 Spartan": { 
			_vecarray  = [_flatPos, _ladirect, "B_SAM_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0;
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
		case "Praetorian 1C": { 	
			_vecarray  = [_flatPos, _ladirect, "B_AAA_System_01_F", WEST] call bis_fnc_spawnvehicle;
			_v = _vecarray # 0; 
			_vbkiller = [_v];
			vehicleReportOwnPosition _v;
			_v setVehicleReportOwnPosition true;
			vehicleReportRemoteTargets _v;
			_v setVehicleReportRemoteTargets true;
			vehicleReceiveRemoteTargets _v;
			_v setVehicleReceiveRemoteTargets true;
			missionNamespace setVariable ["thesaveruav", _vbkiller, true];
			openMap false;
		};
	};
	missionNamespace setVariable ["mtcoodw", 1, true];
	missionNamespace setVariable ["leerspawnuav", 1, true];
	sleep 600;
	//sleep 30;
	missionNamespace setVariable ["mtcoodw", 0, true];
};



