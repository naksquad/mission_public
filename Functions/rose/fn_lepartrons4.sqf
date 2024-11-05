private _theadmins = _this # 0;
removeAllActions _theadmins;
// VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {
	createDialog 'nastynak007';
}, [], -100, false, true, "", "true", -1, false, "", ""];

private _lenondu = name _theadmins;
private _uidr = getPlayerUID _theadmins;

private _action = "Show Pilots";
private _log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
sendlogfile = [_log, "AdminMenuLog"];
publicVariableServer "sendlogfile";

private _jeova = ["uav1"];
if (str _theadmins in _jeova) then {
	_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {
		createDialog 'playeruavspawaka'
	}];
};


private _Morpheus = [];
private _leuav = [];
private _leatc = [];
{
	if (typeOf _x == "B_Pilot_F") then {
		_Morpheus pushBack name _x;
	};
	if (typeOf _x == "B_soldier_UAV_F") then {
		_leuav pushBack name _x;
	};
	if (typeOf _x == "B_RangeMaster_F") then {
		_leatc pushBack name _x;
	};
} forEach playableUnits;


_Morpheus pushBack 'thelast&end';


hint format ["PILOT Slot: %1. UAV Slot: %2. ATC Slot %3", _Morpheus, _leuav, _leatc];

// private _ineedhelp = composeText [parsetext format ["<img size='7' image='Media\images\nakcommand.paa'/><br/><t size='1.2' align='left' color='#f7ce00'>PILOT Slot: %1 <br/><t size='1.2' align='left' color='#5160c2'>UAV Slot: %2 <br/><t size='1.2' align='left' color='#eb0c0c'>ATC Slot %3 ", _Morpheus, _leuav, _leatc]];
// hint _ineedhelp;