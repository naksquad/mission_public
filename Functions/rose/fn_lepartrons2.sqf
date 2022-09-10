private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];
 
// remoteexec function on _NAKtarget
// Function 	missionNamespace setVariable ["themasterrankin", 5000]; missionNamespace setVariable ["lock1", 0];

_uidr = getPlayerUID _theadmins;

	_action = "Funds Added and Colldown Removed";
	_log = format ["Admin: %1, UID: %2 Action: %3 for %4", _lenondu, _uidr, _action, (name _NAKtarget)];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

_NAKtarget = cursorTarget;
if (!isNull _NAKtarget) then {
	if (isPlayer _NAKtarget) then {
	
		[] remoteexec ["ROSE_fnc_addFundsAndRemoveCoolDown", cursorTarget, FALSE];

		_text = format ['%1 AFARC %2',_lenondu, _NAKtarget];
		_text remoteExec ['systemChat',-2];
//Temp remove until other steps work
//[_text,"AdminMenuLog"] remoteExecCall ["A3Log", 2];

		hint "Funds Added and Colldown Removed";
	} else {
		hint "Invalid Object/Player Selected";
	};
} else {
	hint "No Object/Player Selected.";
};


_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

