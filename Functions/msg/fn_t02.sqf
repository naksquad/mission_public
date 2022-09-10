#include "unitDefines.hpp"
diag_log "aaaa side mission";

while {true} do {
_lesfps02 = floor diag_fps;
if (_lesfps02 < 38) then { waitUntil {sleep 30; _lesfps02 = floor diag_fps; _lesfps02 > 35 }; };

dblock007 = 0;
_lemonde = worldName;
lasizedumon = worldSize/2;
mapmilieCentre = [lasizedumon,lasizedumon,0];
lesvTspawnedunits = [];
objtopush = [];

if (_lemonde isEqualTo "Altis") then {laville = [[26943.9,23170.7,-18.0848],[25680.5,21365.1,-20.7333],[23908.6,20144.7,-14.0692],[23199.7,19986.6,-14.2541],[20885.4,16958.8,-49.8089],[21351.6,16361.9,-20.5678],[19339.4,17641.6,-37.4067],[16668.5,20487,-4.767],[17826.5,18129.4,-1.99341],[18753.4,16597.1,-32.1656],[19473.3,15453.7,-22.9098],[14612.5,20786.7,-47.0032],[18049.1,15264.1,-28.4237],[16207,17296.7,-24.3308],[16584.3,16104,-15.1762],[19336.9,13252.3,-37.8615],[13993,18709.4,-25.735],[14479.8,17614.3,-21.6749],[20194.6,11660.7,-45.8388],[12787,19679.3,-46.1323],[16780.6,12604.5,-18.9913],[11786.7,18372.4,-51.9314],[12950.1,15041.6,-28.1891],[20490.2,8907.12,-34.5332],[12282,15732.3,-23.0026],[10270.3,19036,-120.191],[17059.7,9992.32,-21.8159],[12502,14337,-11.5868],[21640.7,7583.93,-14.1929],[9425.42,20284,-122.26],[10410.4,17243.1,-82.7311],[11112.6,14573.7,-42.5353],[11701.1,13672.1,-12.7303],[20769.8,6736.46,-37.9427],[8625.13,18301.6,-179.297],[10966.5,13435.3,-28.4601],[9187.95,15947.8,-124.829],[10618.9,12237.3,-16.0326],[7062.42,16472.1,-116.425],[7375.81,15429.5,-54.782],[9091.81,11961.9,-19.9013],[4560.45,21460.6,-302.575],[4885.98,16171.3,-77.5036],[3948.77,17277.8,-11.6385],[3687.78,13776.1,-10.7639],[5033.31,11245.2,-48.317],[3458.95,12966.4,-6.1822],[4116.11,11736.1,-50.8535]];};
if (_lemonde isEqualTo "Malden") then {laville = [[7143.06,8968.49,-105.275],[7263.75,7931.26,-167.566],[6012.54,8627.26,-125.12],[5567.41,11187.5,-71.76],[7035.72,7108.35,-79.8],[5537.25,6983.24,-335.86],[7121.48,6074.55,-72.0779],[3584.88,8520.04,-128.958],[3068.5,6835.06,-230.21],[3115.53,6330.82,-224.34],[5546.52,4232.86,-103.828],[5835.55,3529.72,-54.95],[8192.56,3117.11,-21.789],[5404.27,2796.07,-43.8223],[3731.48,3257.96,-18.3027]];};
if (_lemonde isEqualTo "Tanoa") then {laville = [[5752.39,12325.8,-26.058],[6164.67,12864.7,0],[5808.6,11213.3,-2.6792],[5396.22,10334.7,0],[6813.05,13439.5,0],[4919.7,8728.68,-2.99988],[7829.41,13599.8,0],[8114.07,11957.2,-216.278],[6028.08,8580.17,-26.4572],[8393.35,13778.4,0],[8316.95,11132.2,-130.3],[7080.21,8004.08,-2.67],[9549.78,13673.4,0],[9014.23,10214.2,-30.0952],[7941.7,7663.32,-7.3052],[10423.8,13252.2,-20.6373],[9213.6,8741.29,-220.615],[10487.6,10613.7,-163.045],[10966.2,13183.5,-16.9658],[11417.6,12360.2,-105.833],[11069.2,9748.43,-112.357],[12401.7,12787.8,-1.56371],[8825.16,4778.34,0],[10974.5,6232.58,-11.9053],[13523,12134.8,0],[10200.8,4964.28,-16.149],[9407.35,4133.13,-6.81528],[8741.21,3556.31,0],[11122.5,5342.93,0],[14295.2,11680.3,-1.10196],[14057.4,9955.55,-98.8908],[12984.3,7321.96,0],[14040.9,8308.29,-1.57949],[14496.3,8877.4,-1.13811],[10255.9,2738.07,-9.01873],[12403.5,4569.93,-32.6168],[12861.9,4691.1,-2.63918],[11802,2662.98,0],[12715.1,3309.17,-9.54124],[13255.1,3019.73,-58.4955],[12255.2,1880.2,-121.022],[13069.4,2117.94,0]];};

private	_flatPos = [0,0,0];
private	_accepted = false;

_dpossd = selectRandom laville;
while {!_accepted} do {
	private _position =[_dpossd, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
			_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];

	while {(count _flatPos) < 2} do {
	_position =[_dpossd, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
		_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
	};

	if ((_flatPos distance (getMarkerPos "respawn_west")) > 1000 && (_flatPos distance (getMarkerPos "pilot")) > 1000) then
	{
		_accepted = true;
	};
};

lecoverter = _flatPos;
pakinou = selectRandom	["protoAob","vbeagle","vbbalisti","vbcomac","vbbehav","vbminefiel","vbbalistif"];

_leswitch = selectRandom [1,2];
switch (_leswitch) do {
    case 1: {
		if (true) then {
			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];
			autoaa01 = [_flatPos, 0, "O_SAM_System_04_F", EAST] call bis_fnc_spawnvehicle;  			
			myvec1 = autoaa01 select 0; 			
			myvec1 setCombatMode "RED"; 		
			private	_LAPOS = [(_flatPos select 0)+65,(_flatPos select 1)+50,(_flatPos select 2)]; 			
			autoaa02 = [_LAPOS, 0, "O_Radar_System_02_F", EAST] call bis_fnc_spawnvehicle;  			
			myvec2 = autoaa02 select 0; 			
			myvec2 setCombatMode "RED"; 
			objtopush pushBack myvec1;
			objtopush pushBack myvec2;

			private	_LAPOS1 = [(_flatPos select 0)+85,(_flatPos select 1)+70,(_flatPos select 2)]; 	

			while {!_accepted} do {
				private _position =[lecoverter, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
						_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];

				while {(count _flatPos) < 2} do {
				_position =[lecoverter, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
				};

				if ((_flatPos distance (getMarkerPos "respawn_west")) > 1000 && (_flatPos distance (getMarkerPos "pilot")) > 1000) then
				{
					_accepted = true;
				};
			};		

			lecavier = createVehicle ["B_Slingload_01_Medevac_F", [_flatPos select 0, _flatPos select 1, (_flatPos select 2) + 10], [], 0, "NONE"]; 
			lecavier allowDammage false;
			lecavier enableRopeAttach false;
			lecavier setVariable ["R3F_LOG_disabled", true, true]; 
			sleep 1;
			[west,["aoTask111"],[(localize "STR_SEC_SATA"),(localize "STR_SEC_SATA"),"matrix_007"],(_flatPos),0,7,true,pakinou,true] call BIS_fnc_taskCreate;	
			sleep 1;
			"matrix_007" setMarkerPos _flatPos;
			"matrix_007" setMarkerText (localize "STR_SEC_SATA");	

			{ 				
				_x setSkill ["general", 1]; 				
				_x setSkill ["aimingAccuracy", 1]; 				
				_x setSkill ["aimingShake", 1]; 				
				_x setSkill ["aimingSpeed", 1]; 				
				_x setSkill ["spotDistance", 1]; 				
				_x setSkill ["spotTime", 1]; 				
				_x setSkill ["courage", 1]; 				
				_x setSkill ["reloadSpeed", 1]; 				
				_x setSkill ["commanding", 1]; 			
			} foreach units myvec1; 			
			{ 				
				_x setSkill ["general", 1]; 				
				_x setSkill ["aimingAccuracy", 1]; 				
				_x setSkill ["aimingShake", 1]; 				
				_x setSkill ["aimingSpeed", 1]; 				
				_x setSkill ["spotDistance", 1]; 				
				_x setSkill ["spotTime", 1]; 				
				_x setSkill ["courage", 1]; 				
				_x setSkill ["reloadSpeed", 1]; 				
				_x setSkill ["commanding", 1]; 			
			} foreach units myvec2; 				
			vehicleReportOwnPosition myvec1; 		
			myvec1 setVehicleReportOwnPosition true; 		
			vehicleReportRemoteTargets myvec1; 		
			myvec1 setVehicleReportRemoteTargets true; 		
			vehicleReceiveRemoteTargets myvec1; 		
			myvec1 setVehicleReceiveRemoteTargets true;  			
			vehicleReportOwnPosition myvec2; 		
			myvec2 setVehicleReportOwnPosition true; 		
			vehicleReportRemoteTargets myvec2; 		
			myvec2 setVehicleReportRemoteTargets true; 		
			vehicleReceiveRemoteTargets myvec2; 		
			myvec2 setVehicleReceiveRemoteTargets true; 
			
		};
	};
    case 2: {
		if (true) then { 
			private    _grp1 = createGroup [east, true];
			autoaa03 = [_flatPos, 0, (selectrandom ["B_AAA_System_01_F","B_SAM_System_01_F","B_SAM_System_02_F"]), _grp1] call bis_fnc_spawnvehicle; 
			myvec3 = autoaa03 select 0;
			myvec3 setVariable ["R3F_LOG_disabled", true, true]; 	 	   
			[
				myvec3,
				["Green",1], 
				true
			] call BIS_fnc_initVehicle;

			objtopush pushBack myvec3;

			private _fuzzyPos1 = [((_flatPos select 0) - 200) + (random 300),((_flatPos select 1) - 200) + (random 300),0];
			
			while {!_accepted} do {
				private _position =[lecoverter, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
						_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];

				while {(count _flatPos) < 2} do {
				_position =[lecoverter, 0, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
					_flatPos = _position isFlatEmpty [5, 0, 0.2, 5, 0, false];
				};

				if ((_flatPos distance (getMarkerPos "respawn_west")) > 1000 && (_flatPos distance (getMarkerPos "pilot")) > 1000) then
				{
					_accepted = true;
				};
			};
			//	private _letext12 = "";
			lecavier = createVehicle ["B_Slingload_01_Medevac_F", [_flatPos select 0, _flatPos select 1, (_flatPos select 2) + 10], [], 0, "NONE"];
			lecavier allowDammage false;
			lecavier enableRopeAttach false;
			lecavier setVariable ["R3F_LOG_disabled", true, true]; 	
			sleep 1;
			[west,["aoTask111"],[(localize "STR_SEC_SATA"),(localize "STR_SEC_SATA"),"matrix_007"],(_flatPos),0,7,true,pakinou,true] call BIS_fnc_taskCreate;
			"matrix_007" setMarkerPos _flatPos;
			"matrix_007" setMarkerText (localize "STR_SEC_SATA");				
			{ 				
				_x setSkill ["general", 1]; 				
				_x setSkill ["aimingAccuracy", 1]; 				
				_x setSkill ["aimingShake", 1]; 				
				_x setSkill ["aimingSpeed", 1]; 				
				_x setSkill ["spotDistance", 1]; 				
				_x setSkill ["spotTime", 1]; 				
				_x setSkill ["courage", 1]; 				
				_x setSkill ["reloadSpeed", 1]; 				
				_x setSkill ["commanding", 1]; 			
			} foreach units myvec3; 			
		};

	};
};
	
for "_x" from SIXBUFFER to 2 do 
{	_flatPos = lecoverter;
	private  _spawnPos =[_flatPos, 10, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
	private _LEinfantryGroup1 = createGroup [resistance, true]; 
	for "_x" from 1 to 6 do {
		private	_squadPos =[_flatPos, 10, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
	_unitArray = ["O_R_recon_AR_F","O_R_Patrol_Soldier_LAT_F","O_R_Patrol_Soldier_AR2_F","O_R_Patrol_Soldier_TL_F","O_R_Patrol_Soldier_M2_F","O_R_Patrol_Soldier_Medic"];
	_unit = selectRandom _unitArray;       
	_grpMember = _LEinfantryGroup1 createUnit [_unit, _squadPos, [], 0, "FORM"];
		sleep 1;	
	};
	[_LEinfantryGroup1,_flatPos,200] call NAK_fnc_vbnetai;
	_LEinfantryGroup1 enableDynamicSimulation true;
	
	{
		lesvTspawnedunits pushBack _x;
	} foreach (units _LEinfantryGroup1);
				
};
for "_x" from SIXBUFFER to 2 do 
{	_flatPos = lecoverter;
	private  _spawnPos =[_flatPos, 10, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
	private	_LEinfantryGroup1 = createGroup [resistance, true]; 
	for "_x" from 1 to 6 do {
		private	_squadPos =[_flatPos, 10, 200, SEVENBUFFER, FIVEBUFFER, FOURBUFFER, FIVEBUFFER] call BIS_fnc_findSafePos;
	_unitArray = ["O_R_recon_AR_F","O_R_Patrol_Soldier_LAT_F","O_R_Patrol_Soldier_AR2_F","O_R_Patrol_Soldier_TL_F","O_R_Patrol_Soldier_M2_F","O_R_Patrol_Soldier_Medic"];
	_unit = selectRandom _unitArray;       
	_grpMember = _LEinfantryGroup1 createUnit [_unit, _squadPos, [], 0, "FORM"];
		sleep 1;	
	};
	[_LEinfantryGroup1, getPos lecavier] call bis_fnc_taskDefend;	
	_LEinfantryGroup1 enableDynamicSimulation true;
	
	{
		lesvTspawnedunits pushBack _x;
	} foreach (units _LEinfantryGroup1);
				
};
if (true) then {
	_flatPos = lecoverter;
	private    _grp1 = createGroup [east, true];
	contUAV = [[_flatPos select 0, (_flatPos select 1) + 30 , (_flatPos select 2)], 0, "O_UGV_02_Demining_F", _grp1] call bis_fnc_spawnvehicle; 
	contUAV00 = contUAV select 0;
	contUAV00 setVariable ["R3F_LOG_disabled", true, true];
	[_grp1,_flatPos,200] call NAK_fnc_vbnetai;
	objtopush pushBack contUAV00;
};
if (true) then {
	_flatPos = lecoverter;
	private    _grp1 = createGroup [east, true];
	contUGV = [[_flatPos select 0, (_flatPos select 1) + 60, (_flatPos select 2)], 0, "O_UGV_01_rcws_F", _grp1] call bis_fnc_spawnvehicle; 
	contUGV00 = contUGV select 0;
	contUGV00 setVariable ["R3F_LOG_disabled", true, true];
	[_grp1,_flatPos,200] call NAK_fnc_vbnetai;
	objtopush pushBack contUGV00;
};
if (true) then {
	_flatPos = lecoverter;
	private _grp1 = createGroup [resistance, true];
	Alesdv = [[_flatPos select 0, _flatPos select 1, (_flatPos select 2) + 1000], 0, (selectRandom ["O_UAV_02_dynamicLoadout_F","O_T_UAV_04_CAS_F"]), _grp1] call bis_fnc_spawnvehicle; 
	Alesdvai007 = Alesdv select 0;	
	[_grp1,_flatPos,200] call NAK_fnc_vbnetai;
	objtopush pushBack Alesdvai007;
};

[
	lecavier,                                                                           // Object the action is attached to
	(localize "STR_SEC_SATA"),                                                                       // Title of the action
	"Media\images\taker_ca.paa",                      // Idle icon shown on screen
	"Media\images\leskull_ca.paa",                      // Progress icon shown on screen
	"player distance _target < 10",                                                        // Condition for the action to be shown
	"player distance _target < 10",                                                      // Condition for the action to progress
	{},                                                                                  // Code executed when action starts
	{},                                                                                  // Code executed on every progress tick
	{ _this spawn ROSE_fnc_setentene},                                  // Code executed on completion
	{},                                                                                  // Code executed on interrupted
	[],                                                                                  // Arguments passed to the scripts as _this select 3
	7,                                                                                  // Action duration [s]
	0,                                                                                   // Priority
	true,                                                                                // Remove on completion
	false                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,lecavier];
[] call NAK_fnc_vbnet;


waitUntil {missionNamespace getVariable "foxy1" == 1;};

[lecoverter] remoteExecCall ["NAK_fnc_vbnet17", -2, false];

["aoTask111", "SUCCEEDED",true] call BIS_fnc_taskSetState; 


["aoTask111",west] call bis_fnc_deleteTask;
"matrix_007" setMarkerPos [-35206.1,-25793.5];

deleteVehicle lecavier;
{deleteVehicle _x;} forEach lesvTspawnedunits;
{deleteVehicle _x;} forEach objtopush;
missionNamespace setVariable ["foxy1", 0, true];
sleep 1200;
};