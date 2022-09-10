

_code = missionNamespace getVariable "LECODE";
_LEINPUTCODE = missionNamespace getVariable "LEINPUTCODE";

if (_code isEqualTo _LEINPUTCODE ) then {
	 missionNamespace setVariable ["DEFUSED", 1, true];
	cutText ["BOMB DEFUSED", "PLAIN DOWN"];
	
	playSound "button_close";
} else {

 	missionNamespace setVariable ["ARMED", 1, true];
	_jesusjetaime = missionNamespace getVariable "jesusjetaime";
	cutText ["BOMB ARMED Runnnnnnnnnnnnnnnnnnn...KABOOOOOOOOO!!!!!!", "PLAIN DOWN"];
	playSound "button_wrong";
	"ammo_Missile_Cruise_01" createVehicle _jesusjetaime;
};
 CODEINPUT = []; publicVariable "CODEINPUT";
//Return Value
//_code