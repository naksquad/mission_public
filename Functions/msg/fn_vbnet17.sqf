
private _thecaller = _this # 0;

if (!hasInterface && {!isServer}) exitWith{};

if (player distance _thecaller < 1500) then 
{
	private _lecallers = missionNamespace getVariable "lesextrap";
		_lecallers = _lecallers + 20;
		private _therownerid = clientOwner;
		missionNamespace setVariable ["lesextrap", _lecallers, _therownerid];
		private _Wlecaller = 20;
		private _lenumbxp = parseText format [ "<t font='PuristaBold' size='1.6' color='#74E023' >+ %1</t><br /><t font='PuristaBold' size='1.6'> ",_Wlecaller];  
     	[_lenumbxp,  [1.1,0.97,1,1], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
		playSound "rewheals";
		_lecallers = 0;
};    