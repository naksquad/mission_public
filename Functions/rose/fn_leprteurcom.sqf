leblesser = _this # 0;
lerevivber = _this # 1;
[leblesser] remoteExec ["removeAllActions", 0, true];
[lerevivber] remoteExec ["removeAllActions", 0, true];



 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
 [( _this select 1),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];

[leblesser,lerevivber] spawn ROSE_fnc_leroutine;
[leblesser,lerevivber] spawn ROSE_fnc_carry1;
[leblesser,lerevivber] spawn ROSE_fnc_touarrete;


