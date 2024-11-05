#include "unitDefines.hpp"
private _player = _this # 0;
private _dataplayrowner = _this # 1;
uidd = _this # 2;
private _jeova = ["uav1"];
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	if !(str _player in _jeova) then {
		_player addEventHandler ["FiredMan", {
			params ["_unit", "_weapon", "", "", "", "", "_projectile", ""];
			private _deleteprojectile = false;
			{
				private _distance = _unit distance2D (getMarkerPos _x);
				if (_distance < 300) then {
					_deleteprojectile = true;
				};
			} forEach LESMARKERA;
			if (!_deleteprojectile) exitWith {};
			if (_weapon == "CMFlareLauncher") exitWith {};
			deleteVehicle _projectile;
			hintC ZNATION;
		}];
	};
};

if (!(uidd in (missionNameSpace getVariable "lesigneur"))) then {
	if (!(str player in LESPILOTES)) then {
		inGameUISetEventHandler ["Action", "if (_this # 3 == 'GetInPilot') then {
			hint 'You must be in a pilot role and on TeamSpeak to fly this aircraft.';
			true
		}"];
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
	if ((lifeState _unit) == "INCAPACITATED") then {
		if ((missionNamespace getVariable "checkrevive") isEqualTo 0) then {
			_dataplayrowner = clientOwner;
			missionNamespace setVariable ["checkrevive", 1, _dataplayrowner];
			if (Number07 >= 0.95) then {
				removeAllActions _unit;
				if (vehicle _unit != _unit) then {
					unassignVehicle _unit;
					_unit action ["eject", vehicle _unit];
				};
				[_unit, _dataplayrowner] spawn ROSE_fnc_laides;
			} else {
				if (vehicle _unit != _unit) then {
					unassignVehicle _unit;
					_unit action ["eject", vehicle _unit];
				};
				[_unit, _dataplayrowner] spawn ROSE_fnc_laides;
			};
		};
	};
}];

_player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	missionNamespace setVariable ["lesnondesjouer", 0];
	[] spawn ROSE_fnc_lecrew;
	if (_vehicle isKindOf "Air") then {
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F", "O_Plane_Fighter_02_F", "B_Plane_CAS_01_dynamicLoadout_F", "I_Plane_Fighter_03_dynamicLoadout_F", "O_Plane_CAS_02_dynamicLoadout_F"]) then {
			missionNamespace setVariable ["getinpos", (getPos _vehicle)];
		};
	};
}];

_player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];

	missionNamespace setVariable ["lesnondesjouer", 1];
	if (_vehicle isKindOf "Air") then {
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F", "O_Plane_Fighter_02_F", "B_Plane_CAS_01_dynamicLoadout_F", "I_Plane_Fighter_03_dynamicLoadout_F", "O_Plane_CAS_02_dynamicLoadout_F"]) then {
			private _getinpos = missionNameSpace getVariable "getinpos";
			private _getoutpos = getPos _vehicle;
			private _crewUID = getPlayerUID _unit;
			private _list = fullCrew [_vehicle, "driver"];

			if ((_getinpos distance _getoutpos) > 1000) then {
				if !(_role isEqualTo "driver") then {
					[_crewUID] remoteExecCall ["NAK_fnc_vbnet20", -2, false];
				};
				if (count _list >= 0) then {
					private _ledriver = _list select 0;
					private _ledriveruid = getPlayerUID (_ledriver select 0);

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