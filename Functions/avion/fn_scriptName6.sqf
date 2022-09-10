private ["_pilotGunnerah99","_pylonPaths","_minheight","_minheight1","_tooLow","_tooLowfuel","_value","_ctrl","_index","_TheGodPhase2","_prayGod"];

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
  _prayGod =  ctrlIDC _ctrl - 9000; 

(vehicle player) setPylonLoadout [_prayGod, "", true];

 _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")}; 

switch (_TheGodPhase2) do {
    case "ASRAAM": {_pylons = "PylonMissile_1Rnd_AAA_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnerah99 = missionNamespace getVariable "pilotGunnerah99"; _pilotGunnerah99 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnerah99", _pilotGunnerah99];
    
    };
    case "Scalpel": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };

    case "スケルペル": {_pylons = "PylonMissile_1Rnd_LG_scalpel"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    };


    case "DAGR": {_pylons = "PylonRack_12Rnd_PG_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnerah99 = missionNamespace getVariable "pilotGunnerah99"; _pilotGunnerah99 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnerah99", _pilotGunnerah99];
    
    };
    case "DAR": {_pylons = "PylonRack_12Rnd_missiles"; (vehicle player) setPylonLoadOut [ _prayGod, _pylons, true, [0]];
    //_pilotGunnerah99 = missionNamespace getVariable "pilotGunnerah99"; _pilotGunnerah99 set [(_prayGod -1), _pylons]; missionNamespace setVariable ["pilotGunnerah99", _pilotGunnerah99];
    
    };

};
