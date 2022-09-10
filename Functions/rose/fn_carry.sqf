//nak'
 leblesser = _this # 0;
 lerevivber = _this # 1;
 le_id = _this # 2;

leblesser attachTo [lerevivber, [0, 1.5, 0.092]];


[lerevivber] allowGetIn false;
[[lerevivber]] remoteExec ["allowGetIn", 0, false];
[leblesser] remoteExec ["removeAllActions", 0, true];

[lerevivber] remoteExec ["removeAllActions", 0, true];


 [( _this select 0),["<t color='#0f1199'>Drop Your Brother</t>", {_this spawn ROSE_fnc_ledetachement;},[],1,false,true,"","_this distance _target < 10"]] remoteExec ["addAction",-2];



[
    ( _this select 0),                                                                           // Object the action is attached to
    "Revive Your Brother",                                                                       // Title of the action
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",                      // Idle icon shown on screen
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",                      // Progress icon shown on screen
    "player distance _target < 6",                                                        // Condition for the action to be shown
    "player distance _target < 6",                                                      // Condition for the action to progress
    {},                                                                                  // Code executed when action starts
    {},                                                                                  // Code executed on every progress tick
    { [ ( _this select 0),( _this select 1)] spawn ROSE_fnc_carry3; },                                  // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [],                                                                                  // Arguments passed to the scripts as _this select 3
    7,                                                                                  // Action duration [s]
    0,                                                                                   // Priority
    true,                                                                                // Remove on completion
    false                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,( _this select 0)];    



[
    ( _this select 0),                                                                           // Object the action is attached to
    "Respawn",                                                                       // Title of the action
   "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",                     // Idle icon shown on screen
   "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",                      // Progress icon shown on screen
    "_target == _this",                                                            // Condition for the action to be shown
    "_target == _this",                                                            // Condition for the action to progress
    {},                                                                                  // Code executed when action starts
    {},                                                                                  // Code executed on every progress tick
    { ( _this select 0) setDamage 1;},                                  // Code executed on completion
    {},                                                                                  // Code executed on interrupted
    [],                                                                                  // Arguments passed to the scripts as _this select 3
    7,                                                                                  // Action duration [s]
    0,                                                                                   // Priority
    true,                                                                                // Remove on completion
    true                                                                                // Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd",0,( _this select 0)];     

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
 [( _this select 1),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];



waitUntil {isNull attachedTo leblesser};
