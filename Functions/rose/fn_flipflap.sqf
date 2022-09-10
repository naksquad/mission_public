private ["_vehicle","_player","_vehi_destroy","_vehi_notFilp","_vehicleNm"];
_vehicle = _this # 0;
_player = _this # 1;

_vehicleNm = getText(configFile>>"CfgVehicles">>typeOf _vehicle>>"DisplayName");

_vehi_EngOn = format ["<t align='center'><t size='2.2' color='#ff0000'>%1 ENGINE ON</t><br/><t size='1.2' color='#80ff00'>You must have the<br/>engine off in order<br/>to flip the %1.</t></t>",_vehicleNm];

_vehi_notFilp = format ["<t align='center'><t size='2.2' color='#ff0000'>CREW IN %1</t><br/><t size='1.2' color='#80ff00'>All crew must exit<br/>the vehicle in order<br/>to flip the %1.</t></t>",_vehicleNm];

_vehi_Nflip = format ["<t align='center'><t size='2.2' color='#ff0000'>CANNOT FLIP %1</t><br/><t size='1.2' color='#80ff00'>The %1 does not<br/>need to be fliped.<br/>It may damage the vehicle.</t></t>",_vehicleNm];


if ( isNull _vehicle ) exitWith {  };
 if (isEngineOn _vehicle) exitWith {hint parseText _vehi_EngOn;};
 _vectorfin =  vectorUp _vehicle;
 _vectomap = _vectorfin select 2;
if (_vectomap > 0 ) exitWith {hint parseText _vehi_Nflip;};
if (count (crew _vehicle) >= 1 ) exitWith {hint parseText _vehi_notFilp;};

_vehicle setVectorUp [0,0,1];
_vehicle setPosATL [(getPosATL _vehicle) select 0, (getPosATL _vehicle) select 1, 0];

