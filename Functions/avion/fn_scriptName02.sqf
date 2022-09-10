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
  _prayGod =  ctrlIDC _ctrl - 2000000; 
  //2000001

_le_check = [3,4,5,6];
(vehicle player) setPylonLoadout [_prayGod, "", true];
if !(_prayGod in _le_check) then
{
  switch (_TheGodPhase2) do {
    
    case "AMRAAM C AA x1": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "1 AMRAAM C AA": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "AMRAAM C plot x1": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "BIM 9X AA x1": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "1 BIM 9X AA": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BIM 9X plot x1": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
  
    
    
    case "Macer II AGM x1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "Macer II pow.-ziem. x1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "メイサー II AGMx1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "AMRAAM C AA x2": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   
    case "2 AMRAAM C AA": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "AMRAAM C plot x2": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};



    case "BIM 9X AA x2": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "2 BIM 9X AA": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BIM 9X plot x2": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "Macer II AGM x2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "Macer II pow.-ziem. x2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "メイサー II AGMx2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    
    case "GBU 12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "1 BIM 9X AA": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BIM 9X plot x1": {_pylons = "PylonMissile_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};


    case "1 GBU 12 LGB": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU 12 napr. las. x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU-12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

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


    case "Digital Camo Green": {[(vehicle player), ["DigitalCamoGreen",1], true ] call BIS_fnc_initVehicle;};
    case "Digital Camo Grey": {[(vehicle player), ["DigitalCamoGrey",1], true ] call BIS_fnc_initVehicle;};
    case "Camo Grey" :   {[(vehicle player), ["CamoGrey",1], true ] call BIS_fnc_initVehicle;};  

  };

}
else
{
  switch (_TheGodPhase2) do {
    case "AMRAAM C AA x1": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
     case "1 AMRAAM C AA": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "AMRAAM C plot x1": {_pylons = "PylonRack_Missile_AMRAAM_C_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Macer II AGM x1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
      
    case "Macer II pow.-ziem. x1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "メイサー II AGMx1": {_pylons = "PylonRack_Missile_AGM_02_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "AMRAAM C AA x2": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
   case "2 AMRAAM C AA": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "AMRAAM C plot x2": {_pylons = "PylonRack_Missile_AMRAAM_C_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

   
    case "BIM 9X AA x2": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
    case "2 BIM 9X AA": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BIM 9X plot x2": {_pylons = "PylonRack_Missile_BIM9X_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    case "Macer II AGM x2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "Macer II pow.-ziem. x2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "メイサー II AGMx2": {_pylons = "PylonRack_Missile_AGM_02_x2"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

    
    case "GBU 12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "1 GBU 12 LGB": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU 12 napr. las. x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "GBU-12 LGB x1": {_pylons = "PylonMissile_Bomb_GBU12_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    
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

       

    
    case "BIM 9X AA x1": {_pylons = "PylonRack_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "1 BIM 9X AA": {_pylons = "PylonRack_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};
    case "BIM 9X plot x1": {_pylons = "PylonRack_Missile_BIM9X_x1"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true];};

 
  };
  
};



