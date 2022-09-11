// AOFL
#include "unitDefines.hpp"
missionNamespace setVariable ["breakout", 0];

["Media\NAK_Squad_Intro_Video.ogv"] spawn BIS_fnc_playVideo;

missionNamespace setVariable ["lock1", 0];
missionNamespace setVariable ["roadrunner", 0];
missionNamespace setVariable ["mastragraba", 0];
missionNamespace setVariable ["lejoueur", player];
missionNamespace setVariable ["Dandegreous", 0];
missionNamespace setVariable ["lesorelle", 1];
missionNamespace setVariable ["villeaceDBblock", 0];
missionNamespace setVariable ["getinpos", 0];
missionNamespace setVariable ["getinplock", 0];
missionNamespace setVariable ["theskinner", 0];
missionNamespace setVariable ["thecmopskin", 0];
missionNamespace setVariable ["theskcpveh", 0];
missionNamespace setVariable ["atrapelacoleur", 0];
missionNamespace setVariable ["lacouleur1", 0];
missionNamespace setVariable ["lacouleur2", 0];
missionNamespace setVariable ["lacouleur3", 0];
missionNamespace setVariable ["lacouleur4", 1];
missionNamespace setVariable ["dberror", 0];
missionNamespace setVariable ["loaderror1", 0];
uidd = getPlayerUID player;
missionNamespace setVariable ["ledepacement", 0];
missionNamespace setVariable ["lesnondesjouer", 0];


waitUntil {
	!isNull player
};
waitUntil {
	(getPlayerUID player) != ""
};

if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	0 enableChannel [true, false];
	1 enableChannel [true, false];
	2 enableChannel [true, false];
};
missionNamespace setVariable ["lespect", 0];

_pilotGunnerah99 = ["", "", "", "", "", ""];
missionNamespace setVariable ["pilotGunnerah99", _pilotGunnerah99];

_pilotGunnerkaj = ["", "", "", ""];
missionNamespace setVariable ["pilotGunnerkaj", _pilotGunnerkaj];

_pilotGunnergrey = ["", ""];
missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

_pilotGunnersent = ["", ""];
missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

_pilotGunnermq = ["", "", "", ""];
missionNamespace setVariable ["pilotGunnermq", _pilotGunnermq];

_pilotGunnervt1 = ["", "", "", ""];
missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];

_pilotGunnervt2 = ["", "", "", ""];
missionNamespace setVariable ["pilotGunnervt2", _pilotGunnervt2];

// Database and player stats
[] execVM "fn_villagers.sqf";

if !(isNil {
	profileNamespace getVariable "LAltitudeP"
}) then {
	missionNamespace setVariable ["LAltitude", (profileNamespace getVariable "LAltitudeP")];
	missionNamespace setVariable ["NAK_iconColor", (profileNamespace getVariable "NAK_iconColorP")];
	missionNamespace setVariable ["NAK_iconColor1", (profileNamespace getVariable "NAK_iconColor1P")];
	missionNamespace setVariable ["lesniperpour", (profileNamespace getVariable "lesniperpourP")];
	missionNamespace setVariable ["lesniperpour1", (profileNamespace getVariable "lesniperpour1P")];
} else {
	missionNamespace setVariable ["LAltitude", 600];
	missionNamespace setVariable ["NAK_iconColor", [0, 125, 255]];
	missionNamespace setVariable ["NAK_iconColor1", [0, 125, 255]];
	missionNamespace setVariable ["lesniperpour", 0.1];
	missionNamespace setVariable ["lesniperpour1", 0.1];
};

if !(isNil {
	profileNamespace getVariable "hexdistanceP"
}) then {
	missionNamespace setVariable ["hexdistance", (profileNamespace getVariable "hexdistanceP")];
} else {
	missionNamespace setVariable ["hexdistance", 4500];
};

