private _playerName = name player;
private _uid = getPlayerUID player;
private _approvedModList = missionNameSpace getVariable "load_approved_mod_list";

//get loaded mods and filter the unappoved in a list
private _defaultModNames = ["arma 3 art of war","arma 3 contact (platform)","arma 3 tanks","arma 3 tac-ops","arma 3 laws of war","arma 3 malden","arma 3 jets","arma 3 apex","arma 3 marksmen","arma 3 helicopters","arma 3 karts","arma 3 zeus","arma 3"];

// get the names of the loaded mods and add them into an array
private _loadedModNames = [];
private _nonVanillaAddons = getLoadedModsInfo;

// get the names of the loaded mods and add them into an array
_loadedModNames = [];

if (!(_uid in (missionNameSpace getVariable "guirer"))) then { 
	_nonVanillaAddons = getLoadedModsInfo;

	for '_i' from 0 to ((count _nonVanillaAddons) - 1) step 1 do { 
		private _selectedModInfo = _nonVanillaAddons select _i;
		_loadedModNames pushBack toLower(_selectedModInfo select 0);
	};

	// make arrays of loaded mods (nun offical DLC), not allowed mods, and missing requird mods
	_loadedModNames = _loadedModNames - _defaultModNames; // remove the default mods from the list
	private _notAllowedLoadedMods = _loadedModNames - _approvedModList; // list of mods that are not allowed

	if (count _notAllowedLoadedMods > 0) then {
		private _unapprovedModlist = str _notAllowedLoadedMods;

		private _log = format ["Player:%1, UID:%2, Unapproved Mods:%3", _playerName, _uid, _unapprovedModlist];
		private _chatMsg = format ["Player:%1, Unapproved Mods:%2", _playerName, _unapprovedModlist];

		private _formattedText = format["<t color='#ffffff' size='4'>NON APPROVED MODS, PLEASE VISIT WWW.NAKSQUAD.NET/MODS TO SEE THE APPROVED MOD LIST</t><br/><br/><t color='#ffffff' size='2'>%1</t><br/>", _unapprovedModlist]; // diplsay to the user ( not allowed mods)
		
		100 cutText [_formattedText,"BLACK FADED",10,TRUE,TRUE];

		[west, "BLU"] sideChat _chatMsg;

		sendlogfile = [_log,"ModsLog"];
		publicVariableServer "sendlogfile";
		sleep 10;
		failMission "end6";
	};
};