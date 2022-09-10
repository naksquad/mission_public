private ["_pylonPaths","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

 _minheight = "OFF";
 _minheight1 = "FULL";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight];
 _tooLowfuel = format ["<t align='center'><t size='2.2' color='#ed3b00'>LOW FUEL</t><br/><t size='1.2' color='#9ef680'>You need to have</t><br/><t size='1.5' color='#ed3b00'>%1 TANK</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle loadout.</t></t>",_minheight1];

 _value = getFuelCargo pleasework12;

 if (isEngineOn pleasework12) exitWith {hint parseText _tooLow};
  if ((fuel pleasework12) < 0.980000) exitWith {hint parseText _tooLowfuel};



disableSerialization;
 _ctrl = _this # 0;
 _index = _this # 1;
 _TheGodPhase2 = _ctrl lbText _index;
  _prayGod =  ctrlIDC _ctrl - 50000; 

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf pleasework12 >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")}; 
pleasework12 setPylonLoadout [_prayGod, "", true];
switch (_TheGodPhase2) do {
    
    case "Scalpel": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

        case "スケルペル": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

    case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnermq = missionNamespace getVariable "pilotGunnermq"; _pilotGunnermq set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnermq", _pilotGunnermq];
   
    };

        case "3 Scalpel": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Scalpel - 3 шт.": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "スケルペルx3": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Skalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker 7x HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

      case "Shrieker 7x 高爆彈": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "7 Shrieker HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker HE - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "シュリーカーx7 HE": {_pylons = "PylonRack_7Rnd_Rocket_04_HE_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

    case "Shrieker 7x AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

    case "Shrieker 7x 穿甲彈": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "7 Shrieker AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Shrieker AP - 7 шт.": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "シュリーカーx7 AP": {_pylons = "PylonRack_7Rnd_Rocket_04_AP_F"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

    case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnermq = missionNamespace getVariable "pilotGunnermq"; _pilotGunnermq set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnermq", _pilotGunnermq];
    
    };
    case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; pleasework12 setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnermq = missionNamespace getVariable "pilotGunnermq"; _pilotGunnermq set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnermq", _pilotGunnermq];
    
    };

};