_lemonde = worldName;
showSubtitles false;
enableSaving [false, false];
enableTeamSwitch false;
enableSentences false;
player disableConversation true;
waitUntil {
	time > FIVEBUFFER
};
enableEnvironment [false, true];
enableEngineArtillery false;
removeAllAssignedItems player;
player addWeapon "ItemMap";
player addRating 1000000;
player enableStamina false;
// VileAce added - small performance increase
{
	player disableAI _x;
} count [ 'TEAMSWITCH', 'FSM', 'AIMINGERROR', 'SUPPRESSION', 'COVER', 'AUTOCOMBAT' ];
player enableAI 'MOVE';
player setCustomAimCoef (missionNameSpace getVariable "lesniperpour");
player setUnitRecoilCoefficient (missionNameSpace getVariable "lesniperpour1");
player enableFatigue false;
if (player isKindOf "B_support_Mort_f") then {
	enableEngineArtillery true;
};
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
_dataplayrowner = clientOwner;
_respawnWest = getMarkerPos "respawn_west";
CHVD_allowNfoGrass = true;
missionNamespace setVariable ["checkrevive", 0, _dataplayrowner];

_jeova = ["uav1"];
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	if !(str player in _jeova) then {
		player addEventHandler ["FiredMan", {
			params ["_unit", "_weapon", "", "", "", "", "_projectile", ""];
			private _deleteprojectile = false;
			{
				_distance = _unit distance2D (getMarkerPos _x);
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

private _isElite = false;
missionNamespace setVariable ["isNakElite", _isElite];

if (!(uidd in (missionNameSpace getVariable "lesigneur"))) then {
	if (!(str player in LESPILOTES)) then {
		inGameUISetEventHandler ["Action", "if (_this # 3 == 'GetInPilot') then {
			hint 'You must be in a pilot role and on TeamSpeak to fly this aircraft.';
			true
		}"];
	};
} else {
	_isElite = true;
	missionNamespace setVariable ["isNakElite", _isElite];
};

[] spawn ROSE_fnc_icons;
// Jump
[] spawn ROSE_fnc_sauter;
// Diary
[] spawn ROSE_fnc_Yogurt;
[] spawn ROSE_fnc_GF_Holster;
// player Markers
[player] spawn ROSE_fnc_jager;
0 spawn (missionNamespace getVariable 'QS_fnc_clientCore');

player addEventHandler [ "AnimStateChanged", {
	params ["_unit", ""];
	Number07 = damage _unit;
	if ((lifeState _unit) == "INCAPACITATED") then {
		if ((missionNamespace getVariable "checkrevive") isEqualTo 0) then {
			_dataplayrowner = clientOwner;
			missionNamespace setVariable ["checkrevive", 1, _dataplayrowner];
			if (Number07 >= 0.95) then {
				removeAllActions _unit;
				[_unit, _dataplayrowner] spawn ROSE_fnc_laides;
			} else {
				[_unit, _dataplayrowner] spawn ROSE_fnc_laides;
			};
		};
	};
}];

player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	missionNamespace setVariable ["lesnondesjouer", 0];
	[] spawn ROSE_fnc_lecrew;
	if (_vehicle isKindOf "Air") then {
		diag_log "callingGetInMan is kind air";
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F", "O_Plane_Fighter_02_F", "B_Plane_CAS_01_dynamicLoadout_F", "I_Plane_Fighter_03_dynamicLoadout_F", "O_Plane_CAS_02_dynamicLoadout_F"]) then {
			diag_log "calling GetInMan vehicle type match";
			missionNamespace setVariable ["getinpos", (getPos _vehicle)];
			diag_log format [" _ledriver %1", (getPos _vehicle)];
		};
	};
	// VileAce added to add flag to all land vehicles 092920
	if (_vehicle isKindOf "LandVehicle") then {
		diag_log "callingGetInMan is kind Land Vehicle";
		if ({
			isPlayer _x
		} count crew _vehicle > 0) then {
			diag_log "Crew greater than 1 adding flag";
			_vehicle forceFlagTexture "Media\Images\NAKSquadFlagWhite.paa";
			_vehicle setPlateNumber (name player);
		};
	};
}];

player addEventHandler ["GetOutMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	diag_log "calling GetoutMan 000";
	missionNamespace setVariable ["lesnondesjouer", 1];
	if (_vehicle isKindOf "Air") then {
		if !((typeOf _vehicle) in ["B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F", "O_Plane_Fighter_02_F", "B_Plane_CAS_01_dynamicLoadout_F", "I_Plane_Fighter_03_dynamicLoadout_F", "O_Plane_CAS_02_dynamicLoadout_F"]) then {
			diag_log "calling GetOutMan is typeof check passed";
			private _getinpos = missionNameSpace getVariable "getinpos";
			private _getoutpos = getPos _vehicle;
			private _crewUID = getPlayerUID _unit;
			private _list = fullCrew [_vehicle, "driver"];
			diag_log format [" list %1, _crewUID %2, _getoutpos %3, _getinpos %4", _list, _crewUID, _getoutpos, _getinpos];
			if ((_getinpos distance _getoutpos) > 1000) then {
				diag_log "calling GetOutMan greater than 1000 for points";
				if !(_role isEqualTo "driver") then {
					[_crewUID] remoteExecCall ["NAK_fnc_vbnet20", -2, false];
				};
				if (count _list >= 0) then {
					private _ledriver = _list select 0;
					private _ledriveruid = getPlayerUID (_ledriver select 0);
					diag_log format [" _ledriver %1, _ledriveruid %2", _ledriver, _ledriveruid];
					if (alive _unit) then {
						[_ledriveruid] remoteExecCall ["NAK_fnc_vbnet21", -2, false];
					};
				};
			};
		};
	};
	// VileAce added to add flag to all land vehicles 092920
	if (_vehicle isKindOf "LandVehicle") then {
		if ({
			isPlayer _x
		} count crew _vehicle == 0) then {
			_vehicle forceFlagTexture "";
			_vehicle setPlateNumber "";
		};
	};
}];

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	missionNamespace setVariable ["lesnondesjouer", 1];
	deleteVehicle _corpse;
}];

