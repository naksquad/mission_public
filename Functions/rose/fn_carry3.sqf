 leblesser = _this # 0;
 lerevivber = _this # 1;
 le_id = _this # 2;
/*
["",1,leblesser] call BIS_fnc_reviveOnState; 
leblesser setVariable ["#rev", 1];*/

 terminator1 = {
            _uid = _this # 0;
			lesmeidic = ["para001","para002","para003","para004","para005","para006","para007","para008","para009","para010","para011"];
            if(getPlayerUID player == _uid)then{
				if(str player in lesmeidic)then{
					_lecallers = missionNamespace getVariable "lesextrap";
					_total_rivive =   missionNamespace getVariable "totalRevive";
					_lecallers = _lecallers + 15;
					_total_rivive = _total_rivive + 1;
					_therownerid = clientOwner;
					missionNamespace setVariable ["lesextrap", _lecallers, _therownerid];
					missionNamespace setVariable ["totalRevive", _total_rivive, _therownerid]; 
					les_pic = "Media\images\15point.paa";
					[
						'<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(les_pic))+' />',
						safeZoneX + safeZoneW - 0.18 * 3 / 4,
						safeZoneY + safeZoneH - 0.24,
						5,
						1,
						0,
						3090
					] spawn bis_fnc_dynamicText;
					playSound "rewheals";
					_total_rivive = 0;
					_lecallers = 0;	
				} else
				{
					_lecallers = missionNamespace getVariable "lesextrap";
					_total_rivive =   missionNamespace getVariable "totalRevive";
					_lecallers = _lecallers + 5;
					_total_rivive = _total_rivive + 1;
					_therownerid = clientOwner;
					missionNamespace setVariable ["lesextrap", _lecallers, _therownerid];
					missionNamespace setVariable ["totalRevive", _total_rivive, _therownerid]; 
					_pic = "Media\images\medReward.paa";
					[
						'<img align=''left'' size=''2.1'' shadow=''0'' image='+(str(_pic))+' />',
						safeZoneX + safeZoneW - 0.18 * 3 / 4,
						safeZoneY + safeZoneH - 0.24,
						5,
						1,
						0,
						3090
					] spawn bis_fnc_dynamicText;
					playSound "rewheals";
					_lecallers = 0;
					_total_rivive = 0;
				};
            };    
       };  

[lerevivber] remoteExec ["allowGetIn", 0, true];
[[ "#rev", 1, leblesser ], BIS_fnc_reviveOnState] remoteExec ["call",leblesser];

 		_uidr = getPlayerUID lerevivber;
       [_uidr] remoteExec ["terminator1", -2]; 

detach leblesser;





[leblesser] remoteExec ["removeAllActions", 0, true];

[lerevivber] remoteExec ["removeAllActions", 0, true];

 [( _this select 0),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
 [( _this select 1),["<t color='#95ff00'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];