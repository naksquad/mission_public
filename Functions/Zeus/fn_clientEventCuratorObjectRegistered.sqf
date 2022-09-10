/*/
File: fn_clientEventCuratorObjectRegistered.sqf
Author:

	Quiksilver / VileAce
	
Description:

	Curator Object Registered
__________________________________________________/*/
//VileAce changed params from _module to _curator and passed this to the function.  then set _module to _this select 0;

params ["_curator","_input"];

titleText ["<t color='#ffffff' shadow='1' size='2'>Press SHIFT+F3 to update objects<br/>displayed on the left hand side.</t>", "PLAIN DOWN", -1, false, true];

[] spawn {
_module = getAssignedCuratorLogic player;
waitUntil {(!isNull (findDisplay 312))};
	(findDisplay 312) displayAddEventHandler ["KeyDown","_this call Zeus_fnc_clientEventCuratorKeyDown"];
	_uid = getPlayerUID player;

	[_module,'Init'] call (missionNamespace getVariable 'BIS_fnc_moduleInit');
	
	{
		_module removeAllEventHandlers _x;
	} forEach ['curatorPinged'];
					
	[(getAssignedCuratorLogic player), [entities [[],['Logic'],true], true]] remoteExec ["addCuratorEditableObjects", 2];

	if (_uid in (missionNameSpace getVariable "LimitedZeus")) then {

		[(getAssignedCuratorLogic player), ["a3_modules_f_curator_respawn","a3_modules_f_curator_multiplayer","a3_modules_f_kart","a3_modules_f_mark_firingdrills","a3_modules_f_curator_intel","a3_modules_f_curator_environment","a3_modules_f_curator_effects","a3_modules_f_bootcamp","a3_modules_f_bootcamp_misc","a3_modules_f_curator_animals","a3_modules_f_curator_cas","a3_modules_f_curator_ordnance","a3_modules_f_curator_objectives","a3_characters_f_bootcamp","a3_structures_f_bootcamp_vr_blocks","a3_structures_f_bootcamp_vr_coverobjects","a3_structures_f_bootcamp_vr_helpers","a3_structures_f_exp_a_vr_blocks","a3_structures_f_exp_a_vr_helpers","a3_structures_f_mark_vr_helpers","a3_structures_f_mark_vr_shapes","a3_structures_f_mark_vr_targets","a3_structures_f_heli_vr_helpers","a3_modules_f_curator_lightning","a3_data_f_curator_respawn","curatoronly_modules_f_curator_environment","curatoronly_modules_f_curator_lightning","curatoronly_modules_f_curator_objectives","curatoronly_modules_f_curator_ordnance","curatoronly_modules_f_curator_mines","curatoronly_modules_f_curator_animals"
		]] remoteExec ["removeCuratorAddons", 2];
	};
};