// VileAce Removed Sceen billboards at infantry base 092920
// billboard_2 setObjectTexture [FIVEBUFFER, "media\Billboards\bill7.paa"];
// billboard_3 setObjectTexture [FIVEBUFFER, "media\Billboards\bill7.paa"];
billboard_12 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules1.paa"];
billboard_13 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Servers3.paa"];
billboard_16 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Servers4.paa"];
billboard_17 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Units1.paa"];
billboard_8 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_WebAcct.paa"];
billboard_4 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules2.paa"];
billboard_11 setObjectTexture [FIVEBUFFER, "media\Billboards\bill7.paa"];
billboard_5 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules1.paa"];
billboard_10 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_WebAcct.paa"];
billboard_6 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules1.paa"];
billboard_7 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_WebAcct.paa"];
billboard_9 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules2.paa"];
billboard_14 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules1.paa"];
billboard_1 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules2.paa"];
billboard_15 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Servers3.paa"];
billboard_21 setObjectTexture [FIVEBUFFER, "media\Billboards\NEWBillboard_Rules1.paa"];
billboard_22 setObjectTexture [FIVEBUFFER, "media\Billboards\TransportDepartures.paa"];
billboard_trans2 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_trans3 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_trans1 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_trans4 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_trans5 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_trans6 setObjectTexture [FIVEBUFFER, "media\Billboards\TP_TRANSPORT.paa"];
billboard_para3 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_para2 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_para1 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_para4 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_para5 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_para6 setObjectTexture [FIVEBUFFER, "media\Billboards\para.paa"];
billboard_tp1 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
billboard_tp2 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
billboard_tp3 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
billboard_tp4 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
billboard_tp5 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
billboard_tp6 setObjectTexture [FIVEBUFFER, "media\Billboards\Teleport_Sign.paa"];
AnniversaryBillBoard1 setObjectTexture [0, "media\Billboards\BillBoard_Anniversary.paa"];
AnniversaryBillBoard1 setObjectTexture [1, "media\Billboards\BillBoard_Anniversary.paa"];
AnniversaryBillBoard2 setObjectTexture [0, "media\Billboards\BillBoard_Anniversary.paa"];
AnniversaryBillBoard2 setObjectTexture [1, "media\Billboards\BillBoard_Anniversary.paa"];

