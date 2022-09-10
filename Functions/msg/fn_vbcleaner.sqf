
_uidr = _this # 0;
if(getPlayerUID player == _uidr) then{
	_roadrunner = missionNamespace getVariable "roadrunner";
	if (_roadrunner == 1) then 
	{	
		_mastragraba = missionNamespace getVariable "mastragraba";
		deleteVehicle _mastragraba;
	};		
};    