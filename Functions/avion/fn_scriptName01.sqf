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
  _prayGod =  ctrlIDC _ctrl - 7000000; 
(vehicle player) setPylonLoadout [_prayGod, "", true];
switch (_TheGodPhase2) do {
   case "Falchion-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "Фальшион-23": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "팔시온-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "ファルシオン-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Zephyr": {_pylons = "PylonRack_1Rnd_GAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Зефир": {_pylons = "PylonRack_1Rnd_GAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "제피르": {_pylons = "PylonRack_1Rnd_GAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "ゼファー": {_pylons = "PylonRack_1Rnd_GAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

   
   
    case "Scalpel": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

        case "スケルペル": {_pylons = "PylonRack_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Shrieker 7x HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
     case "Shrieker 7x 高爆彈": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "7 Shrieker HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Shrieker HE - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "シュリーカーx7 HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "Shrieker 7x AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
   case "Shrieker 7x 穿甲彈": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "7 Shrieker AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Shrieker AP - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "シュリーカーx7 AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
    case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
    case "3 Scalpel": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Scalpel - 3 шт.": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "スケルペルx3": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Skalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
 
    case "Macer": {_pylons = "PylonRack_1Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
      case "Мейсер": {_pylons = "PylonRack_1Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "메이서": {_pylons = "PylonRack_1Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "メイサー": {_pylons = "PylonRack_1Rnd_Missile_AGM_02_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

   
    case "GBU-12": {_pylons = "PylonMissile_1Rnd_Bomb_04_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Mk82": {_pylons = "PylonMissile_1Rnd_Mk82_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
       case "CBU-85 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Racimo CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Bomba a gr. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Ład. kas. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "КБ CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "1x explosivo CBU-85": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "CBU-85 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
        case "BL778 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Racimo BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Bomba a gr. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Ład. kas. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "КБ BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "1x explosivo BL778 ": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

   
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

   
    };



