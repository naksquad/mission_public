 private ["_pylonPaths","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo pleasework10;

 if (isEngineOn pleasework10) exitWith {hint parseText _tooLow};
  if ((fuel pleasework10) < 0.980000) exitWith {hint parseText _tooLowfuel};


disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 30000; 

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework10 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")}; 

pleasework10 setPylonLoadout [_prayGod, "", true];


switch (_TheGodPhase2) do {

  case "Falchion-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

    case "Фальшион-23": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "팔시온-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "ファルシオン-22": {_pylons = "PylonRack_1Rnd_Missile_AA_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

  case "ASRAAM": {_pylons = "PylonRack_1Rnd_AAA_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Scalpel": {_pylons = "PylonRack_1Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  
    case "スケルペル": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };


  case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "3 Scalpel": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Scalpel - 3 шт.": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "スケルペルx3": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Skalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };


 

  case "Shrieker 7x HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

    case "Shrieker 7x 高爆彈": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "7 Shrieker HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker HE - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "シュリーカーx7 HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };


  case "Shrieker 7x AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker 7x 穿甲彈": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "7 Shrieker AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker AP - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "シュリーカーx7 AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };


  case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "GBU-12": {_pylons = "PylonMissile_1Rnd_Bomb_04_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "Mk82": {_pylons = "PylonMissile_1Rnd_Mk82_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };
  case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

   case "CBU-85 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "1x explosivo CBU-85": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "КБ CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Ład. kas. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Bomba a gr. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Racimo CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };


  case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  
       case "BL778 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Racimo BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Bomba a gr. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "Ład. kas. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "КБ BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "1x explosivo BL778 ": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};
   case "BL778 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework10 setPylonLoadOut [ _prayGod, _pylons, true];};

  
  //_pilotGunnergrey = missionNamespace getVariable "pilotGunnergrey"; _pilotGunnergrey set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnergrey", _pilotGunnergrey];

  };

};



