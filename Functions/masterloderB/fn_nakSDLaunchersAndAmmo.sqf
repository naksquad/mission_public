#include "..\..\DefinePrice.hpp"

private _LAUNCHERCRATE = LAUNCHERCRATE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_LAUNCHERCRATE = LAUNCHERCRATEELT;
};

_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Crate drop system is not available, please wait for the system to cool down";

};

_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= _LAUNCHERCRATE) then
	{
		if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1]; 
		_roadrunner = missionNamespace getVariable "roadrunner";
		if (_roadrunner == 1) then 
		{	
			_mastragraba = missionNamespace getVariable "mastragraba";
			deleteVehicle _mastragraba;
		};
		playSound "AddItemOK";
		closeDialog 0; 

		_leresult = _lecallers - _LAUNCHERCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;
		
		_toBoxBackPacks = ["B_AssultPack_khk","B_Carryall_khk","B_Bergen_mcamo_F","B_kitbag_tan"];
		_toBoxWeapons = ["launch_I_Titan_short_F","launch_MRAWS_olive_rail_F","launch_MRAWS_olive_F","launch_RPG7_F","launch_B_Titan_olive_F","launch_RPG32_green_F","launch_NLAW_F","launch_O_Vorona_green_F"];
		_toBoxMags = ["Titan_AA","Titan_AT","Titan_AP","NLAW_F","MRAWS_HEAT_F","MRAWS_HE_F","RPG7_F","RPG32_HE_F","RPG32_F","MRAWS_HEAT55_F","Vorona_HE","Vorona_HEAT"];
			
		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 

		{
			_leboxtosend addBackpackCargoGlobal  [_x, 1]; sleep 0.05;
		} foreach _toBoxBackPacks;
		{
			_leboxtosend addItemCargoGlobal [_x, 1]; sleep 0.05;
		} foreach _toBoxWeapons;
		{
			_leboxtosend addItemCargoGlobal [_x, 10]; sleep 0.05;
		} foreach _toBoxMags;

		playSound "airdroppros"; sleep 1; playSound3D ["A3\Data_F_Warlords\sfx\flyby.wss", objNull, FALSE, (position player) vectorAdd [0, 0, 100]];
		missionNamespace setVariable ["mastragraba", _leboxtosend]; 
		missionNamespace setVariable ["roadrunner", 1]; 
		[_pos,_leboxtosend] call NAK_fnc_vbnetDropB;
		sleep COOLDOWNSYST;
		missionNamespace setVariable ["lock1", 0];
	};					
}
else
{
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};

