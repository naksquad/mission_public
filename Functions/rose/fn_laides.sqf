leblesser = _this # 0;
_dataplayrowner = _this # 1;

[leblesser] remoteExec ["removeAllActions", 0, true];
removeAllActions leblesser;

//VileAce added hotkey
[(_this select 0),["<t color='#ed3b00'>Initialize Medical Sequence</t>", {_this spawn ROSE_fnc_leprteurcom;},[],10,false,true,"User20","_this distance _target < 12"]] remoteExec ["addAction",0];

[
    ( _this select 0),                                                                           // Object the action is attached to
    "Respawn",                                                                       // Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",                     // Idle icon shown on screen
   "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",                      // Progress icon shown on screen
    "_target == _this",                                                            // Condition for the action to be shown
    "_target == _this",                                                            // Condition for the action to progress
    {},                                                                                  // Code executed when action starts
    {},                                                                                  // Code executed on every progress tick
    {[( _this select 0)] call  ROSE_fnc_cetuer;},                                  // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [],                                                                                  // Arguments passed to the scripts as _this select 3
    7,                                                                                  // Action duration [s]
    0,                                                                                   // Priority
    true,                                                                                // Remove on completion
    true                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,( _this select 0)];    

_lalapos = getpos leblesser;
_lenondu = name leblesser;
_uidr = getPlayerUID leblesser;
sleep 5;
missionNamespace setVariable ["checkrevive", 0, _dataplayrowner];


 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];




