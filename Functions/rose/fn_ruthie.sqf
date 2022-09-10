_lemonde = worldName;
switch (true) do
{
        
        case ( windDir > 337.5 && windDir < 22.4): {levent = "Wind BRG : N";};
        case ( windDir > 22.5 && windDir < 67.4): {levent = "Wind BRG : NE";};
        case ( windDir > 67.5 && windDir < 112.4): {levent = "Wind BRG : E";};
        case ( windDir > 112.5 && windDir < 157.4): {levent = "Wind BRG : SE";};
        case ( windDir > 157.5 && windDir < 202.4): {levent = "Wind BRG : S";};
        case ( windDir > 202.5 && windDir < 247.4): {levent = "Wind BRG : SW";};
        case ( windDir > 247.5 && windDir < 292.4) : {levent = "Wind BRG : W";};
        case ( windDir > 292.5 && windDir < 337.4): {levent = "Wind BRG : NW";};
        default { levent = "Wind BRG :"; };
};

switch (_lemonde) do {
    case "Altis": { 

                        to_base =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setpos (getMarkerPos "BASE");
                                ["Main HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;        
                        };
                        
                        to_elite =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "elite");
                                ["Rewards HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                                
                        };
                        
                        to_vehiculesss =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "vehiculesss");
                                ["Vehicles HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        to_pilot =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "pilot");
                                ["Rotor-wing HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        to_boat =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "boat");
                                ["S Boat HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        to_WeaponTestRange =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "WeaponTestRange");
                                ["Weapon Test Range HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        to_boat_1 =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "boat_1");
                                ["N Boat HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        to_lelasts =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setpos [markerPos "atc5" select 0, markerPos "atc5" select 1, 23];
                                ["USS WALKER",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_jet =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "jet");
                                ["Fixed-Wing HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_radar =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "MILITARY_BASE_1");
                                ["Anti-aircraft HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                          to_boat_Fournos =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "boat_2");
                                ["Fournos Boats HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                          to_boat_Atsalis =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "boat_4");
                                ["Atsalis Boats HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                          to_boat_CAPE =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "boat_3");
                                ["Cape Boats HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                           to_uavstr =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "uavstr");
                                ["UAV HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                           to_transport =
                        {
                                _now = daytime;  
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0; 
								_txtmin = _timearray select 1;
                                _unit = player;
                                _unit setPos (getMarkerPos "transport");
								["Transport Departures",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        
                        _missionsData   = [
								[getmarkerpos "BASE",to_base,"Main HQ","Teleport to the Main HQ","","Media\images\nakcommand.paa",1,[]],
								[getmarkerpos "elite",to_elite,"Rewards","Teleport to Rewards","","\a3\ui_f\data\gui\cfg\hints\vehiclecommanding_ca.paa",1,[]],
								[getmarkerpos "vehiculesss",to_vehiculesss,"Vehicles","Teleport to the Vehicles","","\a3\ui_f\data\gui\cfg\hints\firing_ca.paa",1,[]],
								[getmarkerpos "pilot",to_pilot,"Rotory Wing Aircraft","Teleport to the Rotory Wing Aircraft","","Media\images\heli.paa",1,[]],
								[getmarkerpos "boat",to_boat,"South Boat Spawn","Teleport to the South Boat Spawn","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
								[getmarkerpos "WeaponTestRange",to_WeaponTestRange,"Weapon Test Range","Teleport to the Weapon Test Range","","\a3\ui_f\data\gui\cfg\hints\weapondeployment_ca.paa",1,[]],
								[getmarkerpos "boat_1",to_boat_1,"North Boat Spawn","Teleport to the North Boat Spawn","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
								[getmarkerpos "atc5",to_lelasts,"USS WALKER","Teleport to the Carrier USS WALKER","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafttakeoffcarrier_ca.paa",1,[]],
								[getmarkerpos "jet",to_jet,"Fixed Wing Aircraft","Teleport to the Fixed Wing Aircraft","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafthud_ca.paa",1,[]],
								[getmarkerpos "MILITARY_BASE_1",to_radar,"AA HQ","Teleport to the AA HQ","","\a3\ui_f_jets\data\gui\cfg\hints\sensorstypes_ca.paa",1,[]],
								[getmarkerpos "boat_2",to_boat_Fournos,"Fournos Boats Spawn","Teleport to the Fournos Boats Spawn","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
								[getmarkerpos "boat_4",to_boat_Atsalis,"Atsalis Boats Spawn","Teleport to the Atsalis Boats Spawn","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
								[getmarkerpos "uavstr",to_uavstr,"UAV Vehicles","Teleport to the UAV Vehicles","","\a3\ui_f\data\gui\cfg\hints\uavtypes_ca.paa",1,[]],
								[getmarkerpos "boat_3",to_boat_CAPE,"Cape Boats Spawn","Teleport to the Cape Boats Spawn","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
								[getmarkerpos "transport",to_transport,"Transport Departures","Teleport to Transport Departures","","\a3\ui_f\data\gui\cfg\hints\takeoff_ca.paa",1,[]]
                        ];
                        
                        disableserialization;
                        
                        _parentDisplay  = [] call bis_fnc_displayMission;
                        _mapCenter      = getmarkerpos "jet";
                        _ORBAT          = [];
                        _markers        = [];
                        _images         = [ ];
                        _overcast       = overcast;
                        _isNight        = !((dayTime > 6) && (dayTime < 20));
                        _scale          = 0.15;
                        _simul          = true;
                        _chase          = "Select HQ";
                        
                        [
                                findDisplay 46,
                                _mapCenter,
                                _missionsData,
                                _ORBAT,
                                _markers,
                                _images,
                                _overcast,
                                _isNight,
                                _scale,
                                _simul,
                                _chase,
                                true
                        ] call nak_fnc_vbnet10;   
                };
    case "Malden": {
                        to_base =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setpos (getMarkerPos "BASE");
                                ["Main HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;        
                        };
                        
                        to_elite =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "elite");
                                ["Jet HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                                
                        };
                        
                        to_vehiculesss =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "vehiclehq");
                                ["Vehicles HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };


                        to_lelasts =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setpos [markerPos "uss992" select 0, markerPos "uss992" select 1, 23];
                                ["USS WALKER HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_boat =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "boat_1");
                                ["N Boat HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_boat_1 =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "boat");
                                ["S Boat HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };
                        to_uavttp =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "antiairbas");
                                ["Anti-aircraft HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        _missionsData   = [
                                        [getmarkerpos "BASE",to_base,"Main HQ","Teleport to the Main HQ","","Media\images\nakcommand.paa",1,[]],
                                        [getmarkerpos "elite",to_elite,"Jet HQ","Teleport to the Jet HQ","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafthud_ca.paa",1,[]],
                                        [getmarkerpos "vehiclehq",to_vehiculesss,"Vehicles HQ","Teleport to the Vehicles HQ","","\a3\ui_f\data\gui\cfg\hints\firing_ca.paa",1,[]],
                                        [getmarkerpos "boat",to_boat,"S Boat HQ","Teleport to the S Boat HQ","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
                                        [getmarkerpos "boat_1",to_boat_1,"N Boat HQ","Teleport to the N Boat HQ","","\a3\ui_f\data\gui\cfg\hints\sdv_ca.paa",1,[]],
                                        [getmarkerpos "antiairbas",to_uavttp,"Anti-aircraft HQ","Teleport to the Anti-aircraft HQ","","\a3\ui_f_jets\data\gui\cfg\hints\sensorstypes_ca.paa",1,[]],
                                        [getmarkerpos "uss992",to_lelasts,"USS WALKER HQ","Teleport to the USS WALKER HQ","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafttakeoffcarrier_ca.paa",1,[]]
                        ];
                        
                        disableserialization;
                        
                        _parentDisplay  = [] call bis_fnc_displayMission;
                        _mapCenter      = getmarkerpos "respawn_west";
                        _ORBAT          = [];
                        _markers        = [];
                        _images         = [ ];
                        _overcast       = overcast;
                        _isNight        = !((dayTime > 6) && (dayTime < 20));
                        _scale          = 0.15;
                        _simul          = true;
                        _chase          = "Select HQ";
                        
                        [
                                findDisplay 46,
                                _mapCenter,
                                _missionsData,
                                _ORBAT,
                                _markers,
                                _images,
                                _overcast,
                                _isNight,
                                _scale,
                                _simul,
                                _chase,
                                true
                        ] call nak_fnc_vbnet10;
                };
    case "Tanoa": { 
                         to_base =
                        {
                                
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setpos (getMarkerPos "respawn_west");
                                ["Main HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;        
                        };
                        
                        to_elite =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "elite");
                                ["AOFL HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                                
                        };
                        

                        
                        to_lelasts =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setpos [markerPos "aVEMARIAL" select 0, markerPos "aVEMARIAL" select 1, 23];
                                ["USS WALKER HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_jet =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "respawn_west_pilots");
                                ["Fixed-Wing HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };

                        to_jets =
                        {
                                _now = daytime;
								_timearray = [_now, "ARRAY"] call BIS_fnc_timeToString;
								_txthour = _timearray select 0;
								_txtmin = _timearray select 1;
								_unit = player;
                                _unit setPos (getMarkerPos "heavuveh");
                                ["Combat Vehicles HQ",format["%1:%2",_txthour, _txtmin], str(levent), str(groupId (group player))] spawn BIS_fnc_infoText;
                        };


                        _missionsData   = [
                                        [getmarkerpos "respawn_west",to_base,"Main HQ","Teleport to the Main HQ","","Media\images\nakcommand.paa",1,[]],
                                        [getmarkerpos "elite",to_elite,"AOFL HQ","Teleport to  the AOFL HQ","","\a3\ui_f\data\gui\cfg\hints\vehiclecommanding_ca.paa",1,[]],
                                        [getmarkerpos "aVEMARIAL",to_lelasts,"USS WALKER HQ","Teleport to the USS WALKER HQ","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafttakeoffcarrier_ca.paa",1,[]],
                                        [getmarkerpos "respawn_west_pilots",to_jet,"Fixed-Wing HQ","Teleport to the Fixed-Wing HQ","","\a3\ui_f_jets\data\gui\cfg\hints\aircrafthud_ca.paa",1,[]],
                                        [getmarkerpos "heavuveh",to_jets,"Combat Vehicles HQ","Teleport to the Combat Vehicles HQ","","\a3\ui_f\data\gui\cfg\hints\firing_ca.paa",1,[]]
                        ];
                        
                        disableserialization;
                        
                        _parentDisplay  = [] call bis_fnc_displayMission;
                        _mapCenter      = getmarkerpos "elite";
                        _ORBAT          = [];
                        _markers        = [];
                        _images         = [ ];
                        _overcast       = overcast;
                        _isNight        = !((dayTime > 6) && (dayTime < 20));
                        _scale          = 0.15;
                        _simul          = true;
                        _chase          = "Select HQ";
                        
                        [
                                findDisplay 46,
                                _mapCenter,
                                _missionsData,
                                _ORBAT,
                                _markers,
                                _images,
                                _overcast,
                                _isNight,
                                _scale,
                                _simul,
                                _chase,
                                true
                        ] call nak_fnc_vbnet10;
     };
};

