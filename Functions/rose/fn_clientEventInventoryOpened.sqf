/*
File: fn_clientEventInventoryOpened.sqf
Author: 

	Quiksilver / VileAce
	
Last modified:

	10/20/20 VileAce
	
Description:

	Inventory Opened Event
___________________________________________________________________*/

params ['_unit','_inventory','_inventory2'];

private _c = FALSE;
private _isBackpack = getNumber (configFile >> 'CfgVehicles' >> (typeOf _inventory) >> 'isBackpack');
[_unit,_inventory,_isBackpack] spawn {
	if (isNil {missionNamespace getVariable 'NAK_fnc_bLockButton'}) then {
		NAK_fnc_bLockButton = compileFinal "
			if (!isNull ((findDisplay 602) displayCtrl 12346)) then {
				if (!isNil {player getVariable 'NAK_backpack_lockState'}) then {
					if (player getVariable 'NAK_backpack_lockState') then {
						50 cutText ['Backpack unlocked','PLAIN DOWN',0.5];
						player setVariable ['NAK_backpack_lockState',FALSE,TRUE];
					} else {
						50 cutText ['Backpack locked','PLAIN DOWN',0.5];
						player setVariable ['NAK_backpack_lockState',TRUE,TRUE];
					};
					player setVariable ['NAK_backpack_lockTime',(time + 1),FALSE];
				};
			};
		";
	};
	disableSerialization;
	params ['_unit','_inventory','_isBackpack'];
	private ['_QS_buttonCtrl','_myPicture','_isOthersBackpack','_objectParent','_exit'];
	waitUntil {(!isNull (findDisplay 602))};
	_display = findDisplay 602;
	private _QS_ctrlCreateArray = ['RscPicture',12345];
	_myPicture = _display ctrlCreate _QS_ctrlCreateArray;
	_myPicture ctrlSetPosition [
		(((ctrlPosition ((findDisplay 602) displayCtrl 6191)) select 0) + ((ctrlPosition ((findDisplay 602) displayCtrl 6191)) select 2)),
		((ctrlPosition ((findDisplay 602) displayCtrl 6191)) select 1)
	];
	_myPicture ctrlShow TRUE;
	_myPicture ctrlSetScale 0.175;
	_myPicture ctrlCommit 0;
	_QS_ctrlCreateArray = ['RscButtonArsenal',12346];
	_QS_buttonCtrl = _display ctrlCreate _QS_ctrlCreateArray;
	_QS_buttonCtrl ctrlSetPosition (ctrlPosition _myPicture);
	if (player getVariable 'NAK_backpack_lockState') then {
		_QS_buttonCtrl ctrlSetText '\a3\Modules_f\data\iconlock_ca.paa';
	} else {
		_QS_buttonCtrl ctrlSetText '\a3\Modules_f\data\iconunlock_ca.paa';
	};
	_QS_buttonAction = "[] call NAK_fnc_bLockButton";
	_QS_buttonCtrl buttonSetAction _QS_buttonAction;
	_QS_buttonCtrl ctrlShow TRUE;
	_QS_buttonCtrl ctrlSetScale 0.175;
	_QS_buttonCtrl ctrlSetTooltip 'Backpack lock';
	_QS_buttonCtrl ctrlCommit 0;
	ctrlDelete _myPicture;
	_isOthersBackpack = FALSE;
	if (_isBackpack isEqualTo 1) then {
		_objectParent = objectParent _inventory;
		if (!isNull _objectParent) then {
			if (isPlayer _objectParent) then {
				if (alive _objectParent) then {
					_isOthersBackpack = TRUE;
				};
			};
		};
	};

	(_display displayCtrl 6308) ctrlSetTooltip (format ['Load: %1 lbs',(round ((loadAbs player) * 0.1))]);
	(_display displayCtrl 12346) ctrlSetTooltip 'Backpack lock';
	_exit = FALSE;
	while {(!isNull (findDisplay 602))} do {
		if (_isOthersBackpack) then {
			if (!isNil {_objectParent getVariable 'NAK_backpack_lockState'}) then {
				if (_objectParent getVariable 'NAK_backpack_lockState') then {
					_exit = TRUE;
				};
			};
		};
		if (_exit) exitWith {
			waitUntil {
				closeDialog 0;
				(isNull (findDisplay 602))
			};
			50 cutText [(format ['%1s backpack is locked',(name _objectParent)]),'PLAIN'];
		};
		if (player getVariable 'NAK_backpack_lockState') then {
			_QS_buttonCtrl ctrlSetText '\a3\Modules_f\data\iconlock_ca.paa';
		} else {
			_QS_buttonCtrl ctrlSetText '\a3\Modules_f\data\iconunlock_ca.paa';
		};
		if (time > (player getVariable 'NAK_backpack_lockTime')) then {
			if ((backpack player) isEqualTo '') then {
				if (ctrlEnabled _QS_buttonCtrl) then {
					_QS_buttonCtrl ctrlShow FALSE;
					_QS_buttonCtrl ctrlEnable FALSE;
				};
			} else {
				if (!(ctrlEnabled _QS_buttonCtrl)) then {
					_QS_buttonCtrl ctrlShow TRUE;
					_QS_buttonCtrl ctrlEnable TRUE;
				};
			};
		} else {
			if (ctrlEnabled _QS_buttonCtrl) then {
				_QS_buttonCtrl ctrlEnable FALSE;
			};
		};
		uiSleep 0.01;
	};
};

//Uncomment after adding variable to all arsenals
/* if (!isNil {_inventory getVariable 'NAK_arsenal_object'}) then {
	if (_inventory getVariable 'NAK_arsenal_object') then {
		if (!(_inventory isKindOf 'LandVehicle')) then {
			if (!(_inventory isEqualTo _unit)) then {
				['Open',TRUE] call (missionNamespace getVariable 'BIS_fnc_arsenal');
				if (isNil {player getVariable 'NAK_arsenalAmmoPrompt'}) then {
					player setVariable ['NAK_arsenalAmmoPrompt',TRUE,FALSE];
					50 cutText ['To add ammunition, open the container on the LEFT (uniform,vest,backpack) and add ammunition on the RIGHT.','PLAIN'];
				};
				_c = TRUE;
			};
		};
	};
}; */

/*
//Uncomment after adding variable to all arsenals
if (!isNil {_inventory getVariable 'NAK_inventory_disabled'}) then {
	50 cutText ['This inventory is disabled!','PLAIN'];
	_c = TRUE;
};
*/
if (_isBackpack isEqualTo 1) then {
	_objectParent = objectParent _inventory;
	if (!isNull _objectParent) then {
		if (isPlayer _objectParent) then {
			if (alive _objectParent) then {
				if (!isNil {_objectParent getVariable 'NAK_backpack_lockState'}) then {
					if (_objectParent getVariable 'NAK_backpack_lockState') then {
						50 cutText [(format ['%1s backpack is locked',(name _objectParent)]),'PLAIN',0.5];
						_c = TRUE;
					};
				};
			};
		};
	};
};
_c;