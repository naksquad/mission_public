private _uidr = _this # 0; 
private _truenumba = 0;
if(getPlayerUID player == _uidr)then{
	private _dataplayrowner = clientOwner;
	vehicle player setAmmo [currentWeapon vehicle player, 0];
	while {_truenumba < 60} do
		{
			titleText ["YOU VE BEEN PUNISHED FOR TEAMKILLING!!!!\nWait 1 Min","BLACK FADED"];
			sleep 1;
			_truenumba = _truenumba + 1;
			vehicle player setAmmo [currentWeapon vehicle player, 0];
		}; 
		vehicle player setAmmo [currentWeapon vehicle player, 1]; 
		private _totaltk =   missionNamespace getVariable "totaltk";
		_totaltk = _totaltk + 1;
		missionNamespace setVariable ["totaltk", _totaltk, _dataplayrowner];
		_totaltk = 0  
};   