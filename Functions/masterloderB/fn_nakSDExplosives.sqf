#include "..\..\DefinePrice.hpp"

private _EXPLOSIVESCRATE = EXPLOSIVESCRATE;

if ((missionNameSpace getVariable "isNakElite")) then {
	_EXPLOSIVESCRATE = EXPLOSIVESCRATEELT;
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
if (_lecallers >= _EXPLOSIVESCRATE) then
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

			_leresult = _lecallers - _EXPLOSIVESCRATE;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];

		sleep 0.01; 
		_pos = getpos player;
		
		_toBoxBackPacks = ["B_AssultPack_khk","B_Carryall_khk","B_Bergen_mcamo_F","B_kitbag_tan"];
		_toBoxMags = ["APERSBoundingMine_Range_Mag","APERSMine_Range_Mag","APERSMineDispenser_Mag","APERSTripMine_Wire_Mag","ATMine_Range_Mag","ClaymoreDirectionalMine_Remote_Mag","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag","MiniGrenade","HandGrenade","B_IR_Grenade"];
		
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
