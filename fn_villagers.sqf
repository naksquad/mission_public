if (!isServer && {!hasInterface}) exitWith{};
#include "unitDefines.hpp"

3 fadeMusic 0.5;
playMusic selectRandom TRACKE;
private _countert = 0;
private _dataplayrTHEowner = clientOwner;
private _therownerid = clientOwner;
private _image1 = "<img size='7' image='Media\images\naksquad1.paa'/><br/>";
private _image2 = "<img size='7' image='Media\images\nakcommand.paa'/><br/>";
private _image3 = "<img size='7' image='Media\images\NAKSquadFlagWhite.paa'/><br/>";
private _EarPlugsTakenHint = "<t color='#ab2b2c' size='1.3' shadow='1' shadowColor='#000000' align='center'>Earplugs</t><br/>";
private _HowtoEarPlugsHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Insert and Remove your Earplugs with key (Pause/Break) or (Insert)</t><br/><br/>";
private _PlayerJumpHint = "<t color='#123b63' size='1.3' shadow='1' shadowColor='#000000' align='center'>Player Jump</t><br/>";
private _HowtoJumpHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Hold run/sprint (SHIFT) and 'GET OVER' (default 'v' key) for jumping</t><br/><br/>";
private _HolsterHint = "<t color='#dd9b1f' size='1.3' shadow='1' shadowColor='#000000' align='center'>Holster Weapon</t><br/>";
private _HowtoHolsterHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Holster your Weapon with key (H)</t><br/><br/>";
private _ReviveHint = "<t color='#fce253' size='1.3' shadow='1' shadowColor='#000000' align='center'>Initiate Medical Hotkey</t><br/>";
private _HowtoRevive = "<t size='1' shadow='1' shadowColor='#000000' align='center'>Use Custom Controls > User Action 20 to Initiate Medical</t><br/><br/>";
private _ViewSettingHint = "<t color='#b7b7b7' size='1.3' shadow='1' shadowColor='#000000' align='center'>View Settings</t><br/>";
private _HowtoViewSettingHint = "<t size='1' shadow='1' shadowColor='#000000' align='center'>To change View Settings with CBA_A3 (CTRL + Backslash) without CBA_A3 while on foot select View Settings from the action menu.</t>";
private _lacle = selectRandom [1, 2, 3];

switch (_lacle) do {
	case 1: {
		hint parseText (_image1 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);
	};
	case 2: {
		hint parseText (_image2 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);
	};
	case 2: {
		hint parseText (_image3 + _EarPlugsTakenHint + _HowtoEarPlugsHint + _PlayerJumpHint + _HowtoJumpHint + _HolsterHint + _HowtoHolsterHint + _ReviveHint+ _HowtoRevive + _ViewSettingHint + _HowtoViewSettingHint);
	};
};

while { true } do {
	private _villeaceDBblock = missionNamespace getVariable "villeaceDBblock";

	if (_villeaceDBblock == 1) exitWith {
		private _texttwo = "<t color='#0f1ef5'>Database loaded, Welcome to NAK..</t>";
		hint parseText (_texttwo);
		hint "Database loaded, Welcome to NAK";
	};

	_countert = _countert + 5;

	if ((_countert >= 60) && (_villeaceDBblock == 0)) exitWith {
		private _textOne = "<t color='#ff0000'>Database error. Some features will be disabled until you reconnect. Please exit and reconnect to attempt to correct the error..</t>";
		hint parseText (_textOne);
		missionNamespace setVariable ["dberror", 1, _therownerid];
	};
	sleep 5;
};
enableEnvironment [false, true];

private _loadoutbackup = missionNamespace getVariable "loadoutbackup";
if (isNil "_loadoutbackup") then {
	missionNamespace setVariable ["loadoutbackup", getUnitLoadout player, _therownerid];

	_loadoutbackup = getUnitLoadout player;
};
player setUnitLoadout _loadoutbackup;

sleep 29;
enableEnvironment [false, true];

private _infantry_kills = missionNamespace getVariable "inftherankin";
if (isNil "_infantry_kills") then {
	missionNamespace setVariable ["inftherankin", 0, _therownerid];

	_infantry_kills = 0;
};

private _soft_vehicle_kills = missionNamespace getVariable "softtherankin";
if (isNil "_soft_vehicle_kills") then {
	missionNamespace setVariable ["softtherankin", 0, _therownerid];
	_soft_vehicle_kills = 0;
};

private _armor_kills = missionNamespace getVariable "armmortherankin";
if (isNil "_armor_kills") then {
	missionNamespace setVariable ["armmortherankin", 0, _therownerid];
	_armor_kills = 0;
};

