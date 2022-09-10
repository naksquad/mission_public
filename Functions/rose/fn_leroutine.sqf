leblesser = _this # 0;
lerevivber = _this # 1;

		
waitUntil {sleep 3;  (damage leblesser) == 1 || (damage lerevivber) == 1 || (lifeState leblesser) != "INCAPACITATED" ||  (lifeState lerevivber) == "INCAPACITATED" || (lifeState lerevivber) == "DEAD" || (lifeState lerevivber) == "DEAD-RESPAWN" || (lifeState lerevivber) == "DEAD-SWITCHING"};

	if (lifeState leblesser != "INCAPACITATED") then 
		{ 
			detach leblesser;
		
			[leblesser] remoteExec ["removeAllActions", 0, true];
			[lerevivber] remoteExec ["removeAllActions", 0, true];
			[lerevivber] remoteExec ["allowGetIn", 0, true];	
 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
 [( _this select 1),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
  
			
		};
	if ((lifeState lerevivber) == "INCAPACITATED" || (lifeState lerevivber) == "DEAD" || (lifeState lerevivber) == "DEAD-RESPAWN" || (lifeState lerevivber) == "DEAD-SWITCHING" || (damage lerevivber) == 1) then 
		{ 
			detach leblesser;
		

			[lerevivber] remoteExec ["removeAllActions", 0, true];
			[lerevivber] remoteExec ["allowGetIn", 0, true];
            [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
            [( _this select 1),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2]; 
		};