sleep SARAHBUFFER;

[[[localize "STR_DOM_MISSIONSTRING_0", "<t size='1.0' font='RobotoCondensed'>%1</t><br/>", FIVEBUFFER], [name player, "<t size='1.0' font='RobotoCondensed'>%1</t><br/>", SARAHBUFFER], [localize "STR_DOM_MISSIONSTRING_1", "<t size='0.9'>%1</t><br/>", V04]	], -safezoneX, V05, "<t color='#FFFFFFFF' align='right'>%1</t>"] spawn BIS_fnc_typeText;

sleep 9;
[missionNamespace, "arsenalClosed", {
	player setVariable ["Saved_Loadout", getUnitLoadout player];
	if (uniform player in SACADO) then {
		removeUniform player;
		titleText [SACADO_MSG, "PLAIN DOWN", 0.7, true, true];
	};

	if (backpack player in LESACS) then {
		removeBackpack player;
		titleText [LESACS_MSG, "PLAIN DOWN", 0.7, true, true];
	};

	if (backpack player in UAVSACS) then {
		if (({
			player isKindOf _x
		} count uavOperator) < 1) then {
			removeBackpack player;
			titleText [UAVSAC_MSG, "PLAIN DOWN", 0.7, true, true];
		};
	};

	// VileAce Added 100620
	// Mag check on Arsenal Close
	_MagArray = magazines player + [magazines player] + [primaryWeaponMagazine player] + [handgunMagazine player] + [secondaryWeaponMagazine player] + [currentMagazine player];
	{
		if (_x in LESMAGS) then {
			player setAmmo [primaryWeapon player, 0];
			player setAmmo [handgunWeapon player, 0];
			player setAmmo [secondaryWeapon player, 0];
			player removeMagazines _x;
			titleText [AUTOTUR_MSG, "PLAIN DOWN", 0.7, true, true];
		};
	} forEach _MagArray;
	// UAV Terminal check on Arsenal Close
	_assignedItems = assignedItems player;
	if (({
		"B_UavTerminal" == _x
	} count _assignedItems) > 0) then {
		if (({
			player isKindOf _x
		} count uavOperator) < 1) then {
			player unassignItem "B_UavTerminal";
			player removeItem "B_UavTerminal";
			titleText [UAV_MSG, "PLAIN DOWN", 0.7, true, true];
		};
	};
	// VileAce added item hint
	_missingItems = [];
	if !('ItemRadio' in _assignedItems) then {
		_missingItems = _missingItems + ["Radio"];
	};
	if !('ItemGPS' in _assignedItems) then {
		_missingItems = _missingItems + ["GPS"];
	};
	if !('ItemMap' in _assignedItems) then {
		_missingItems = _missingItems + ["Map"];
	};
	_strMissingItems = _missingItems joinString ", ";
	if ((count _missingItems) > 0) then {
		_itemsMsg = format ["<t color='#ffffff' size='2'>It is highly recommended that you take the following items:<br/>%1</t>", _strMissingItems];
		titleText [_itemsMsg, "PLAIN DOWN", 0.7, true, true];
	};
}] call BIS_fnc_addScriptedEventHandler;
player setVariable ["Saved_Loadout", getUnitLoadout player];

