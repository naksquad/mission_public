#include "..\..\DefinePrice.hpp"
_lock1 = missionNamespace getVariable "lock1";
if (_lock1 == 1) exitWith {
	playSound "AddItemFailed";
	hint "Remote Arsenal System is not Available, Please Wait For The System To Cool Down";

};

_lecallers = missionNamespace getVariable "themasterrankin";
if (isNil "_lecallers") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_lecallers = 0;
};
if (_lecallers >= AAMATRIX) then
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

		_leresult = _lecallers - AAMATRIX;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _leresult, _therownerid];
		
		sleep 0.01; 
		_pos = getpos player;

		_leboxtosend =  createVehicle ["B_CargoNet_01_ammo_F", [8419.31,25116.1,-3.05176e-005], [], 0, 'NONE'];
		_leboxtosend allowDamage false;
		clearWeaponCargoGlobal _leboxtosend;
		clearMagazineCargoGlobal _leboxtosend;
		clearItemCargoGlobal _leboxtosend;
		clearBackpackCargoGlobal _leboxtosend;
		[toUpper localize "STR_A3_WL_airdrop_underway"] spawn BIS_fnc_WLSmoothText; 

		BIS_holdActionSFX = (getArray (configFile >> "CfgSounds" >> "Orange_Action_Wheel" >> "sound")) param [0, ""]; 
		BIS_holdActionSFX = BIS_holdActionSFX + ".wss"; 
		BIS_holdActionProgress =  
		{ 
		private _progressTick = _this select 4;  
		if ((_progressTick % 2) == 0) exitwith {};  
		
		private _coef = _progressTick / 24;  
		playSound3D [BIS_holdActionSFX, player, false, getPosASL player, 1, 0.9 + 0.2 * _coef]; 
		}; 
		
		[
			_leboxtosend,											// Object the action is attached to
			"Open Arsenal",										// Title of the action
			"\A3\Ui_f\data\Logos\a_64_ca.paa",	// Idle icon shown on screen
			"\A3\Ui_f\data\Logos\a_64_ca.paa",	// Progress icon shown on screen
			"_this distance _target < 3",						// Condition for the action to be shown
			"_caller distance _target < 3",						// Condition for the action to progress
			{},													// Code executed when action starts
			{},													// Code executed on every progress tick
			{ ["Open",true] call BIS_fnc_arsenal; },				// Code executed on completion
			{},													// Code executed on interrupted
			[],													// Arguments passed to the scripts as _this select 3
			12,													// Action duration [s]
			0,													// Priority
			true,												// Remove on completion
			false												// Show in unconscious state 
		] remoteExec ["BIS_fnc_holdActionAdd", 0, _leboxtosend];	// MP compatible implementation



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

