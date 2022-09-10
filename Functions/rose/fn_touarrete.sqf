leblesser = _this # 0;
lerevivber = _this # 1;

while {lifeState leblesser == "INCAPACITATED"} do  {
		if (!(isNull objectParent lerevivber)) then {
			[leblesser] remoteExec ["removeAllActions", 0, true];
			detach leblesser;
		
			[leblesser,lerevivber] spawn ROSE_fnc_carry1;
		}; sleep 3;
	
};

