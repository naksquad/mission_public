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
  _prayGod =  ctrlIDC _ctrl - 60000; 
(vehicle player) setPylonLoadout [_prayGod, "", true];
switch (_TheGodPhase2) do {

    case "Scalpel": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];  
    };

            case "スケルペル": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
    case "Scalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];

    };

       case "3 Scalpel": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Scalpel - 3 шт.": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "スケルペルx3": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };
    case "Skalpel 3x": {_pylons = "PylonRack_3Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
  };

    case "Scalpel 4x": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];    
    };

        case "4 Scalpel": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];    
    };
        case "Scalpel - 4 шт.": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];    
    };
        case "スケルペルx4": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];    
    };
        case "Skalpel 4x": {_pylons = "PylonRack_4Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];    
    };

   

    case "Tratnyr 20x HE": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

        case "Tratnyr 20x 高爆彈": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "20 Tratnyr HE": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Tratnyr HE - 20 шт.": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "トラトニルx20 HE": {_pylons = "PylonRack_20Rnd_Rocket_03_HE_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };


    case "Tratnyr 20x AP": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

        case "Tratnyr 20x 穿甲彈": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "20 Tratnyr AP": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Tratnyr AP - 20 шт.": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "トラトニルx20 AP": {_pylons = "PylonRack_20Rnd_Rocket_03_AP_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

    case "Skyfire 19x": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "19 Skyfire": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Skyfire - 19 шт.": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "スカイファイアーx19": {_pylons = "PylonRack_19Rnd_Rocket_Skyfire"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

    case "Sahr-3": {_pylons = "PylonRack_1Rnd_Missile_AA_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];   
    };
    
        case "Сахр-4": {_pylons = "PylonRack_1Rnd_Missile_AA_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];   
    };
        case "사르-3": {_pylons = "PylonRack_1Rnd_Missile_AA_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];   
    };
        case "シャハル-3": {_pylons = "PylonRack_1Rnd_Missile_AA_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];   
    };

    case "Sharur": {_pylons = "PylonRack_1Rnd_Missile_AGM_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Шарур": {_pylons = "PylonRack_1Rnd_Missile_AGM_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "샤루르": {_pylons = "PylonRack_1Rnd_Missile_AGM_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "シャルーア": {_pylons = "PylonRack_1Rnd_Missile_AGM_01_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };


    case "LOM-250G": {_pylons = "PylonMissile_1Rnd_Bomb_03_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnervt1 = missionNamespace getVariable "pilotGunnervt1"; _pilotGunnervt1 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnervt1", _pilotGunnervt1];
   
    };
    case "RBK-500F Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

        case "RBK-500F クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "1x explosivo RBK-500F": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "КБ RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Ład. kas. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Bomba a gr. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "Racimo RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };
        case "RBK-500F Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };



    
    case "Green Hex": {[(vehicle player), ["GreenHex",1], true ] call BIS_fnc_initVehicle;};
    case "Grey": {[(vehicle player), ["Grey",1], true ] call BIS_fnc_initVehicle;};
    case "Hex": {[(vehicle player), ["Hex",1], true ] call BIS_fnc_initVehicle;};
};