private _air_kills = missionNamespace getVariable "airtherankin";
if (isNil "_air_kills") then {
	missionNamespace setVariable ["airtherankin", 0, _therownerid];
	_air_kills = 0;
};

private _deaths = missionNamespace getVariable "deaththerankin";
if (isNil "_deaths") then {
	missionNamespace setVariable ["_dedeaththerankinaths", 0, _therownerid];
	_deaths = 0;
};

private _total_score = missionNamespace getVariable "themasterrankin";
if (isNil "_total_score") then {
	missionNamespace setVariable ["themasterrankin", 0, _therownerid];
	_total_score = 0;
};

private _total_poiint = missionNamespace getVariable "therankin";
if (isNil "_total_poiint") then {
	missionNamespace setVariable ["therankin", 0, _therownerid];
	_total_poiint = 0;
};

private _ladatedujour = missionNamespace getVariable "ladatedujour";
if (isNil "_ladatedujour") then {
	missionNamespace setVariable ["ladatedujour", [0, 0, 0, 0, 0, 0], _therownerid];
	_ladatedujour = [0, 0, 0, 0, 0, 0];
};

private _total_rivive = missionNamespace getVariable "totalRevive";
if (isNil "_total_rivive") then {
	missionNamespace setVariable ["totalRevive", 0, _therownerid];
	_total_rivive = 0;
};

private _total_teamkill = missionNamespace getVariable "totaltk";
if (isNil "_total_teamkill") then {
	missionNamespace setVariable ["totaltk", 0, _therownerid];
	_total_teamkill = 0;
};
private _year = _ladatedujour # 0;
private _month = _ladatedujour # 1;
private _day = _ladatedujour # 2;
private _hour = _ladatedujour # 3;
private _minutes = _ladatedujour # 4;
private _second = _ladatedujour # 5;

private _jeova = ["uav1"];
if !(str player in _jeova) then {
	player removeWeapon "B_UavTerminal";
};
private _jeova1 = ["uav1"];
if (str player in _jeova) then {
	missionNamespace setVariable ["leodw", 0, true];
	missionNamespace setVariable ["mtcoodw", 0, true];
	player addWeapon "B_UavTerminal"; player setUnitTrait ["UAVHacker", true];
};

missionNamespace setVariable ["lesextrap", 0, _therownerid];
private _lesscorearray = getPlayerScores player;
private _levraieest = _lesscorearray select 5;
missionNamespace setVariable ["lesscrotrap", _levraieest, _therownerid];
missionNamespace setVariable ["savelastxp", _levraieest, _therownerid];

private _levraieest0 = _lesscorearray select 0;
missionNamespace setVariable ["infkilllastxp", _levraieest0, _therownerid];

private _levraieest1 = _lesscorearray select 1;
missionNamespace setVariable ["softvehlastxp", _levraieest1, _therownerid];

private _levraieest2 = _lesscorearray select 2;
missionNamespace setVariable ["amorkilllastxp", _levraieest2, _therownerid];

private _levraieest3 = _lesscorearray select 3;
missionNamespace setVariable ["airkilllastxp", _levraieest3, _therownerid];
private _levraieest4 = _lesscorearray select 4;
missionNamespace setVariable ["deathlastxp", _levraieest4, _therownerid];

private _Playerstats = parseText format["
	<img size='5' image='Media\images\nakcommand.paa'/><br/>
	<t size='1.2' color='#f2cd3a' >Welcome Back </t><t color='#1fb505'> %1</t><br/>
	<t size='1.5' color='#f2cd3a' align='center'>player KILLS STATS!</t><br/>
	<t size='1.5' color='#f2cd3a' align='left'>----------------------------------------</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Infantry : </t><t color='#f2cd3a' align='right'> %2</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Soft Vehicle : </t><t color='#f2cd3a' align='right'> %3</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Armor : </t><t color='#f2cd3a' align='right'> %4</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Air : </t><t color='#f2cd3a' align='right'> %5</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Deaths: </t><t color='#f2cd3a' align='right'> %6</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Friendly Fire: </t><t color='#f2cd3a' align='right'> %15</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Total Revive: </t><t color='#f2cd3a' align='right'> %16</t><br/>
	<t size='1.0' color='#1fb505' align='left' >Total Cash: </t><t color='#1fb505' align='right'> %7</t><br/>
	<t size='1.0' color='#180fd8' align='left' >Total XP: </t><t color='#180fd8' align='right'> %8</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Last Login Time: </t><t color='#f2cd3a' align='right'> %12:%13:%14</t><br/>
	<t size='1.0' color='#b5051f' align='left' >Last Login Date: </t><t color='#f2cd3a' align='right'> %10/%11/%9</t><br/>
	<t size='1.5' color='#f2cd3a' align='left'>----------------------------------------</t><br/>",
	name player, _infantry_kills, _soft_vehicle_kills, _armor_kills, _air_kills, _deaths, _total_score, _total_poiint, _year, _month, _day, _hour, _minutes, _second, _total_teamkill, _total_rivive
];

