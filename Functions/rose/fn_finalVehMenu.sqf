



[( _this select 0),{_this addAction ["<t color='#b71919'>---vehicle Menu---</t>", {_this call ROSE_fnc_lecaller;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
[( _this select 0),{_this addAction ["<t color='#1133af'>Repair/Analyze Vehicle</t>", {_this call ROSE_fnc_lecaller;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
[( _this select 0),{_this addAction ["<t color='#E5E500'>UnFlip Vehicle</t>", {_this call ROSE_fnc_flipflap;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
[( _this select 0),{_this addAction ["<t color='#6cbf28'>Push Vehicle</t>", {_this call ROSE_fnc_pousserle;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
[( _this select 0),{_this addAction ["<t color='#b71919'>---More Options Soon---</t>", {_this call ROSE_fnc_lecaller;},[1],0,false,true,"", "vehicle player == player"]} ] remoteExec ["call", -2, true];
