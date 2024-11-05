private _uidr = _this # 0;
if (getPlayerUID player == _uidr) then {
	private _roadrunner = missionNamespace getVariable "roadrunner";
	if (_roadrunner == 1) then {
		private _mastragraba = missionNamespace getVariable "mastragraba";
		deleteVehicle _mastragraba;
	};
};