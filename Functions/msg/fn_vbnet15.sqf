

_lalapos = _this # 0;
_lenondu = _this # 1;
_uidr = _this # 2;
_playeruid = getPlayerUID player;
_theclaws03 = parseText format  ["<img size='7' image='Media\images\nakcommand.paa'/><br/><t size='1.5' color='#ed3b00'>Wait For help </t><br/><t align='center'><t size='1.5' color='#f7ce00'>%1</t><br/><t size='1.3' color='#1450EA'> Please Join Ts3 At ts3.naksquad.net To Communicate with your Team and Faster revive.</t></t>",_lenondu]; 
_theclaws04 = parseText format  ["<img size='7' image='Media\images\pleasehel.paa'/><br/><t size='1.5' color='#ed3b00'>Your Brother </t><br/><t align='center'><t size='1.5' color='#f7ce00'>%1</t><br/><t size='1.3' color='#1450EA'> Needs to be revived.</t></t>",_lenondu]; 
_lebit01 = selectRandom ["aidemoi","aidemoi1","aidemoi2","aidemoi3","aidemoi4","aidemoi5","aidemoi6","aidemoi7","aidemoi8","aidemoi9","aidemoi10","aidemoi10"];
if (player distance _lalapos < 110) then 
{
	if !(_playeruid isEqualTo _uidr) then 
	{
		playSound _lebit01;
		hint _theclaws04;
	};
};   
if (_playeruid isEqualTo _uidr) then 
{

	hint _theclaws03;
	playSound _lebit01;
};      
