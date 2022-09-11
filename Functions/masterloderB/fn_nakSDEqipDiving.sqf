#include "..\..\DefinePrice.hpp"

private _EQUIPDIVINGCRATE = EQUIPDIVINGCRATE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_EQUIPDIVINGCRATE = EQUIPDIVINGCRATEELT;
};

_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Crate drop system is not available, please wait for the system to cool down";
};
_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then {
	missionNamespace setVariable ["themasterrankin", 0];
	_lecallers = 0;
};
if (_lecallers >= _EQUIPDIVINGCRATE) then {
	if (_lock1 == 0) then {
		missionNamespace setVariable ["lock1", 1];
		_roadrunner = missionNamespace getVariable "roadrunner";
		if (_roadrunner == 1) then {
			_mastragraba = missionNamespace getVariable "mastragraba";
			deleteVehicle _mastragraba;
		};
		playSound "AddItemOK";
		closeDialog 0;

		_leresult = _lecallers - _EQUIPDIVINGCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01;
		_pos = getPos player;

		_toBoxItems = ["ToolKit", "MineDetector", "acc_pointer_IR", "muzzle_snds_acp", "muzzle_snds_L", "muzzle_snds_H", "muzzle_snds_B", "bipod_01_F_blk", "bipod_01_F_mtp", "bipod_01_F_snd", "bipod_01_F_khk", "muzzle_snds_M", "muzzle_snds_93mmg", "muzzle_snds_65_TI_blk_F", "muzzle_snds_H_MG", "muzzle_snds_H_MG_blk_F", "muzzle_snds_H_MG_khk_F", "ItemCompass", "ItemMap", "G_AirPurifyingRespirator_01_F", "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_blk", "G_Bandanna_beast", "G_Bandanna_oli", "G_Bandanna_shades", "G_Combat", "G_Combat_Goggles_tna_F", "G_B_Diving", "G_Balaclava_TI_blk_F", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_tna_F", "G_Balaclava_TI_G_tna_F", "G_Tactical_Clear", "G_Spectacles_Tinted", "V_RebreatherB", "U_B_Wetsuit", "optic_Arco_blk_F", "optic_ERCO_blk_F", "optic_Holosight_blk_F", "optic_SOS", "optic_MRD_black", "optic_Yorris", "ItemGPS", "muzzle_snds_338_black"];
		_toBoxWeapons = ["Binocular", "Rangefinder", "Laserdesignator", "Laserdesignator_03", "arifle_SDAR_F"];
		_toBoxMags = ["Laserbatteries", "20Rnd_556x45_UW_mag"];
		_toBoxBackPacks = ["B_AssultPack_khk", "B_Carryall_khk", "B_Bergen_mcamo_F", "B_kitbag_tan"];

		_leboxtosend = createVehicle ["B_CargoNet_01_ammo_F", [8419.31, 25116.1, -3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText;
		{
			_leboxtosend addBackpackCargoGlobal [_x, 1];
			sleep 0.05;
		} forEach _toBoxBackPacks;
		{
			_leboxtosend addItemCargoGlobal [_x, 1];
			sleep 0.05;
		} forEach _toBoxItems;
		{
			_leboxtosend addItemCargoGlobal [_x, 1];
			sleep 0.05;
		} forEach _toBoxWeapons;
		{
			_leboxtosend addItemCargoGlobal [_x, 15];
			sleep 0.05;
		} forEach _toBoxMags;

		playSound "airdroppros";
		sleep 1; playSound3D ["A3\Data_F_Warlords\sfx\flyby.wss", objNull, false, (position player) vectorAdd [0, 0, 100]];
		missionNamespace setVariable ["mastragraba", _leboxtosend];
		missionNamespace setVariable ["roadrunner", 1];
		[_pos, _leboxtosend] call NAK_fnc_vbnetDropB;
		sleep COOLDOWNSYST;
		missionNamespace setVariable ["lock1", 0];
	};
} else {
	playSound "AddItemFailed";
	hint "Insufficient Funds";
};