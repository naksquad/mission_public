#include "unitDefines.hpp"
diag_log "water side mission";

_lesfps01 = floor diag_fps;
if (_lesfps01 < 38) then { waitUntil {sleep 30; _lesfps01 = floor diag_fps; _lesfps01 > 35 }; };
wateraipsuh = [];
waterobjpush = [];

private _lalocation = selectRandom ["crimewatch1","crimewatch2","crimewatch3","crimewatch4","crimewatch5","crimewatch6","crimewatch7","crimewatch8","crimewatch9","crimewatch10"];
if (_lalocation isEqualTo "crimewatch1" ) then {lescordinW = [3227.01,11139.6,0];latrudir = 0; lescordinW1 = [3224.6,11138.9,2.47955e-005];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch2" ) then {lescordinW = [17004.5,13841.3,0];latrudir = 0; lescordinW1 = [17006.9,13844.6,0.284539];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch3" ) then {lescordinW = [21620,12748.5,0.276006];latrudir = 0; lescordinW1 = [21613.3,12740.8,-4.14848e-005];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch4" ) then {lescordinW = [20613.4,19657.9,0];latrudir = 0; lescordinW1 = [20616.4,19649.2,6.4373e-005];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch5" ) then {lescordinW = [9661.57,22453.8,0.40276];latrudir = 0; lescordinW1 = [9667.11,22447.7,-0.000246048];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch6" ) then {lescordinW = [9873.68,10010.7,4.76837e-007];latrudir = 0; lescordinW1 = [9862.64,10000.4,0];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch7" ) then {lescordinW = [11999.5,13501.2,5.53131e-005];latrudir = 0; lescordinW1 = [11989.1,13497.3,9.53674e-007];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch8" ) then {lescordinW = [16380.4,9201.6,0];latrudir = 0; lescordinW1 = [16367,9194.22,0];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch9" ) then {lescordinW = [2645.78,21986.4,0];latrudir = 0; lescordinW1 = [2656.68,21973.9,0];latrudir1 = 0;};
if (_lalocation isEqualTo "crimewatch10" ) then {lescordinW = [24555.1,18223.1,0];latrudir = 0; lescordinW1 = [24567.8,18218.3,0];latrudir1 = 0;};


private _whereto = getMarkerPos _lalocation;
	myvec4 = (selectRandom ["Land_HistoricalPlaneWreck_03_F","Land_HistoricalPlaneWreck_01_F"]) createVehicle lescordinW;
	myvec4 allowDamage false;
	myvec4 setDir latrudir;
	waterobjpush pushBack myvec4;

	_lmyvec4 = "B_Slingload_01_Fuel_F" createVehicle [lescordinW1 select 0, lescordinW1 select 1, (lescordinW1 select 2) + 10];
	_lmyvec4 allowDamage false;
	waterobjpush pushBack _lmyvec4;
	_lmyvec4 setDir latrudir1;

_lmyvec4 setVariable ["R3F_LOG_disabled", true, true]; 

///sdv ///
if (true) then {
	private _grp1 = createGroup [resistance, true];
	lesdv = createVehicle ["O_SDV_01_F", lescordinW,[],0,"NONE"];
	lesdvai = [lesdv,_grp1] call BIS_fnc_spawnCrew;	
	[_grp1, getPos _lmyvec4] call bis_fnc_taskDefend;	
	waterobjpush pushBack lesdv;
};

for "_x" from SIXBUFFER to 3 do 
{
	private  _spawnPos =[lescordinW, 0, 30, SEVENBUFFER, 2, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
	LEinfantryGroup3 = createGroup [resistance, true]; 
	for "_x" from 1 to 6 do {
		private	_squadPos =[lescordinW, 0, 30, SEVENBUFFER, 2, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
		private _unit = selectRandom ["O_diver_F"];
		_grpMember = LEinfantryGroup3 createUnit [_unit, _squadPos, [], 0, "FORM"];
		_grpMember disableAI "PATH";
		sleep 1;	
	};
	[LEinfantryGroup3, getPos _lmyvec4] call bis_fnc_taskDefend;
	LEinfantryGroup3 enableDynamicSimulation true;
	{
		wateraipsuh pushBack _x;
	} foreach (units LEinfantryGroup3);
};


///boat ///
if (true) then {
	private _grp1 = createGroup [resistance, true];
	leboatuch = createVehicle ["O_Boat_Armed_01_hmg_F", lescordinW,[],0,"NONE"];
	leboatuchai = [leboatuch,_grp1] call BIS_fnc_spawnCrew;	
	[_grp1, getPos _lmyvec4] call bis_fnc_taskDefend;	
	waterobjpush pushBack leboatuch;
};


///boat007 ///
if (true) then {
	private _grp1 = createGroup [resistance, true];
	leboatuch1 = createVehicle ["I_Boat_Transport_01_F", lescordinW,[],0,"NONE"];
	leboatuchai1 = [leboatuch1,_grp1] call BIS_fnc_spawnCrew;	
	[_grp1, getPos _lmyvec4] call bis_fnc_taskDefend;	
	waterobjpush pushBack leboatuch1;
};




private _fuzzyPos1 = [((lescordinW select 0) + 30),((lescordinW select 1) + 30),0];


[west,["aoTask113"],[(localize "STR_WATER_CP"),(localize "STR_WATER_CP"),"matrix_009"],(_whereto),0,7,true,"boat",true] call BIS_fnc_taskCreate;
myvec4 allowDamage true;
_lmyvec4 allowDamage true;
"matrix_009" setMarkerPos _whereto;
"matrix_009" setMarkerText (localize "STR_WATER_CP");
private _tasktogo = "aoTask113";

[
_lmyvec4,                                                                           // Object the action is attached to
(localize "STR_WATER_CP"),                                                                       // Title of the action
"Media\images\taker_ca.paa",                      // Idle icon shown on screen
"Media\images\leskull_ca.paa",                      // Progress icon shown on screen
"player distance _target < 6",                                                        // Condition for the action to be shown
"player distance _target < 6",                                                      // Condition for the action to progress
{},                                                                                  // Code executed when action starts
{},                                                                                  // Code executed on every progress tick
{ _this spawn ROSE_fnc_getlecash},                                  // Code executed on completion
{},                                                                                  // Code executed on interrupted
[waterobjpush,wateraipsuh,lescordinW,lesdvai,leboatuchai,leboatuchai1],                                                                                  // Arguments passed to the scripts as _this select 3
7,                                                                                  // Action duration [s]
0,                                                                                   // Priority
true,                                                                                // Remove on completion
false                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,_lmyvec4]; 

[] call NAK_fnc_vbnet;