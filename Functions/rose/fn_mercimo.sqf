

//if (!isServer) exitWith {};

//======================================== CONFIG
private ["_u","_theboard","_lapos"];


 _theboard = _this # 0;
 _lapos = _this select 3 select 0;

 [_theboard,_lapos] remoteExec ["AW_fnc_vMonitor", 2];
