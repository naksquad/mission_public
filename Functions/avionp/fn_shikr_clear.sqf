 private ["_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_v","_ctrl","_pylonsLoadout","_pylonPaths","_pylons","_index"];

_v = (vehicle player);																						
 _pylons = 	["","","","","","","","","","","","",""];
 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _v >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ _v removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _v;
{ _v setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;