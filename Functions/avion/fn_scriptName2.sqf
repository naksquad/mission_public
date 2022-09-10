private ["_le_check,""_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];
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
  _prayGod =  ctrlIDC _ctrl - 4000; 

_le_check = [11,12,13];
(vehicle player) setPylonLoadout [_prayGod, "", true];
if !(_prayGod in _le_check) then
{
  switch (_TheGodPhase2) do {
    case "R73 SR AA x1": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  
    case "1 R73 SR AA": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "R73 plot kr. zas. x1": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

  
    case "R77 MR AA x1": {_pylons = "PylonMissile_Missile_AA_R77_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "R77 plot śr. zas. x1": {_pylons = "PylonMissile_Missile_AA_R77_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "KH25 AGM x1": {_pylons = "PylonMissile_Missile_AGM_KH25_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "1 KH25 AGM": {_pylons = "PylonMissile_Missile_AGM_KH25_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KH25 pow.-ziem. x1": {_pylons = "PylonMissile_Missile_AGM_KH25_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "KAB 250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
        case "1 KAB 250 LGB": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB 250 napr. las. x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB-250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "RBK-500F Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
      case "RBK-500F Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Racimo RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Bomba a gr. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Ład. kas. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "КБ RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "1x explosivo RBK-500F": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "KH58 ARM x1": {_pylons = "PylonMissile_Missile_KH58_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "KH58 ARM ×1": {_pylons = "PylonMissile_Missile_KH58_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KH58 ARM×1": {_pylons = "PylonMissile_Missile_KH58_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "1 KAB 250 LGB": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB 250 napr. las. x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB-250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};



    case "Camo Blue": {[(vehicle player), ["CamoBlue",1], true ] call BIS_fnc_initVehicle; };
    case "Camo Arid Hex": {[(vehicle player), ["CamoAridHex",1], true ] call BIS_fnc_initVehicle;};
    case "Camo Grey Hex": {[(vehicle player), ["CamoGreyHex",1], true ] call BIS_fnc_initVehicle;};
  };

}
else
{
  switch (_TheGodPhase2) do {
    case "R77 MR AA x1": {_pylons = "PylonMissile_Missile_AA_R77_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "R77 plot śr. zas. x1": {_pylons = "PylonMissile_Missile_AA_R77_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "KH25 AGM x1": {_pylons = "PylonMissile_Missile_AGM_KH25_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "1 KH25 AGM": {_pylons = "PylonMissile_Missile_AGM_KH25_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KH25 pow.-ziem. x1": {_pylons = "PylonMissile_Missile_AGM_KH25_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "KH58 ARM x1": {_pylons = "PylonMissile_Missile_KH58_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
        case "KH58 ARM ×1": {_pylons = "PylonMissile_Missile_KH58_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KH58 ARM×1": {_pylons = "PylonMissile_Missile_KH58_INT_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "R73 SR AA x1": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "1 R73 SR AA": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "R73 plot kr. zas. x1": {_pylons = "PylonMissile_Missile_AA_R73_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "1 KAB 250 LGB": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB 250 napr. las. x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB-250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "KAB 250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
            case "1 KAB 250 LGB": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB 250 napr. las. x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "KAB-250 LGB x1": {_pylons = "PylonMissile_Bomb_KAB250_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "RBK-500F Cluster x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "RBK-500F Parça Tesirli Bomba x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 集束炸彈 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F sous-munitions x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Racimo RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Bomba a gr. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "Ład. kas. RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "КБ RBK-500F x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F kazetová x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "1x explosivo RBK-500F": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 다발폭탄 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F 集束炸弹 x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  case "RBK-500F クラスター x1": {_pylons = "PylonMissile_1Rnd_BombCluster_02_cap_F"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

  
  };

};



