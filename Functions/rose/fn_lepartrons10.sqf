private _theadmins = _this # 0;
removeAllActions _theadmins;
//[( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
//VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Mines Deleted";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

_Mines = allMines; 
_mineCount = 0;
{
	if ((_theadmins distance _x) < 500) then {
	deleteVehicle _x;
	_mineCount = _mineCount + 1
	};
} forEach _Mines;

_text = format ['%1 RM, %2',_lenondu,_mineCount];
_text remoteExec ['systemChat',-2];

hint format ["%1 Mines Deleted",_mineCount];
		
_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};
