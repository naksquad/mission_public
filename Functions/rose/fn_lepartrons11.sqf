private _theadmins = _this # 0;
removeAllActions _theadmins;
// [( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
//VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];
 
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Teleport";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

hint "Click on the Map where you'd like to Jump.";
openMap true;
NAK_Jump_mapclick = false;
onMapSingleClick "NAK_Jump_clickpos = _pos; NAK_Jump_mapclick = true; onMapSingleClick ''; true;";

waitUntil {NAK_Jump_mapclick or !(visiblemap)};

if (!visibleMap) exitwith {
	systemChat "Jump Canceled.";
	breakOut "main";
};

_pos = NAK_Jump_clickpos;
player setPos _pos;

_text = format ['%1 TP',_lenondu];
_text remoteExec ['systemChat',-2];


openMap false;

_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

