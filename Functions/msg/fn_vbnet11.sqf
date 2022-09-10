_thelocationof = _this # 0;
				
//	if(player distance _lasirene < 8000) then
if(vehicle player != player) then
{
	if (isEngineOn (vehicle player)) then 
	{
		if (player distance (getMarkerPos _thelocationof) < 8000 ) then 
		{
			titleText ["<t color='#ff0000' size='2'>RED ALERT EMP Activated!</t><br/>***********", "PLAIN", -1, true, true];
			playSound "empkillers";                       
			addCamShake [10, 5, 25];
			vehicle player setHitPointDamage ["hitEngine2", 1.0];
			vehicle player setHitPointDamage ["hitEngine", 1.0];
			vehicle player setPilotLight false;
		};
	};	
	
};    	