hint _Playerstats;
player setVariable ["Saved_Loadout", getUnitLoadout player];

UN_savedata = {
	private _dataplayrname = profileName;
	private _dataplayruid = getPlayerUID player;
	private _dataplayrowner = clientOwner;
	private _lesscorearray = getPlayerScores player;
	private _dataplayrloadout = getUnitLoadout player;

	private _pScore = score player;
	private _therankin = missionNamespace getVariable "therankin";
	private _lesextrap = missionNamespace getVariable "lesextrap";
	private _lesscrotrap = missionNamespace getVariable "lesscrotrap";
	private _savelastxp = missionNamespace getVariable "savelastxp";

	private _themasterrankin = missionNamespace getVariable "themasterrankin";

	private _inftherankin = missionNamespace getVariable "inftherankin";
	private _softtherankin = missionNamespace getVariable "softtherankin";
	private _armmortherankin = missionNamespace getVariable "armmortherankin";
	private _airtherankin = missionNamespace getVariable "airtherankin";
	private _deaththerankin = missionNamespace getVariable "deaththerankin";

	private _infkilllastxp = missionNamespace getVariable "infkilllastxp";
	private _softvehlastxp = missionNamespace getVariable "softvehlastxp";
	private _amorkilllastxp = missionNamespace getVariable "amorkilllastxp";
	private _airkilllastxp = missionNamespace getVariable "airkilllastxp";
	private _deathlastxp = missionNamespace getVariable "deathlastxp";
	private _total_teamkill = missionNamespace getVariable "totaltk";
	private _total_rivive = missionNamespace getVariable "totalRevive";
	private _stopdb = missionNamespace getVariable "stopdb";

	private _dberror = missionNamespace getVariable "dberror";

	private _mutexlock = 0;
	private _mutexlock1 = 0;
	private _mutexlock2 = 0;
	private _mutexlock3 = 0;
	private _mutexlock4 = 0;
	private _mutexlock5 = 0;
	tosavedb1 = 0;
	tosavedb2 = 0;
	tosavedb3 = 0;
	tosavedb4 = [];

	private _levraieest = _lesscorearray select 5;

	private _infantry_kills = _lesscorearray select 0;
	private _soft_vehicle_kills = _lesscorearray select 1;
	private _armor_kills = _lesscorearray select 2;
	private _air_kills = _lesscorearray select 3;
	private _deaths = _lesscorearray select 4;

	//// /////////////////////////moo//// /////////////////////////////////////

	if (true) then {
		astertosavedb3 = _themasterrankin +_lesextrap;
	};
	//// //////////////////////////////////total tk  revive//// /////////////////////////////////////////////

	if (_total_teamkill >= 0) then {
		total_teamkillSa = _total_teamkill;
	};

	if (_total_rivive >= 0) then {
		total_riviveS = _total_rivive;
	};

	//// ////////////////////////////////////////////////////////////////////////////////////////

	   //// ///////////////////////////////////tatoal scor//// /////////////////////////// 
	if ((_savelastxp == _levraieest) && (_mutexlock == 0)) then {
		tosavedb3 = _therankin +_lesextrap;
		_mutexlock = 1;
		missionNamespace setVariable ["lesextrap", 0, _dataplayrowner];
	};

	if ((_savelastxp > _levraieest) && (_mutexlock == 0)) then {
		tosavedb3 = _therankin + _lesextrap;
		_mutexlock = 1;
		missionNamespace setVariable ["lesextrap", 0, _dataplayrowner];
	};

	if (_savelastxp < _levraieest) then {
		tosavedb1 = _levraieest - _savelastxp;
		tosavedb3 = tosavedb1 + _therankin;
		_mutexlock = 1;
		missionNamespace setVariable ["lesextrap", 0, _dataplayrowner];
	};
	   //// ////////////////////////////////////tatoal scor//// ///////////////////////////

	   //// ///////////////////////////////////tatoal INF KIL//// /////////////////////////// 
	if ((_infkilllastxp == _infantry_kills) && (_mutexlock1 == 0)) then {
		inftosavedb3 = _inftherankin;
		_mutexlock1 = 1;
	};

	if ((_infkilllastxp > _infantry_kills) && (_mutexlock1 == 0)) then {
		inftosavedb3 = _inftherankin;
		_mutexlock1 = 1;
	};

	if (_infkilllastxp < _infantry_kills) then {
		inftosavedb1 = _infantry_kills - _infkilllastxp;
		inftosavedb3 = inftosavedb1 + _inftherankin;
		_mutexlock1 = 1;
	};
	   //// ////////////////////////////////////tatoal scor//// ///////////////////////////

	   //// ///////////////////////////////////tatoal soft vehicle KIL//// /////////////////////////// 
	if ((_softvehlastxp == _soft_vehicle_kills) && (_mutexlock2 == 0)) then {
		softtosavedb3 = _softtherankin;
		_mutexlock2 = 1;
	};

	if ((_softvehlastxp > _soft_vehicle_kills) && (_mutexlock2 == 0)) then {
		softtosavedb3 = _softtherankin;
		_mutexlock2 = 1;
	};

	if (_softvehlastxp < _soft_vehicle_kills) then {
		softtosavedb1 = _soft_vehicle_kills - _softvehlastxp;
		softtosavedb3 = softtosavedb1 + _softtherankin;
		_mutexlock2 = 1;
	};
	   //// ////////////////////////////////////////////////////////////////////////////////////////

	   //// ///////////////////////////////////tatoal amor KIL//// /////////////////////////// 
	if ((_amorkilllastxp == _armor_kills) && (_mutexlock3 == 0)) then {
		armtosavedb3 = _armmortherankin;
		_mutexlock3 = 1;
	};

	if ((_amorkilllastxp > _armor_kills) && (_mutexlock3 == 0)) then {
		armtosavedb3 = _armmortherankin;
		_mutexlock3 = 1;
	};

	if (_amorkilllastxp < _armor_kills) then {
		armtosavedb1 = _armor_kills - _amorkilllastxp;
		armtosavedb3 = armtosavedb1 + _armmortherankin;
		_mutexlock3 = 1;
	};
	   //// ////////////////////////////////////////////////////////////////////////////////////////

	   //// ///////////////////////////////////tatoal air KIL//// /////////////////////////// 
	if ((_airkilllastxp == _air_kills) && (_mutexlock4 == 0)) then {
		airtosavedb3 = _airtherankin;
		_mutexlock4 = 1;
	};

	if ((_airkilllastxp > _air_kills) && (_mutexlock4 == 0)) then {
		airtosavedb3 = _airtherankin;
		_mutexlock4 = 1;
	};

	if (_airkilllastxp < _air_kills) then {
		airtosavedb1 = _air_kills - _airkilllastxp;
		airtosavedb3 = airtosavedb1 + _airtherankin;
		_mutexlock4 = 1;
	};
	   //// ////////////////////////////////////////////////////////////////////////////////////////

	   //// ///////////////////////////////////tatoal deat//// /////////////////////////// 
	if ((_deathlastxp == _deaths) && (_mutexlock5 == 0)) then {
		deathtosavedb3 = _deaththerankin;
		_mutexlock5 = 1;
	};

	if ((_deathlastxp > _deaths) && (_mutexlock5 == 0)) then {
		deathtosavedb3 = _deaththerankin;
		_mutexlock5 = 1;
	};

	if (_deathlastxp < _deaths) then {
		deathtosavedb1 = _deaths - _deathlastxp;
		deathtosavedb3 = deathtosavedb1 + _deaththerankin;
		_mutexlock5 = 1;
	};
	   //// //////////////////////////////////total tk and reviv//// /////////////////////////////////////////////

	    //// ////////////////////////////////////////////////////////////////////////////////////////

	_therownerid = clientOwner;
	missionNamespace setVariable ["therankin", tosavedb3, _therownerid];
	missionNamespace setVariable ["lesextrap", 0, _dataplayrowner];
	missionNamespace setVariable ["inftherankin", inftosavedb3, _therownerid];
	missionNamespace setVariable ["softtherankin", softtosavedb3, _therownerid];
	missionNamespace setVariable ["armmortherankin", armtosavedb3, _therownerid];
	missionNamespace setVariable ["airtherankin", airtosavedb3, _therownerid];
	missionNamespace setVariable ["deaththerankin", deathtosavedb3, _therownerid];
	missionNamespace setVariable ["themasterrankin", astertosavedb3, _therownerid];

	missionNamespace setVariable ["savelastxp", _levraieest, _therownerid];
	_levraieest0 = _lesscorearray select 0;
	missionNamespace setVariable ["infkilllastxp", _levraieest0, _therownerid];
	_levraieest1 = _lesscorearray select 1;
	missionNamespace setVariable ["softvehlastxp", _levraieest1, _therownerid];
	_levraieest2 = _lesscorearray select 2;
	missionNamespace setVariable ["amorkilllastxp", _levraieest2, _therownerid];
	_levraieest3 = _lesscorearray select 3;
	missionNamespace setVariable ["airkilllastxp", _levraieest3, _therownerid];
	_levraieest4 = _lesscorearray select 4;
	missionNamespace setVariable ["deathlastxp", _levraieest4, _therownerid];
	missionNamespace setVariable ["villeaceDBblock", 0, _therownerid];

	profileNamespace setVariable ["LAltitudeP", (missionNamespace getVariable "LAltitude")];
	profileNamespace setVariable ["NAK_iconColorP", (missionNamespace getVariable "NAK_iconColor")];
	profileNamespace setVariable ["NAK_iconColor1P", (missionNamespace getVariable "NAK_iconColor1")];
	profileNamespace setVariable ["lesniperpourP", (missionNamespace getVariable "lesniperpour")];
	profileNamespace setVariable ["lesniperpour1P", (missionNamespace getVariable "lesniperpour1")];
	profileNamespace setVariable ["hexdistanceP", (missionNamespace getVariable "hexdistance")];
	profileNamespace setVariable ["loadTIParameterStartLocal", (missionNamespace getVariable "setTIParameterStart")];
	profileNamespace setVariable ["loadTIParameterWidthLocal", (missionNamespace getVariable "setTIParameterWidth")];
	saveProfileNamespace;

	_le1 = getUnitLoadout player;
	_le2 = damage player;
	_le3 = getPosWorld player;
	_le4 = direction player;
	_le5 = str (stance player);
	_le6 = missionNamespace getVariable ["BAS_isIncapacitated", false];
	_le7 = getPlayerUID player;
	_le8 = getPlayerUID player;

	if (isNil "inftosavedb3") then {
		inftosavedb3 = 0;
	};
	if (isNil "softtosavedb3") then {
		softtosavedb3 = 0;
	};
	if (isNil "armtosavedb3") then {
		armtosavedb3 = 0;
	};
	if (isNil "airtosavedb3") then {
		airtosavedb3 = 0;
	};
	if (isNil "deathtosavedb3") then {
		deathtosavedb3 = 0;
	};
	if (isNil "tosavedb3") then {
		tosavedb3 = 0;
	};
	if (isNil "astertosavedb3") then {
		astertosavedb3 = 0;
	};
	if (isNil "total_teamkillSa") then {
		total_teamkillSa = 0;
	};
	if (isNil "total_riviveS") then {
		total_riviveS = 0;
	};

	if (inftosavedb3 < 1) then {
		inftosavedb3 = 0;
	};
	if (softtosavedb3 < 1) then {
		softtosavedb3 = 0;
	};
	if (armtosavedb3 < 1) then {
		armtosavedb3 = 0;
	};
	if (airtosavedb3 < 1) then {
		airtosavedb3 = 0;
	};
	if (deathtosavedb3 < 1) then {
		deathtosavedb3 = 0;
	};
	if (tosavedb3 < 1) then {
		tosavedb3 = 0;
	};
	if (astertosavedb3 < 1) then {
		astertosavedb3 = 0;
	};
	if (total_teamkillSa < 1) then {
		total_teamkillSa = 0;
	};
	if (total_riviveS < 1) then {
		total_riviveS = 0;
	};
	   // total_teamkillSa = 0;
	if (_dberror == 1) exitWith {};

	if ((inftosavedb3 == 0) && (softtosavedb3 == 0) && (armtosavedb3 == 0) && (airtosavedb3 == 0) && (deathtosavedb3 == 0) && (tosavedb3 == 0) && (astertosavedb3 == 0) && (total_teamkillSa == 0) && (total_riviveS == 0)) exitWith {};

	if (_stopdb <= tosavedb3) then {
		BAS_persistence_client_fnc_storePlayerData = [ inftosavedb3,
			softtosavedb3,
			armtosavedb3,
			airtosavedb3,
			deathtosavedb3,
			total_teamkillSa,
			total_riviveS,
			tosavedb3,
			astertosavedb3,
			_dataplayrloadout,
		_dataplayruid];
		publicVariableServer "BAS_persistence_client_fnc_storePlayerData";
	};
};
(findDisplay 46) displayAddEventHandler ["KeyDown", "if ( _this select 1 == 1) then {
	[] call UN_savedata;
}"];