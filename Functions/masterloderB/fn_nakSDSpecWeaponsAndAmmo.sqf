#include "..\..\DefinePrice.hpp"
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
if (_lecallers >= SPECWEAPONSCRATE) then
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

			_leresult = _lecallers - SPECWEAPONSCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;

		_toBoxItems = ["optic_NVS","optic_tws","optic_tws_mg","optic_DMS","optic_LRPS","optic_AMS","bipod_01_F_blk","bipod_02_F_blk","bipod_03_F_blk","muzzle_snds_338_black","muzzle_snds_M","muzzle_snds_H","muzzle_snds_B","muzzle_snds_93mmg","muzzle_snds_H_MG_blk_F","muzzle_snds_65_TI_blk_F","optic_ERCO_blk_F","optic_Arco_blk_F","optic_KHS_blk","optic_SOS","optic_Nightstalker"];
		_toBoxWeapons = ["arifle_SDAR_F","srifle_LRR_F","srifle_DMR_03_F","srifle_DMR_02_F","MMG_02_black_F","srifle_DMR_05_blk_F","srifle_GM6_F","arifle_MXM_Black_F","srifle_DMR_06_olive_F","LMG_Zafir_F","arifle_ARX_blk_F","srifle_DMR_01_F","MMG_01_tan_F","srifle_EBR_F","LMG_Mk200_black_F","arifle_SPAR_03_blk_F"];
		_toBoxMags = ["7Rnd_408_Mag","20Rnd_762x51_Mag","10Rnd_338_Mag","130Rnd_338_Mag","10Rnd_127x54_Mag","5Rnd_127x108_APDS_Mag","5Rnd_127x108_Mag","10Rnd_93x64_DMR_05_Mag","30Rnd_65x39_caseless_black_mag_Tracer","10Rnd_762x54_Mag","10Rnd_762x51_Mag","10Rnd_Mk14_762x51_Mag","20Rnd_556x45_UW_mag","30Rnd_65x39_caseless_black_mag","150Rnd_93x64_Mag","200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box_Tracer","150Rnd_762x54_Box","150Rnd_762x54_Box_Tracer","150Rnd_762x51_Box","150Rnd_762x51_Box_Tracer","30Rnd_65x39_caseless_green","20Rnd_650x39_Cased_Mag_F","10Rnd_50BW_Mag_F"];
		_toBoxBackPacks = ["B_AssultPack_khk","B_Carryall_khk","B_Bergen_mcamo_F","B_kitbag_tan"];
		
		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 
		
		{
			_leboxtosend addItemCargoGlobal [_x, 1]; sleep 0.05;
		} foreach _toBoxItems;			
		{
			_leboxtosend addItemCargoGlobal [_x, 1]; sleep 0.05;
		} foreach _toBoxWeapons;
		{
			_leboxtosend addItemCargoGlobal [_x, 15]; sleep 0.05;
		} foreach _toBoxMags;
		{
			_leboxtosend addBackpackCargoGlobal  [_x, 1]; sleep 0.05;
		} foreach _toBoxBackPacks;
		
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

