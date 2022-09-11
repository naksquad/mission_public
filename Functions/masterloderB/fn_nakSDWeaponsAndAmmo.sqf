#include "..\..\DefinePrice.hpp"

private _WEAPONCRATE = WEAPONCRATE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_WEAPONCRATE = WEAPONCRATEELT;
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
if (_lecallers >= _WEAPONCRATE) then
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

		_leresult = _lecallers - _WEAPONCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01; 
		_pos = getpos player;
		
		_toBoxBackPacks = ["B_AssultPack_khk","B_Carryall_khk","B_Bergen_mcamo_F","B_kitbag_tan"];
		_toBoxItems = ["optic_Aco","optic_Aco_smg","optic_Arco_blk_F","optic_ERCO_blk_F","optic_Holosight_blk_F","optic_ico_01_black_f","optic_Yorris","optic_SOS","optic_Holosight_smg_blk_F","optic_MRCO","optic_MRD_black","optic_Hamr","muzzle_snds_acp","muzzle_snds_M","muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG_blk_F","muzzle_snds_65_TI_blk_F"];
		_toBoxWeapons = ["arifle_MXC_F","SMG_01_F","arifle_Mk20_GL_plain_F","arifle_MSBS65_black_F","arifle_MSBS65_GL_black_F","arifle_MSBS65_Mark_black_F","arifle_MX_SW_F","arifle_MSBS65_UBS_black_F","arifle_SPAR_01_GL_blk_F","hgun_P07_F","hgun_Pistol_heavy_01_F","arifle_TRG20_F","SMG_02_F","arifle_SPAR_02_blk_F","arifle_SPAR_01_blk_F","arifle_Mk20_plain_F","arifle_TRG21_F","arifle_TRG21_GL_F","arifle_MX_GL_Black_F","arifle_MX_Black_F","hgun_ACPC2_F","hgun_Pistol_01_F","hgun_Pistol_heavy_02_F"];
		_toBoxMags = ["11Rnd_45ACP_Mag","30Rnd_45ACP_Mag_SMG_01","1Rnd_Smoke_Grenade_shell","UGL_FlareWhite_F","30Rnd_65x39_caseless_msbs_mag","30Rnd_65x39_caseless_green","30Rnd_65x39_caseless_black_mag","30Rnd_9x21_Green_Mag","30Rnd_556x45_Stanag_Tracer_Green","20Rnd_556x45_UW_mag","3Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F","3Rnd_Smoke_Grenade_shell","100Rnd_65x39_caseless_black_mag_tracer","6Rnd_12Gauge_Pellets","6Rnd_12Gauge_Slug","30Rnd_45ACP_Mag_SMG_01_Tracer_Green","100Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer","16Rnd_9x21_Mag","30Rnd_9x21_Mag_SMG_02_Tracer_Green","150Rnd_556x45_Drum_Mag_F","200Rnd_556x45_Box_Tracer_F","150Rnd_556x45_Drum_Mag_Tracer_F","30Rnd_556x45_Stanag_green","50Rnd_570x28_SMG_03","30Rnd_65x39_caseless_green_mag_Tracer","10Rnd_9x21_Mag","9Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder","16Rnd_9x21_green_Mag"];

		
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