player setVariable ["NAK_backpack_data", [(backpack player), (backpackItems player), (backpackMagazines player)], false];
player setVariable ["NAK_backpack_lockState", false, true];
player setVariable ["NAK_backpack_lockTime", (time + 1), false];

// VileAce added to lock backpacks
player addEventHandler ['InventoryOpened', {
	_this call (missionNamespace getVariable 'ROSE_fnc_clientEventInventoryOpened')
}];

// VileAce Added to prevent items in the personalized ammo drop

player addEventHandler ["InventoryClosed", {
	_MagArray = magazines player + [magazines player] + [primaryWeaponMagazine player] + [handgunMagazine player] + [secondaryWeaponMagazine player] + [currentMagazine player];
	{
		if (_x in LESMAGS) then {
			player setAmmo [primaryWeapon player, 0];
			player setAmmo [handgunWeapon player, 0];
			player setAmmo [secondaryWeapon player, 0];
			player removeMagazines _x;
			titleText [AUTOTUR_MSG, "PLAIN DOWN", 0.7, true, true];
		};
	} forEach _MagArray;
}];

(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if (_this # 1 == 197 || _this # 1 == 210) then {
		switch (missionNamespace getVariable 'lesorelle') do {
			case 1: {
				missionNamespace setVariable ['lesorelle', 2];
				2 fadeSound 0.1; hint 'EARPLUGS FITTED';
			};
			case 2: {
				missionNamespace setVariable ['lesorelle', 1];
				2 fadeSound 1; hint 'EARPLUGS REMOVED';
			};
		};
	};
	if (uidd in (missionNameSpace getVariable "guirer")) then {
		if (_this # 1 == 24) then {
			player addAction ["<t color='#ab2b2c'>---Admin Menu---</t>", {
				_this spawn ROSE_fnc_lepartrons1;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Check Server Current Pilot</t>", {
				_this spawn ROSE_fnc_lepartrons4;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Spectator</t>", {
				_this spawn ROSE_fnc_lepartrons5;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Pilot TS Warning</t>", {
				_this spawn ROSE_fnc_lepartrons7;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Delete Mine (500 m Raduis)</t>", {
				_this spawn ROSE_fnc_lepartrons10;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Map Teleport</t>", {
				_this spawn ROSE_fnc_lepartrons11;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Delete Vehicle</t>", {
				_this spawn ROSE_fnc_lepartrons12;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Repair and Refuel</t>", {
				_this spawn ROSE_fnc_lepartrons13;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Show/Hide Empty Vehicles</t>", {
				_this spawn ROSE_fnc_lepartrons6;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>Give Player $500 and Remove Cooldown</t>", {
				_this spawn ROSE_fnc_lepartrons2;
			}, [], 1, false, true, "", "player == _originalTarget"];
			// Test
			player addAction ["<t color='#26de0d'>TP Player to Me</t>", {
				_this spawn ROSE_fnc_tpToMe;
			}, [], 1, false, true, "", "player == _originalTarget"];
			player addAction ["<t color='#26de0d'>TP Me to Player</t>", {
				_this spawn ROSE_fnc_tpToPlayer;
			}, [], 1, false, true, "", "player == _originalTarget"];
		};
	};
}];

player addEventHandler ["HandleHeal", {
	_this spawn {
		params ["_injured", "_healer"];
		missionNamespace setVariable ['Health', getDammage _injured, false];
		_damage = Health;
		if (_injured == _healer) then {
			waitUntil {
				damage _injured != _damage
			};
			if (damage _injured < _damage) then {
				titletext ["You are healed", "PLAIN DOWN"];
				_injured setDamage 0;
			};
		};
	};
}];

// Added VileAce
if (uidd in (missionNameSpace getVariable "guirer")) then {
	player addEventHandler ["GetInMan", {
		if ({
			isPlayer _x
		} count crew (_this select 2) > 0) then {
			(_this select 2) forceFlagTexture "Media\Images\NAKCommandFlagDark.paa";
			(_this select 2) setPlateNumber (name player);
		};
	}];

	player addEventHandler ["GetOutMan", {
		if ({
			isPlayer _x
		} count crew (_this select 2) == 0) then {
			(_this select 2) forceFlagTexture "";
			(_this select 2) setPlateNumber "";
		};
	}];
};

