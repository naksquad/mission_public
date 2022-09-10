_uidr = _this # 0;
if(getPlayerUID player == _uidr)then{
		_lecallers = missionNamespace getVariable "themasterrankin";
		_lecallers = _lecallers + 20;
		_therownerid = clientOwner;
		missionNamespace setVariable ["themasterrankin", _lecallers, _therownerid];
		_Wlecaller = 20;
	 	_lenumbxp = parseText format [ "<t font='PuristaBold' size='1.6' color='#74E023' >+ %1</t><br /><t font='PuristaBold' size='1.6'> ",_Wlecaller];  
     	[_lenumbxp,  [1.1,0.97,1,1], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
		playSound "rewheals";
		_lecallers = 0;
};    