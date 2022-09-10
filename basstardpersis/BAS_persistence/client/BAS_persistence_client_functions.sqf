BAS_persistence_client_fnc_playerInit = {waitUntil { !isNull player };waitUntil { alive player };if (player getVariable ["BAS_persistence_client_initDone", false]) exitWith {};private _player = player;_player setVariable ["BAS_persistence_client_initDone", nil, false];BAS_persistence_client_pVar_playerInitEvent = _player;publicVariableServer "BAS_persistence_client_pVar_playerInitEvent"; _player setVariable ["BAS_persistence_client_initDone", true, false];_player setVariable ["atomiclock", 0, false];};

BAS_persistence_client_fnc_serverInit = {addMissionEventHandler ["HandleDisconnect", BAS_persistence_client_fnc_mortvivant];
"BAS_persistence_client_pVar_playerInitEvent" addPublicVariableEventHandler { (_this select 1) spawn BAS_persistence_client_fnc_loadPlayerData; };};

BAS_persistence_client_fnc_loadPlayerData ={private ["_player", "_playerModel", "_playerUID", "_ret", "_query"];
_player = _this;
_playerModel = getPlayerUID _player;
_playerUID = getPlayerUID _player;
_id = clientOwner;
_le1 = getUnitLoadout _player;

_query = format["playerExists:%1:%2", _playerUID, _playerModel];
_ret = ([_query, 2] call BAS_persistence_client_fnc_databaseAsyncCall) select 0;
diag_log format ["extDB3 - Check if player exists: %1", _ret];

if (!_ret) then{_query = format["playerInsert:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13", _playerUID, name _player, _playerModel, 0, 0, 0, 0, 0, 0, 0, 0, 0 , getUnitLoadout player];
[_query, 1] call BAS_persistence_client_fnc_databaseAsyncCall;
diag_log "extDB3 - Player added to database";

_query = format["playerUpdateInfo:%1:%2:%3", name _player, _playerUID, _playerModel];
[_query, 1] call BAS_persistence_client_fnc_databaseAsyncCall;
_query = format["playerGetData:%1:%2", _playerUID, _playerModel];
_ret = [_query, 2] call BAS_persistence_client_fnc_databaseAsyncCall;
_ret remoteExec ["BAS_persistence_client_fnc_applyPlayerData007", _player, false];
diag_log "extDB3 - Player data restored";
_player setVariable ["atomiclock", 1, false];
}else{
_query = format["playerGetData:%1:%2", _playerUID, _playerModel];
_ret = [_query, 2] call BAS_persistence_client_fnc_databaseAsyncCall;
_ret remoteExec ["BAS_persistence_client_fnc_applyPlayerData", _player, false];
diag_log "extDB3 - Player data restored";_player setVariable ["atomiclock", 1, false];
_query = format["playerUpdateInfo:%1:%2:%3", name _player, _playerUID, _playerModel];
[_query, 1] call BAS_persistence_client_fnc_databaseAsyncCall;
};};




BAS_persistence_client_fnc_applyPlayerData007 ={
	private ["_player","_data", "_hitPoint"];
	_player = player;
	_id = clientOwner;
	_data = _this;	
	{switch (_forEachIndex) do{
		case 0:
		{
			
			missionNamespace setVariable ["inftherankin", 0, _id];
			
		};
		case 1:
		{
			missionNamespace setVariable ["softtherankin", 0, _id];
		};
		case 2:
		{
			missionNamespace setVariable ["armmortherankin", 0, _id];	
		};
		case 3:
		{
			missionNamespace setVariable ["airtherankin", 0, _id];
		};
		case 4:
		{
			missionNamespace setVariable ["deaththerankin", 0, _id];
		};
		case 5:
		{
			missionNamespace setVariable ["totaltk", 0, _id];
		};
		case 6:
		{
			missionNamespace setVariable ["totalRevive", 0, _id];
		};
		case 7:
		{
			missionNamespace setVariable ["therankin", 0, _id];
			missionNamespace setVariable ["stopdb", 0, _id];
		};
		case 8:
		{
			missionNamespace setVariable ["themasterrankin", 0, _id];
			
		};
		case 9:
		{
			missionNamespace setVariable ["loadoutbackup", _x, _id];
		};
		case 10:
		{
			missionNamespace setVariable ["ladatedujour", _x, _id];
			missionNamespace setVariable ["villeaceDBblock", 1, _id];
		};
		};} forEach _data;};


BAS_persistence_client_fnc_applyPlayerData ={
	private ["_player","_data", "_hitPoint"];
	_player = player;
	_id = clientOwner;
	_data = _this;	
	{switch (_forEachIndex) do{
		case 0:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["inftherankin", _x, _id];
			
		};
		case 1:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["softtherankin", _x, _id];
		};
		case 2:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["armmortherankin", _x, _id];	
		};
		case 3:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["airtherankin", _x, _id];
		};
		case 4:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["deaththerankin", _x, _id];
		};
		case 5:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["totaltk", _x, _id];
		};
		case 6:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["totalRevive", _x, _id];
		};
		case 7:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["therankin", _x, _id];
			missionNamespace setVariable ["stopdb", _x, _id];
		};
		case 8:
		{
			if ( isNil "_x" ) then { _x = 0;};
			missionNamespace setVariable ["themasterrankin", _x, _id];
		};
		case 9:
		{
			missionNamespace setVariable ["loadoutbackup", _x, _id];
			player setUnitLoadout _x;
			
		};
			case 10:
		{
			missionNamespace setVariable ["ladatedujour", _x, _id];
			missionNamespace setVariable ["villeaceDBblock", 1, _id];
		//	hint "database for done loading";
		};
		};} forEach _data;};


BAS_persistence_client_fnc_mortvivant ={private ["_player", "_playerUID", "_query"];_player = _this select 0;_playerUID = _this select 2;deleteVehicle _player;false};