// VileAce moved Rules dialog from line 278
createdialog "lesreglesdujeux";
waitUntil {
	!dialog
};
// VileAce moved to end of init was line 140
[] spawn ROSE_fnc_lilkiller;

_lestasks = ["aoTask111", "aoTask112", "aoTask113", "tankTask", "tankTasks", "aoTask1", "aoTask2", "aoTask3", "aoTask4", "aoTask6", "aoTask10", "aoTask11", "aoTask12", "aoTask15", "MainAoTask", "mamanAoTask", "aoTask16", "priorArtyTask", "hqResearchTask", "secureChopperTask"];
sleep 1;
{
	[_x, "ASSIGNED", false] call BIS_fnc_taskSetState;
} forEach _lestasks;

private _hintLogo = selectRandom [
	"<img size='7' image='Media\images\naksquad1.paa'/><br/>",
	"<img size='7' image='Media\images\nakcommand.paa'/><br/>",
	"<img size='7' image='Media\images\NAKSquadFlagWhite.paa'/><br/>"
];

_image1 = "<img size='7' image='Media\images\naksquad1.paa'/><br/>";
_image2 = "<img size='7' image='Media\images\nakcommand.paa'/><br/>";
_image3 = "<img size='7' image='Media\images\NAKSquadFlagWhite.paa'/><br/>";
_EarPlugsTakenHint = "<t color='#ab2b2c' size='1.3' shadow='1' shadowColor='#000000' align='center'>Earplugs</t><br/>";
_HowtoEarPlugsHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Insert and Remove your Earplugs with key (Pause/Break) or (Insert)</t><br/><br/>";
_PlayerJumpHint = "<t color='#123b63' size='1.3' shadow='1' shadowColor='#000000' align='center'>Player Jump</t><br/>";
_HowtoJumpHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Hold run/sprint (SHIFT) and 'GET OVER' (default 'v' key) for jumping</t><br/><br/>";
_HolsterHint = "<t color='#dd9b1f' size='1.3' shadow='1' shadowColor='#000000' align='center'>Holster Weapon</t><br/>";
_HowtoHolsterHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Holster your Weapon with key (H)</t><br/><br/>";
_ReviveHint = "<t color='#fce253' size='1.3' shadow='1' shadowColor='#000000' align='center'>Initiate Medical Hotkey</t><br/>";
_HowtoRevive = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Use Custom Controls > User Action 20 to Initiate Medical</t><br/><br/>";
_ViewSettingHint = "<t color='#b7b7b7' size='1.3' shadow='1' shadowColor='#000000' align='center'>View Settings</t><br/>";
_HowtoViewSettingHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>To change View Settings with CBA_A3 (CTRL + Backslash) without CBA_A3 while on foot select View Settings from the action menu.</t>";
private _elitePilotHintTitle = "<t color='#ab2b2c' size='1.3' shadow='1' shadowColor='#000000' align='center'>PILOT RULES</t><br/>";
private _elitePilotHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>All Pilots including NAK Elite must be in TS</t><br/><br/>";
private _eliteShopHintTitle = "<t color='#fce253' size='1.3' shadow='1' shadowColor='#000000' align='center'>NAK IN-GAME SHOP RULES</t><br/>";
private _eliteShopHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>50% Discounts on all Items</t><br/><br/>";

/* Display basic hint msg*/
hint parseText (_hintLogo + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);

sleep 10;

/* Display basic Elite Hint*/
if(_isElite) then {
	hint parseText (_hintLogo + _elitePilotHintTitle + _elitePilotHint + _eliteShopHintTitle + _eliteShopHint);
};