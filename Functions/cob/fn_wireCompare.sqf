

_lewire = missionNamespace getVariable "clientwire";

_uiwirec = missionNamespace getVariable "uiwirec";

if (_lewire isEqualTo _uiwirec ) then {
	missionNamespace setVariable ["DEFUSED", 1, true];
	cutText ["BOMB DEFUSED", "PLAIN DOWN"];
	playSound "button_close";
} else {
	_jesusjetaime = missionNamespace getVariable "jesusjetaime";
    missionNamespace setVariable ["ARMED", 1, true];
	cutText ["BOMB ARMED Runnnnnnnnnnnnnnnnnnn...!!!!!!", "PLAIN DOWN"];
	playSound "button_wrong";
	"ammo_Missile_Cruise_01" createVehicle _jesusjetaime;

};
