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
if (_lecallers >= FIRSTAIDCRATE) then
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

			_leresult = _lecallers - FIRSTAIDCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01; 
		_pos = getpos player;
		
		_toBoxItems = ["ItemGPS","ItemWatch","ItemRadio","ItemMap","ItemCompass","O_NVGoggles_grn_F","NVGogglesB_blk_F","NVGogglesB_grn_F","NVGogglesB_gry_F","NVGoggles_OPFOR","NVGoggles","NVGoggles_INDEP","acc_flashlight","acc_flashlight_smg_01","acc_pointer_IR","acc_flashlight_pistol","acc_esd_01_flashlight","optic_Nightstalker","optic_tws_mg","optic_tws"];
		_toBoxMags = ["UGL_FlareYellow_F","UGL_FlareWhite_F","UGL_FlareRed_F","UGL_FlareCIR_F","UGL_FlareGreen_F","FlareYellow_F","FlareWhite_F","FlareRed_F","FlareGreen_F","Laserbatteries","3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareCIR_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareYellow_F","Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow","B_IR_Grenade"];
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
