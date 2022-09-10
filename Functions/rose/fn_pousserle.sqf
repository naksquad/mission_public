private ["_vehicle","_player","_dir","_dx","_dy","_vehi_destroy","_vehi_notFilp","_vehicleNm"];

_vehicle = _this # 0;
_player = _this # 1;


_vehicleNm = getText(configFile>>"CfgVehicles">>typeOf _vehicle>>"DisplayName");


_vehi_EngOn = format ["<t align='center'><t size='2.2' color='#ff4000'>%1 ENGINE ON</t><br/><t size='1.2' color='#ffff00'>You must have the<br/>engine off in order<br/>to push the %1.</t></t>",_vehicleNm];

_vehi_notPush = format ["<t align='center'><t size='2.2' color='#ff4000'>CREW IN %1</t><br/><t size='1.2' color='#ffff00'>All crew must exit<br/>the vehicle in order<br/>to push the %1.</t></t>",_vehicleNm];



if ( isNull _vehicle ) exitWith {  };
 if (isEngineOn _vehicle) exitWith {hint parseText _vehi_EngOn;};
if (count (crew _vehicle) >= 1 ) exitWith {hint parseText _vehi_notPush;};

_dir = getDir _player;
_dx = sin(_dir)*4;
_dy = cos(_dir)*4;
_vehicle setVelocity [_dx,_dy,0];
