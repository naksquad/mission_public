private _theadmins = _this # 0;
removeAllActions _theadmins;
//[( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

//VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];

	_action = "Target Deleted";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

_NAK_target = cursorTarget;
if (!isNull _NAK_target) then {
	if ((_NAK_target isKindOf "Tank") || (_NAK_target isKindOf "Car")|| (_NAK_target isKindOf "Air") || (_NAK_target isKindOf "Ship")) then {
		deleteVehicle _NAK_target;

		_text = format ['%1 TD',_lenondu];
		_text remoteExec ['systemChat',-2];

		hint "Target Deleted";
	} else {
		hint "You Cannot Delete That Object.";
	};
} else { 
	hint "No Target Selected.";
};

_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

