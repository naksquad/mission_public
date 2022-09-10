_theadmins = _this # 0;
removeAllActions _theadmins;
//[( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
//VileAce remoteExec was causing duplicate entries
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];

_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Show Pilots";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

_Morpheus = [];
_leuav = [];
_leatc = [];
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

_ineedhelp = composeText [parsetext format ["<img size='7' image='Media\images\nakcommand.paa'/><br/><t size='1.2' align='left' color='#f7ce00'>PILOT Slot: %1 <br/><t size='1.2' align='left' color='#5160c2'>UAV Slot: %2 <br/><t size='1.2' align='left' color='#eb0c0c'>ATC Slot %3 ",  _Morpheus, _leuav, _leatc]];

hint _ineedhelp;



