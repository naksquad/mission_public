
//hank 6 missin
private ["_hour","_now","_u","_t"];

_u = _this # 0;
_t = typeOf _u;
_lemonde = worldName;

if (isNull _u) exitWith {};
sleep 5;

_u enableRopeAttach false;

//============================================= ARRAYS
_pilots = ["B_Pilot_F","B_Helipilot_F"];
_uav = ["B_T_UGV_01_rcws_olive_F","B_T_UGV_01_olive_F","B_UAV_02_CAS_F","B_UAV_02_F","B_UGV_01_F","B_UGV_01_rcws_F","B_UAV_05_F","B_UAV_02_dynamicLoadout_F","B_T_UAV_03_dynamicLoadout_F","B_AAA_System_01_F"];			// UAVs
_ghosthawk = ["B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_tropic_F"];
_blackVehicles = ["B_Heli_Light_01_dynamicLoadout_F"];
_wasp = ["B_Heli_Light_01_F","B_Heli_Light_01_dynamicLoadout_F"];
_orca = ["O_Heli_Light_02_unarmed_F"];
_wings = ["B_Plane_Fighter_01_Stealth_F","B_Plane_Fighter_01_F"];
_badbad2 = ["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F"];
_badbad10 = ["O_Plane_Fighter_02_Stealth_F","O_Plane_Fighter_02_F"];
_lifter = ["O_Heli_Transport_04_F"];
_vtol_nato = ["O_T_VTOL_02_infantry_dynamicLoadout_F"];
_viet_nato = ["I_Heli_light_03_dynamicLoadout_F"];
_ocra_nato = ["O_Heli_Light_02_dynamicLoadout_F"];
_censor = ["I_LT_01_AA_F","I_LT_01_AT_F","I_LT_01_cannon_F","I_LT_01_scout_F","O_MBT_04_cannon_F","O_MBT_04_command_F","O_T_VTOL_02_infantry_dynamicLoadout_F","B_T_VTOL_01_armed_F","I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","I_Heli_Transport_02_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Attack_01_dynamicLoadout_F","B_T_VTOL_01_vehicle_F","B_APC_Tracked_01_CRV_F","B_UAV_05_F","B_APC_Tracked_01_CRV_F","B_T_UAV_03_dynamicLoadout_F","B_UGV_01_rcws_F","O_Plane_CAS_02_dynamicLoadout_F","B_Truck_01_mover_F","B_Plane_CAS_01_dynamicLoadout_F","O_Plane_Fighter_02_F","B_UAV_02_dynamicLoadout_F","B_Boat_Transport_01_F","B_Boat_Armed_01_minigun_F","B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F","B_Boat_Armed_01_minigun_F","B_Boat_Armed_01_minigun_F","B_Heli_Transport_03_unarmed_F","B_Heli_Light_01_dynamicLoadout_F","B_Truck_01_mover_F","B_APC_Tracked_01_CRV_F","B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Light_01_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","B_Truck_01_mover_F","B_Boat_Armed_01_minigun_F","B_medic_F","B_Boat_Transport_01_F","B_Boat_Armed_01_minigun_F","B_APC_Tracked_01_CRV_F","B_CTRG_LSV_01_light_F","B_G_Offroad_01_armed_F","B_LSV_01_armed_F","B_Truck_01_fuel_F","B_Truck_01_ammo_F","B_MRAP_01_hmg_F","B_MRAP_01_hmg_F","B_MRAP_01_F","B_Truck_01_transport_F","I_MRAP_03_gmg_F","B_LSV_01_unarmed_F","I_MRAP_03_hmg_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_TUSK_F","B_APC_Wheeled_01_cannon_F"];
_censors = ["B_Heli_Transport_03_unarmed_F","B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_tropic_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Light_01_dynamicLoadout_F","B_Heli_Light_01_F","B_Plane_Fighter_01_Stealth_F","B_Plane_Fighter_01_F","B_T_VTOL_01_armed_F","O_T_VTOL_02_infantry_dynamicLoadout_F","I_Heli_light_03_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","I_Heli_Transport_02_F","B_CTRG_Heli_Transport_01_tropic_F","B_T_VTOL_01_infantry_F","O_Plane_CAS_02_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F","O_Plane_Fighter_02_F"];
_PYjet = ["B_Plane_CAS_01_dynamicLoadout_F"];
_PYjet1 = ["B_Plane_Fighter_01_F"];
_PYjet2 = ["B_Plane_Fighter_01_Stealth_F"];
_PYjet3 = ["O_Plane_Fighter_02_F"];
_PYjet4 = ["O_Plane_CAS_02_dynamicLoadout_F"];
_PYjeth = ["B_Heli_Light_01_dynamicLoadout_F"];
_PYjeth1 = ["B_Heli_Attack_01_dynamicLoadout_F"];
_PYjeth3 = ["I_Heli_light_03_dynamicLoadout_F"];
_PYjeth4 = ["O_T_VTOL_02_vehicle_dynamicLoadout_F"];
_PYjeth5 = ["B_UAV_02_dynamicLoadout_F"];
_PYjeth6 = ["B_UAV_05_F"];
_PYjeth7 = ["B_T_UAV_03_dynamicLoadout_F"];
_PYjeth8 = ["O_T_VTOL_02_infantry_dynamicLoadout_F"];
_PYjeth9 = ["B_APC_Tracked_01_CRV_F","B_Truck_01_mover_F","Land_Pod_Heli_Transport_04_bench_F","Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_ammo_F"];
_PYjeth10 = ["O_MBT_04_cannon_F","O_MBT_04_command_F"];
_PYjeth11 = ["I_LT_01_AA_F","I_LT_01_AT_F","I_LT_01_cannon_F","I_LT_01_scout_F"];
_PYjeth12 = ["B_UGV_01_F","B_T_UGV_01_olive_F"];
_tanknat06 = ["B_APC_Tracked_01_CRV_F"];
_lastchoper = ["O_Heli_Attack_02_dynamicLoadout_F"];
_lelast = ["I_Plane_Fighter_03_dynamicLoadout_F"];
_tarup1 = ["Land_Pod_Heli_Transport_04_box_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Pod_Heli_Transport_04_repair_F","Land_Pod_Heli_Transport_04_medevac_F","Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_bench_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_covered_F"];
_tarup2 = ["Land_Pod_Heli_Transport_04_ammo_F"];
_uavfixer = ["B_Radar_System_01_F","B_SAM_System_03_F"];
_cbrelamoto = ["B_Boat_Armed_01_minigun_F"];
_lastkkil = ["B_Truck_01_mover_F"];
_gorda = ["I_Plane_Fighter_04_F"];
_skinexcep = ["B_Truck_01_mover_F","B_APC_Tracked_01_CRV_F","B_T_UAV_03_dynamicLoadout_F","B_UAV_05_F","B_UAV_02_dynamicLoadout_F","B_UGV_01_rcws_F","B_UGV_01_F"];
_skynet = ["B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F"];
_ceasrbt = ["C_Plane_Civil_01_racing_F","C_Plane_Civil_01_F","I_C_Plane_Civil_01_F","I_Heli_Transport_02_F"];
_lestarub = ["O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F","O_Heli_Transport_04_covered_F"];
//_donotdoit = ["B_APC_Tracked_01_AA_F","B_Radar_System_01_F","B_SAM_System_03_F","B_UAV_05_F","B_T_UAV_03_dynamicLoadout_F","B_UAV_02_dynamicLoadout_F","B_UGV_01_rcws_F","Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_ammo_F","Land_Pod_Heli_Transport_04_bench_F"];
_lechinok = ["O_Heli_Attack_02_dynamicLoadout_F","B_Heli_Transport_01_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","B_Heli_Transport_03_unarmed_F","B_Heli_Transport_03_F","I_Heli_Transport_02_F","C_IDAP_Heli_Transport_02_F"];
_lightUp = ["B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_medevac_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","I_Heli_Transport_02_F","C_IDAP_Heli_Transport_02_F","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","O_Heli_Light_02_dynamicLoadout_F","B_Heli_Transport_01_F","I_Heli_light_03_dynamicLoadout_F","I_Heli_light_03_base_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
_uavskinner1 = ["B_T_UAV_03_dynamicLoadout_F"];
_uavskinner2 = ["B_UAV_05_F"];
_uavskinner3 = ["B_UAV_02_dynamicLoadout_F"];
_uavskinner4 = ["B_UGV_01_rcws_F"];
_uavskinner5 = ["B_UGV_01_F"];

if(_t in _uavskinner4) then 
{	
	rcpleasework10 = _this # 0;
	publicVariable "rcpleasework10";
	[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner4;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _uavskinner5) then 
{	
	rcpleasework11 = _this # 0;
	publicVariable "rcpleasework11";
	[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner5;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if (_t in _lastkkil) then {
	_u setObjectTextureGlobal [0, "Media\StaticVehicles\truck_01_ext_01_co_YELLOW.paa"];  
	_u setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.243,0.215,0.054,1)"]; 
};

if (_t in _lechinok) then {
	[( _this select 0),{_this addAction ["<t color='#f8f8ff'>Open Doors</t>", {_this call NAK_fnc_ghostDoorO;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2];
};

_now = date;
_hour = _now select 3;

if (_hour > 19) then  {
	if (_t in _lightUp) then {
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	};
};

if (_hour < 5) then  {
	if (_t in _lightUp) then {
		[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Turn Interior Light ON</t>", {_this call NAK_fnc_lightUp;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	};
};


if (_t in _ceasrbt) then {
	[_u, ["M134_minigun", [-1]]] remoteExecCall  ["addWeaponTurret", 0, true];
	[_u, ["5000Rnd_762x51_Yellow_Belt", [-1]]] remoteExecCall  ["addMagazineTurret", 0, true];
	[_u, ["5000Rnd_762x51_Yellow_Belt", [-1]]] remoteExecCall  ["addMagazineTurret", 0, true];

	[_u, ["CMFlareLauncher", [-1]]] remoteExecCall  ["addWeaponTurret", 0, true];
	[_u, ["120Rnd_CMFlare_Chaff_Magazine", [-1]]] remoteExecCall  ["addMagazineTurret", 0, true];
	[_u, ["CMFlareLauncher", [0]]] remoteExecCall  ["addWeaponTurret", 0, true];
	[_u, ["120Rnd_CMFlare_Chaff_Magazine", [0]]] remoteExecCall  ["addMagazineTurret", 0, true];
};


if (_t in _PYjeth12) then {
	switch (_lemonde) do {
    case "Altis": { 
					[_u, ["<t color='#47842c'>Mobile Arsenal</t>", "VA.sqf"]] remoteExec ["addAction", -2, true];
					if !(isNil "paapicoo") then { deleteVehicle paapicoo;};
					paapicoo = "Box_NATO_Equip_F" createVehicle [14839.7,16260.3,0];
					paapicoo setVariable ["R3F_LOG_disabled", true, true]; 	 	 
					paapicoo attachTo [_u, [0.4, -1.6, -0.3] ]; paapicoo setDir 88;
			   	};
    case "Malden": { 
					[_u, ["<t color='#47842c'>Mobile Arsenal</t>", "VA.sqf"]] remoteExec ["addAction", -2, true];
					if !(isNil "paapicoo") then { deleteVehicle paapicoo;};
					paapicoo = "Box_NATO_Equip_F" createVehicle [7205.02,10445.7,0];
					paapicoo setVariable ["R3F_LOG_disabled", true, true]; 	 	 
					paapicoo attachTo [_u, [0.4, -1.6, -0.3] ]; paapicoo setDir 88;
		};
    case "Tanoa": { 	[_u, ["<t color='#47842c'>Mobile Arsenal</t>", "VA.sqf"]] remoteExec ["addAction", -2, true];
					if !(isNil "paapicoo") then { deleteVehicle paapicoo;};
					paapicoo = "Box_NATO_Equip_F" createVehicle [6861.01,7483.07,0];
					paapicoo setVariable ["R3F_LOG_disabled", true, true]; 	 	 
					paapicoo attachTo [_u, [0.4, -1.6, -0.3] ]; paapicoo setDir 88;	};
	};
};


//============================================= SORT




if (_t in _wings) then {
	_u animate ["wing_fold_l", 1, true];

	_u animate ["wing_fold_r", 1, true];
};
/*
if(_t in _uav) then {
	{deleteVehicle _x;} count (crew _u);
	[_u] spawn {
		_u = _this # 0;
		sleep 2;
		createVehicleCrew _u;
	};
};*/

if(_t in _PYjeth10) then {[_u, ["Grey",1],["showCamonetHull",0,"showCamonetTurret",0]] call BIS_fnc_initVehicle;};
if(_t in _PYjeth11) then {[_u, ["Indep_Olive",1],["showTools",0,"showCamonetHull",0,"showBags",0,"showSLATHull",0]] call BIS_fnc_initVehicle;};
if(_t in _badbad2) then {[_u, ["Blufor",1], true] call bis_fnc_initVehicle;};
if(_t in _badbad10) then {[_u, ["CamoGreyHex",1], true] call bis_fnc_initVehicle;};
if(_t in _vtol_nato) then {[_u, ["Grey",1], true] call bis_fnc_initVehicle;};
if(_t in _lifter) then {[_u, ["Black",1],["AddCargoHook_COver",0], true] call bis_fnc_initVehicle;};
if(_t in _viet_nato) then {[_u, ["Green",1],["GunL_Revolving",0.333333,"GunR_Revolving",0.333333], true] call bis_fnc_initVehicle;};

if(_t in _tarup1) then {[_u, ["Black",1], true] call bis_fnc_initVehicle;};
if(_t in _tarup2) then {[_u, ["Black",1], true] call bis_fnc_initVehicle;[_u, ["<t color='#24872c'>Mobile Asenal</t>", "VA.sqf"]] remoteExec ["addAction", -2, true];};

if ((_t isKindOf "Tank") || (_t isKindOf "Air") || (_t isKindOf "Ship") ||  (_t isKindOf "Car") || (_t isKindOf "Helicopter") ) then {
	if !(_t in _skinexcep) then {
		[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
		[( _this select 0),{_this addAction ["<img image='\A3\ui_f\data\igui\cfg\cursors\iconRepairVehicle_ca.paa' /><t color='#f8f8ff'>Repair/Analyze Vehicle</t>", {_this call ROSE_fnc_lecaller;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
		[( _this select 0),{_this addAction ["<img image='\a3\Modules_f\data\portraitRespawn_ca.paa' /><t color='#f8f8ff'>Unflip Vehicle</t>", {_this call ROSE_fnc_flipflap;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
		[( _this select 0),{_this addAction ["<img image='\A3\ui_f\data\igui\cfg\cursors\watch_ca.paa' /><t color='#f8f8ff'>Push Vehicle</t>", {_this call ROSE_fnc_pousserle;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
		vehicleReportOwnPosition _u;
		_u setVehicleReportOwnPosition true;
		vehicleReportRemoteTargets _u;
		_u setVehicleReportRemoteTargets true;
		vehicleReceiveRemoteTargets _u;
		_u setVehicleReceiveRemoteTargets true;
	};
};


if(_t in _ocra_nato) then {[_u, ["Black",1],["AddCargoHook_COver",0]] call bis_fnc_initVehicle;
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutsarah'",[1],0,false,true,"", "driver _target == _this",5]} ] remoteExec ["call", -2, true];
};


if ((_t isKindOf "Air") || (_t isKindOf "Helicopter") ) then {
	if !(_t in ["B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","O_Plane_Fighter_02_F","B_Plane_CAS_01_dynamicLoadout_F","I_Plane_Fighter_03_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F"]) then { 
		[( _this select 0),{_this addAction ["<t color='#FF9900'>ParaDrop</t>", {_this call ATM_fnc_paradropage;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2, true];
	};

};

if (_t isKindOf "Helicopter") then {
	if !(_t in _lestarub) then {
		[( _this select 0),{_this addAction ["<t color='#120694'>Ammo Drop</t>", {_this call NAK_fnc_drop;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2, true];
	};
};

if (_t in _censors) then {
		if (isCopilotEnabled _u) then {
   			 _u enableCopilot false;
};
};

if(_t in _lelast) then 
{	
  	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadout007'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _gorda) then 
{	
  	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadout008'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};
///PYTHON

if(_t in _PYjet) then 
{	
  	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadout'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjet1) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutvileace'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjet2) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutvileace2'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutfoxy'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjet3) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutjetlee'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjet4) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadouts'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth1) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutclaws'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
	//[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutclaws'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];

};

if(_t in _PYjeth3) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_loadoutallen'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
};


if(_t in _PYjeth5) then 
{	
	pleasework10 = _this # 0;
	publicVariable "pleasework10";
	[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner1;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	//[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_mondieujetaime'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'dynamic_mondieujetaime'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth6) then 
{	
	pleasework11 = _this # 0;
	publicVariable "pleasework11";
	[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner2;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	//[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieubenimesnakplayer'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieubenimesnakplayer'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth7) then 
{	
	pleasework12 = _this # 0;
	publicVariable "pleasework12";
	[( _this select 0),{_this addAction ["<t color='#47842c'>Vehicle Skin Menu</t>", {_this call ATM_fnc_leskiner3;},[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	//[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieulepremieretdernier'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieulepremieretdernier'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
};
if(_t in _PYjeth8) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieujetensuplin'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth4) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'mondieujetensuplin007'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
};

if(_t in _PYjeth9) then 
{	
	_u setVariable ['QS_ST_drawEmptyVehicle',TRUE,TRUE];
};
///natotank4\5 wont work cuz marker
if(_t in _tanknat06) then 
{	
	_u setObjectTextureGlobal [0, "Media\StaticVehicles\apc_tracked_01_body_crv_co_YELLOW.paa"];
	_u setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.243,0.215,0.054,1)"]; 
	_u setObjectTextureGlobal [2, "#(rgb,8,8,3)color(0.243,0.215,0.054,1)"]; 
	_u setObjectTextureGlobal [3, "#(rgb,8,8,3)color(0.243,0.215,0.054,1)"];
};

if(_t in _lastchoper) then 
{	
	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'lasenemychop'",[1],0,false,true,"", "gunner _target == _this"]} ] remoteExec ["call", -2, true];
//	[( _this select 0),{_this addAction ["<t color='#af1611'>Dynamic loadout</t>", "createDialog 'lasenemychop'",[1],0,false,true,"", "driver _target == _this"]} ] remoteExec ["call", -2, true];
	[_u, ["Black",1], true] call bis_fnc_initVehicle;
	[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Open Doors</t>", {_this call NAK_fnc_ghostDoorO;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2, true];
	[( _this select 0),{_this addAction ["<t color='#FE2E2E'>Close Doors</t>", {_this call NAK_fnc_ghostDoorC;},[1],0,false,true,"", "vehicle player != player"]} ] remoteExec ["call", -2, true];
};
//};


