private ["_load1","_load2","_load3","_all_pylon","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo (vehicle player);

 if (isEngineOn (vehicle player)) exitWith {hint parseText _tooLow};
  if (fuel (vehicle player) < 0.980000) exitWith {hint parseText _tooLowfuel};



disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 1000000; 

if (_prayGod == 1) then
{
   switch (_TheGodPhase2) do {
      case "Save to loadout 1": {
         _all_pylon = getPylonMagazines (vehicle player);
         profileNamespace setVariable ["Csavepylon1", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 1 Saved."
      };
      case "Save to loadout 2": {
         _all_pylon = getPylonMagazines (vehicle player);
         profileNamespace setVariable ["Csavepylon2", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 2 Saved."
      };
      case "Save to loadout 3": {
         _all_pylon = getPylonMagazines (vehicle player);
         profileNamespace setVariable ["Csavepylon3", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 3 Saved."
      };
   };
}
else
{
   switch (_TheGodPhase2) do {
      case "Load loadout 1": {
         if !(isnil {profileNamespace getVariable "Csavepylon1"}) then {
               
            _load1 = profileNamespace getVariable "Csavepylon1";
         
            private _pylons = _load1;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { (vehicle player) removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines (vehicle player);
            { (vehicle player) setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };
      };
      case "Load loadout 2": {
          if !(isnil {profileNamespace getVariable "Csavepylon2"}) then {
               
            _load2 = profileNamespace getVariable "Csavepylon2";
         
            private _pylons = _load2;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { (vehicle player) removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines (vehicle player);
            { (vehicle player) setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };
      };
      case "Load loadout 3": {
          if !(isnil {profileNamespace getVariable "Csavepylon3"}) then {
               
            _load3 = profileNamespace getVariable "Csavepylon3";
         
            private _pylons = _load3;
            private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
            { (vehicle player) removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines (vehicle player);
            { (vehicle player) setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _pylons;
            hint "Pylons Loaded."
         } else 
         {
            hint "Loadout need to be saved first."
         };

      };
   };	
};





