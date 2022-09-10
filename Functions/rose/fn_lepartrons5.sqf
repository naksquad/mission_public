
_theadmins = _this # 0;
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Start Spectator";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

removeAllActions _theadmins;
//[( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
//VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];
missionNamespace setVariable ["lespect", 1];

_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};


   hint format [" Exit Button added to the Esc Menu"];

["Initialize", [_theadmins, [west], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
