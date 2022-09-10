
private ["_load1","_load2","_load3","_all_pylon","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo pleasework10;

 if (isEngineOn pleasework10) exitWith {hint parseText _tooLow};
  if (fuel pleasework10 < 0.980000) exitWith {hint parseText _tooLowfuel};

_pylons = ["",""];

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{ pleasework10 removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines pleasework10;
{ pleasework10 setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;

disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 1000000; 

if (_prayGod == 1) then
{
   switch (_TheGodPhase2) do {
      case "Save to loadout 1": {
         _all_pylon = getPylonMagazines pleasework10;
         profileNamespace setVariable ["Msavepylon1", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 1 Saved."
      };
      case "Save to loadout 2": {
         _all_pylon = getPylonMagazines pleasework10;
         profileNamespace setVariable ["Msavepylon2", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 2 Saved."
      };
      case "Save to loadout 3": {
         _all_pylon = getPylonMagazines pleasework10;
         profileNamespace setVariable ["Msavepylon3", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 3 Saved."
      };
   };
}
else
{
   switch (_TheGodPhase2) do {
      case "Load loadout 1": {
         if !(isnil {profileNamespace getVariable "Msavepylon1"}) then {
               
            _load1 = profileNamespace getVariable "Msavepylon1";
            missionNamespace setVariable ["pilotGunnergrey", _load1];
            private _pylons = _load1;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { pleasework10 removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines pleasework10;
            { pleasework10 setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };
      };
      case "Load loadout 2": {
          if !(isnil {profileNamespace getVariable "Msavepylon2"}) then {
               
            _load2 = profileNamespace getVariable "Msavepylon2";
         missionNamespace setVariable ["pilotGunnergrey", _load2];
            private _pylons = _load2;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { pleasework10 removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines pleasework10;
            { pleasework10 setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };
      };
      case "Load loadout 3": {
          if !(isnil {profileNamespace getVariable "Msavepylon3"}) then {
               
            _load3 = profileNamespace getVariable "Msavepylon3";
         missionNamespace setVariable ["pilotGunnergrey", _load3];
            private _pylons = _load3;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { pleasework10 removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines pleasework10;
            { pleasework10 setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };

      };
   };	
};





