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
if (_lecallers >= PERSONALAMMOCRATE) then
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

			_leresult = _lecallers - PERSONALAMMOCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;
	

		//Getting box ready
		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 
		
		//Get Players weapons and ammo for those weapons
		_unitsChecked = [player];
		_allPlayerWeapons = [];

		{
		_mainWeapon = (getUnitloadout _x select 0) select 0;
		_launcher = (getUnitloadout _x select 1) select 0;
		_handGun = (getUnitloadout _x select 2) select 0;
		if(!isNil "_mainWeapon") then {_allPlayerWeapons pushBackUnique _mainWeapon};
		if(!isNil "_launcher") then {_allPlayerWeapons pushBackUnique _launcher};
		if(!isNil "_handGun") then {_allPlayerWeapons pushBackUnique _handGun};
		} forEach _unitsChecked;

		//get all fitting munitions for said weapons
		_MagAmount = 20;
		_toBoxMags = [];
		_uniquemags = [];
		{
		_magazineTypeS = getarray (configfile >> "CfgWeapons" >> _x >>"magazines");
			{
				_uniquemags = _x;
				_toBoxMags pushBackUnique _uniquemags; 
			} forEach _magazineTypeS;
		} forEach _allPlayerWeapons;

		{
		_leboxtosend addItemCargoGlobal [_x, _MagAmount]; sleep 0.1;
		} forEach _toBoxMags;
		
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





