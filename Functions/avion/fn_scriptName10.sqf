private ["_pylonPaths","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo pleasework11;

 if (isEngineOn pleasework11) exitWith {hint parseText _tooLow};
  if ((fuel pleasework11) < 0.980000) exitWith {hint parseText _tooLowfuel};



disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 40000; 

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework11 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")}; 
pleasework11 setPylonLoadout [_prayGod, "", true];
switch (_TheGodPhase2) do {
case "Macer II AGM x2": {_pylons = "PylonMissile_Missile_AGM_02_x2"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};

case "Macer II pow.-ziem. x2": {_pylons = "PylonMissile_Missile_AGM_02_x2"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};
case "メイサー II AGMx2": {_pylons = "PylonMissile_Missile_AGM_02_x2"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};

    
case "GBU 12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "1 GBU 12 LGB": {_pylons = "PylonMissile_Bomb_GBU12_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "GBU 12 napr. las. x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "GBU-12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};



case "CBU-85 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};

 case "CBU-85 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "1x explosivo CBU-85": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "КБ CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Ład. kas. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Bomba a gr. CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "Racimo CBU-85 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
   case "CBU-85 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_01_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

case "BL778 Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};

case "BL778 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "Racimo BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "Bomba a gr. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "Ład. kas. BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "КБ BL778 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "1x explosivo BL778 ": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};
case "BL778 Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_03_F"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
};


case "AGM-88C HARM x1": {_pylons = "PylonMissile_Missile_HARM_INT_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};
case "AGM-88C HARM x1": {_pylons = "PylonMissile_Missile_HARM_INT_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};
case "AGM-88C HARM×1": {_pylons = "PylonMissile_Missile_HARM_INT_x1"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};


case "GBU SDB x4": {_pylons = "PylonRack_Bomb_SDB_x4"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};
case "GBU SDB ×4": {_pylons = "PylonRack_Bomb_SDB_x4"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};
case "GBU SDB×4": {_pylons = "PylonRack_Bomb_SDB_x4"; pleasework11 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
//_pilotGunnersent = missionNamespace getVariable "pilotGunnersent"; _pilotGunnersent set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnersent", _pilotGunnersent];

};



case "Dark Grey": {[pleasework11, ["DarkGrey",1], true ] call BIS_fnc_initVehicle;};
case "Dark Grey Camo": {[pleasework11, ["DarkGreyCamo",1], true ] call BIS_fnc_initVehicle;};

};



