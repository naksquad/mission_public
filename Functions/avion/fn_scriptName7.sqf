 private ["_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

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
  _prayGod =  ctrlIDC _ctrl - 19000; 
(vehicle player) setPylonLoadout [_prayGod, "", true];
switch (_TheGodPhase2) do {
    case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Scalpel": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
          case "スケルペル": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Twin Cannon 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
       case "Twin 機關炮 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Double canon 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Cañón gemelo 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Cannone doppio 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Podwójne działko 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Сдвоенная 20-мм пушка": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Zwillingsgeschütz 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "20mm dvojkanón": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Canhão duplo de 20 mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "쌍발 기관포 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "双联机炮 20 毫米": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "ツイン・カノン砲20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "İkiz Top 20mm": {_pylons = "PylonWeapon_300Rnd_20mm_shells"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Minigun 6.5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
       case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 мм": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6,5 mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6.5mm": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Minigun 6.5 毫米": {_pylons = "PylonWeapon_2000Rnd_65x39_belt"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
 
    case "Skyfire 19x": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "19 Skyfire": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Skyfire - 19 шт.": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "スカイファイアーx19": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Black": {[(vehicle player), ["Black",1], true ] call BIS_fnc_initVehicle;};
    case "Black custom": {[(vehicle player), ["Blackcustom",1], true ] call BIS_fnc_initVehicle;};
    case "Opfor": {[(vehicle player), ["Opfor",1], true ] call BIS_fnc_initVehicle;};
};