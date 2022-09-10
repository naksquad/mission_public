_theadmins = _this # 0;
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Pilot Warning";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";

_iconL  = "<img size='3' color='#ffffff' image='a3\ui_f\data\map\vehicleicons\iconplane_ca.paa' valign='top' align='left'/>"; 
_iconR  = "<img size='3' color='#ffffff'  image='a3\ui_f\data\map\vehicleicons\iconhelicopter_ca.paa' valign='top' align='right'/>"; 
_title  = "<t font='PuristaBold' valign='top' color='#ff0000' size='3' shadow='1' shadowColor='#000000' align='center'>Pilots!</t><br/><br/>"; 
_text   = "<t size='1.5' align='center'>All pilots are required to be in TeamSpeak!  Either join TeamSpeak or exit the pilot role.</t>"; 

if (typeOf player isEqualTo "B_Pilot_F") then {
	hint parseText (_iconL + _iconR + _title + _text);
};
if (typeOf player isEqualTo "B_soldier_UAV_F") then {
	hint parseText (_iconL + _iconR + _title + _text);
};
