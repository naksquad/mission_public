_profileName = name player;
_patchList = missionNameSpace getVariable "patches_to_send";

_unknownCfgPatches = []; 
"if !(toLower(configName _x) in _patchList) then {_unknownCfgPatches pushBack (configName _x)}; true" configClasses (configFile >> "CfgPatches"); 

diag_log _unknownCfgPatches;
_unknownCfgPatches deleteAt (_unknownCfgPatches find "A3_Dubbing_Radio_F_Enoch_Names");
diag_log "after";
diag_log _unknownCfgPatches;
if (!(uidd in (missionNameSpace getVariable "guirer"))) then {
	if (count _unknownCfgPatches > 0) then {
		_modOfUnknownCfgPatches = []; 
		for '_i' from 0 to ((count _unknownCfgPatches) - 1) step 1 do { 
		_classEntry = _unknownCfgPatches select _i; 
		_mod = configSourceModList (configFile >> "CfgPatches" >> _classEntry); 
		_modOfUnknownCfgPatches pushBackUnique _mod 
		}; 

		_playerName = name player;
		_uid = getPlayerUID player;

	
		_unapprovedModlist = str _modOfUnknownCfgPatches;

		_log = format ["Player:%1, UID:%2, Unapproved Mods:%3", _playerName, _uid, _unapprovedModlist];
		_chatMsg = format ["Player:%1, Unapproved Mods:%2", _playerName, _unapprovedModlist];
		_formattedText = format["<t color='#ffffff' size='4'>NON APPROVED MODS</t><br/><br/><t color='#ffffff' size='2'>%1</t><br/>", _unapprovedModlist];
		100 cutText [_formattedText,"BLACK FADED",10,TRUE,TRUE];

		[west, "BLU"] sideChat _chatMsg;

		sendlogfile = [_log,"ModsLog"];
		publicVariableServer "sendlogfile";
		sleep 10;
		failMission "end6";
	};
};
//End List unapproved mods

//VileAce removed 100320 in favor of approved mods only
/* 
//VileAce restricted mods by patch _modOfBadCfgPatches turns patches into mod name for easier recognition
_badpatchList = missionNameSpace getVariable "galileia_1";
_badCfgPatches = []; 
"if (toLower(configName _x) in _badpatchList) then {_badCfgPatches pushBack (configName _x)}; true" configClasses (configFile >> "CfgPatches"); 

//builds list of mods from _badCfgPatches
_modOfBadCfgPatches = []; 
for '_i' from 0 to ((count _badCfgPatches) - 1) step 1 do { 
 _classEntry = _badCfgPatches select _i; 
 _mod = configSourceModList (configFile >> "CfgPatches" >> _classEntry); 
 _modOfBadCfgPatches pushBackUnique _mod 
}; 

if (count _modOfBadCfgPatches > 0) then {
disableUserInput true;
_modlist = str _modOfBadCfgPatches;
_text = format ["Player:%1, Restricted Mods:%2", _profileName, _modlist];
_text remoteExec ['systemChat',-2];
sleep 10;
failMission "end6";
};
//VileAce restricted mods


_trinity = missionNameSpace getVariable "galileia_3";
_binConfigMods = configFile >> 'CfgMods';
private _patchConfigMod = '';
for '_i' from 0 to ((count _binConfigMods) - 1) step 1 do {
_ModEntry = _binConfigMods select _i;
	if (isClass _ModEntry) then {
	_patchConfigMod = toLower (configName _ModEntry);
		if (_patchConfigMod in _trinity) then {
		_text = format ['%1 is using a restricted mod %2, kicking to lobby.',_profileName,_patchConfigMod];
		_text remoteExec ['systemChat',-2];
		sleep 5;
		failMission "end6";
		};
	};
};
 */