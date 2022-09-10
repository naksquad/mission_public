#include "unitDefines.hpp"
_player = _this # 0;
_dataplayrowner = _this # 1;
uidd = _this # 2;
_jeova = ["uav1"];
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	if !(str _player in _jeova) then {
		_player addEventHandler ["FiredMan", {
			params ["_unit", "_weapon", "", "", "", "", "_projectile",""];
			_lemonde = worldName;
			switch (_lemonde) do {
				case "Altis": {	
								private _deleteprojectile = false;
								{  
									_distance = _unit distance2D (getMarkerPos _x);
									if (_distance < 300) then {
										_deleteprojectile = true;
									};
								} forEach LESMARKERA;
								if (!_deleteprojectile) exitWith {};
								if ( _weapon == "CMFlareLauncher") exitWith {};
								deleteVehicle _projectile;
								hintC ZNATION; 
							};
				case "Malden": {	private _deleteprojectile = false;
								{  
									_distance = _unit distance2D (getMarkerPos _x);
									if (_distance < 300) then {_deleteprojectile = true;};
								} forEach LESMARKERM;
								if (!_deleteprojectile) exitWith {};
								if ( _weapon == "CMFlareLauncher" ) exitWith {};
								deleteVehicle _projectile;
								hintC ZNATION; 
							};
				case "Tanoa": {	private _deleteprojectile = false;
								{  
									_distance = _unit distance2D (getMarkerPos _x);
									if (_distance < 300) then {_deleteprojectile = true;};
								} forEach LESMARKERAT;
								if (!_deleteprojectile) exitWith {};
								if ( _weapon == "CMFlareLauncher" ) exitWith {};
								deleteVehicle _projectile;
								hintC ZNATION; 
							};
			};
		}];

	};
};

if (!(uidd in (missionNameSpace getVariable "lesigneur"))) then {
	if (!(str player in LESPILOTES)) then {
		inGameUISetEventHandler ["Action", "if (_this # 3 == 'GetInPilot') then {hint 'You must be in a pilot role and on TeamSpeak to fly this aircraft.'; true}"];
	};
};
																		

[] spawn ROSE_fnc_icons;
[] spawn ROSE_fnc_lilkiller;
[] spawn ROSE_fnc_sauter;
[] spawn ROSE_fnc_Yogurt;
[] spawn ROSE_fnc_GF_Holster;
[_player] spawn ROSE_fnc_jager;

_player addEventHandler [ "AnimStateChanged", {
	params ["_unit", ""];
	Number07 = damage _unit; 
	if ( (lifeState _unit) == "INCAPACITATED" ) then  { 
		if ((missionNamespace getVariable "checkrevive") isEqualTo 0) then {
			_dataplayrowner = clientOwner;
			missionNamespace setVariable ["checkrevive", 1, _dataplayrowner];
			if (Number07 >= 0.95) then {removeAllActions _unit; 
				if( vehicle _unit != _unit) then { unassignVehicle _unit; _unit action ["eject", vehicle _unit];};
				[_unit,_dataplayrowner] spawn ROSE_fnc_laides;
			}else
			{
				if( vehicle _unit != _unit) then { unassignVehicle _unit; _unit action ["eject", vehicle _unit];};
				[_unit,_dataplayrowner] spawn ROSE_fnc_laides;};
			};
		};
}];

_player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	missionNamespace setVariable ["lesnondesjouer", 0]; 
	[] spawn ROSE_fnc_lecrew;
	if (_vehicle isKindOf "Air") then {
		diag_log "callind GetInMan 000";
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","O_Plane_Fighter_02_F","B_Plane_CAS_01_dynamicLoadout_F","I_Plane_Fighter_03_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F"]) then {
			diag_log "callind GetInMan 1";	
			missionNamespace setVariable ["getinpos", (getpos _vehicle)]; 
			diag_log format [" _ledriver %1", (getpos _vehicle)];	
		};
	};
}];

_player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	diag_log "callind GetoutMan 000";
	missionNamespace setVariable ["lesnondesjouer", 1]; 
	if (_vehicle isKindOf "Air") then {
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","O_Plane_Fighter_02_F","B_Plane_CAS_01_dynamicLoadout_F","I_Plane_Fighter_03_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F"]) then {
			diag_log "callind GetOutMan in";
			private _getinpos = missionNameSpace getVariable "getinpos";
			private _getoutpos = getpos _vehicle;
			private _crewUID = getPlayerUID _unit;
			private _list = fullCrew [_vehicle, "driver"];
			diag_log format [" list %1, _crewUID %2, _getoutpos %3, _getinpos %4", _list, _crewUID, _getoutpos,_getinpos];
			if ((_getinpos distance _getoutpos)  > 1000) then {
				diag_log "callind GetOutMan less 1000";
				if !(_role isEqualTo "driver") then {
				[_crewUID] remoteExecCall ["NAK_fnc_vbnet20", -2, false];
				};
				if (count _list >= 0) then {
					private _ledriver = _list select 0;
					private _ledriveruid = getPlayerUID (_ledriver select 0);
					diag_log format [" _ledriver %1 , _ledriveruid %2", _ledriver, _ledriveruid];
					if (alive _unit) then {
						[_ledriveruid] remoteExecCall ["NAK_fnc_vbnet21", -2, false];
					};
				};
			};
		};
	};
}];


_player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	missionNamespace setVariable ["lesnondesjouer", 1]; 
	deleteVehicle _corpse;
}];

/*
_player addEventHandler ["HandleDamage", {;
  _unit = _this select 0;
  _selection = _this select 1;
  _damage = _this select 2;

  if (_selection == "?") exitWith {};

  _curDamage = damage _unit;
  if (_selection != "") then {_curDamage = _unit getHit _selection};
  _newDamage = _damage - _curDamage;

  _damage - _newDamage * 0.75
}];
*/