 private ["_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo (vehicle player);
 if (isEngineOn (vehicle player)) exitWith {hint parseText _tooLow};
  if (fuel (vehicle player) < 0.980000) exitWith {hint parseText _tooLowfuel};

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
         profileNamespace setVariable ["Hsavepylon1", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 1 Saved."
      };
      case "Save to loadout 2": {
         _all_pylon = getPylonMagazines (vehicle player);
         profileNamespace setVariable ["Hsavepylon2", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 2 Saved."
      };
      case "Save to loadout 3": {
         _all_pylon = getPylonMagazines (vehicle player);
         profileNamespace setVariable ["Hsavepylon3", _all_pylon];
         saveprofileNamespace;
         hint "Loadout 3 Saved."
      };
   };
}
else
{
   switch (_TheGodPhase2) do {
      case "Load loadout 1": {
         if !(isnil {profileNamespace getVariable "Hsavepylon1"}) then {
               
            _load1 = profileNamespace getVariable "Hsavepylon1";
         
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
          if !(isnil {profileNamespace getVariable "Hsavepylon2"}) then {
               
            _load2 = profileNamespace getVariable "Hsavepylon2";
         
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
          if !(isnil {profileNamespace getVariable "Hsavepylon3"}) then {
               
            _load3 = profileNamespace getVariable "Hsavepylon3";
         
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






disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 19000; 

switch (_TheGodPhase2) do {
    case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Scalpel": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "???????????????": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

   
   
   
    case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  
    case "Twin Cannon 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Twin ????????? 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Double canon 20??mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Ca????n gemelo 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Cannone doppio 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Podw??jne dzia??ko 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "?????????????????? 20-???? ??????????": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Zwillingsgesch??tz 20??mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "20mm dvojkan??n": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Canh??o duplo de 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "?????? ????????? 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "???????????? 20 ??????": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "????????????????????????20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "??kiz Top 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "Minigun 6.5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 ????": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5??mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6.5mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6.5????????": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Skyfire 19x": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "19 Skyfire": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Skyfire - 19 ????.": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "????????????????????????x19": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Black": {[(vehicle player), ["Black",1], true ] call BIS_fnc_initVehicle;};
    case "Black custom": {[(vehicle player), ["Blackcustom",1], true ] call BIS_fnc_initVehicle;};
    case "Opfor": {[(vehicle player), ["Opfor",1], true ] call BIS_fnc_initVehicle;};
};