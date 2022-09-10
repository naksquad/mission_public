/*/
File: fn_clientCore.sqf
Author:

	Quiksilver and VileAce
	
Last Modified:

	11.01.20 by VileAce
	
Description:

	Client Core
________________________________________________/*/
private ['_timeNow','_serverTime','_QS_uiTime','_QS_player','_QS_clientOwner','_cursorTarget','_cursorDistance','_cursorTargetDistance','_objectParent','_QS_objectTypes','_QS_objectRange','_cursorObject','_cursorObjectDistance','_noObjectParent','_QS_v2Type','_QS_v2TypeL','_QS_v2','_QS_action_turretSafety','_QS_action_turretSafety_text','_QS_action_turretSafety_array','_QS_interaction_turretSafety','_QS_turretSafety_heliTypes','_QS_posWorldPlayer','_posATLPlayer','_QS_module_revealPlayers','_QS_module_revealPlayers_delay','_QS_module_revealPlayers_checkDelay','_true','_false','_lifeState','_QS_nearEntities_revealDelay','_QS_nearEntities_revealCheckDelay'];

disableSerialization;
_timeNow = time;
_serverTime = serverTime;
_QS_uiTime = diag_tickTime;
_QS_player = player;
_namePlayer = name player;
_puid = getPlayerUID player;
_true = TRUE;
_false = FALSE;
_lifeState = lifeState player;

/*/===== Module Reveal Players/*/
_QS_module_revealPlayers = TRUE;
_QS_module_revealPlayers_delay = 15;
_QS_module_revealPlayers_checkDelay = _timeNow + _QS_module_revealPlayers_delay;

_cursorTarget = cursorTarget;
_cursorObject = cursorObject;
_QS_nearEntities_revealDelay = 5;
_QS_nearEntities_revealCheckDelay = time + _QS_nearEntities_revealDelay;
_QS_entityTypes = ['Man','LandVehicle','Air','Ship'];
_QS_entityRange = 5;
_QS_objectTypes = 'All';
_QS_objectRange = 4;

_QS_clientOwner = clientOwner;
_objectParent = objectParent player;
_QS_v2 = vehicle player;
_QS_v2Type = typeOf _QS_v2;
_QS_v2TypeL = toLower _QS_v2Type;

_QS_action_turretSafety = nil;
_QS_action_turretSafety_text = 'Turret safety';
_QS_action_turretSafety_array = [_QS_action_turretSafety_text,{_this spawn (missionNamespace getVariable 'QS_fnc_clientInteractTurretControl')},[],-50,FALSE,FALSE,'','TRUE',-1,FALSE,''];
_QS_interaction_turretSafety = FALSE;
missionNamespace setVariable ['QS_inturretloop',FALSE,FALSE];
_QS_turretSafety_heliTypes = ['B_Heli_Transport_01_camo_F','B_Heli_Transport_01_F','B_Heli_Transport_03_F','B_CTRG_Heli_Transport_01_sand_F','B_CTRG_Heli_Transport_01_tropic_F'];

private _QS_miscDelay1 = 0;

/*/================================================================================================================= LOOP/*/
for 'x' from 0 to 1 step 0 do {

	if (diag_tickTime > _QS_miscDelay1) then {
		_QS_miscDelay1 = _QS_uiTime + 0.5;
		if (!(_QS_player isEqualTo player)) then {
			_QS_player = player;
		};
		_QS_posWorldPlayer = getPosWorld _QS_player;
		_posATLPlayer = getPosATL _QS_player;

		if (!(_QS_v2 isEqualTo (vehicle _QS_player))) then {
			_QS_v2 = vehicle _QS_player;
			_QS_v2Type = typeOf _QS_v2;
			_QS_v2TypeL = toLower _QS_v2Type;
		};
		if (!(_objectParent isEqualTo (objectParent _QS_player))) then {
			_objectParent = objectParent _QS_player;
		};
	};

	if (alive _QS_player) then {
		if (_lifeState in ['HEALTHY','INJURED']) then {
			_cursorTarget = cursorTarget;
			_cursorDistance = _QS_player distance _cursorTarget;
			getCursorObjectParams params ['_cursorObject','_cursorObjectNamedSel','_cursorObjectDistance'];
			
			if (isNull _cursorObject) then {
				_cursorObject = cursorObject;
			};
			
			if (!isNull _cursorObject) then {
				if (_cursorObject isKindOf 'CAManBase') then {
					if (_cursorObjectDistance < 15) then {
						if ((_QS_player knowsAbout _cursorObject) < 1) then {
							_QS_player reveal [_cursorObject,4];
						};
					};
				};
			};
			
			_noObjectParent = isNull _objectParent;
			
			if (_timeNow > _QS_nearEntities_revealCheckDelay) then {
				if (_noObjectParent) then {
					{
						if (simulationEnabled _x) then {
							if ((_QS_player knowsAbout _x) < 1) then {
								_QS_player reveal [_x,3.9];
							};
						};
					} count (((_posATLPlayer select [0,2]) nearEntities [_QS_entityTypes,_QS_entityRange]) + (_posATLPlayer nearObjects [_QS_objectTypes,_QS_objectRange]));
					{
						if (!isNull (_x # 0)) then {
							if ((_x # 1) < 5) then {
								if (simulationEnabled (_x # 0)) then {
									if ((_QS_player knowsAbout (_x # 0)) < 1) then {
										_QS_player reveal [(_x # 0),3.9];
									};
								};
							};
						};
					} count [
						[_cursorTarget,_cursorDistance],
						[_cursorObject,_cursorObjectDistance]
					];
				};
				_QS_nearEntities_revealCheckDelay = _timeNow + _QS_nearEntities_revealDelay;
			};
			

			/*/===== Action turret safety/*/
			
			if ((!(_noObjectParent)) && {(_QS_v2Type in _QS_turretSafety_heliTypes)} && {(_QS_player isEqualTo (driver _QS_v2))} &&	{(!(missionNamespace getVariable 'QS_inturretloop'))}) then {
				if (!(_QS_interaction_turretSafety)) then {
					_QS_interaction_turretSafety = _true;
					_QS_action_turretSafety = player addAction _QS_action_turretSafety_array;
					player setUserActionText [_QS_action_turretSafety,((player actionParams _QS_action_turretSafety) # 0),(format ["<t size='3'>%1</t>",((player actionParams _QS_action_turretSafety) # 0)])];
				};
			} else {
				if (_QS_interaction_turretSafety) then {
					_QS_interaction_turretSafety = _false;
					player removeAction _QS_action_turretSafety;
				};
			};
		};
	};
	/*/========== Reveal Players module/*/
//VileAce - may help with hex's not showing some times
	if (_QS_module_revealPlayers) then {
		if (_timeNow > _QS_module_revealPlayers_checkDelay) then {
			if ((_QS_player distance2D (getMarkerPos "respawn_west")) > 800) then {
				if ((count _allPlayers) > 1) then {
					{
						if (!((toLower (speaker _x)) isEqualTo 'novoice')) then {
							_x setSpeaker 'NoVoice';
						};
						if ((_QS_player knowsAbout _x) <= 1) then {
							_QS_player reveal [_x,2];
						};
					} count ((_QS_posWorldPlayer nearEntities ['CAManBase',500]) select {(isPlayer _x)});
				};
			};
			_QS_module_revealPlayers_checkDelay = _timeNow + _QS_module_revealPlayers_delay;
		};
	};
	
	uiSleep 0.1;
};

hint "Error in Code";