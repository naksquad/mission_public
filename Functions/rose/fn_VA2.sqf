_dispay = _this # 0;
disableSerialization;
private _name = name player;
private _lescore = score player;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;

private _daytime = daytime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;
(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];

//(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];
(_dispay displayCtrl 1012) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _name];


_totalxpg = missionNamespace getVariable "therankin";
if (isNil "_totalxpg") then
{
	missionNamespace setVariable ["therankin", 0]; 
	_totalxpg = 0;
};

_infkilllastxp = missionNamespace getVariable "inftherankin";
if (isNil "_infkilllastxp") then
{
	missionNamespace setVariable ["inftherankin", 0]; 
	_infkilllastxp = 0;
};
  
_softvehlastxp = missionNamespace getVariable "softtherankin";
	if (isNil "_softvehlastxp") then
{
	missionNamespace setVariable ["softtherankin", 0]; 
	_softvehlastxp = 0;
};
  
_amorkilllastxp = missionNamespace getVariable "armmortherankin";
	if (isNil "_amorkilllastxp") then
{
	missionNamespace setVariable ["armmortherankin", 0]; 
	_amorkilllastxp = 0;
};
  
_airkilllastxp = missionNamespace getVariable "airtherankin";
	if (isNil "_airkilllastxp") then
{
	missionNamespace setVariable ["airtherankin", 0]; 
	_airkilllastxp = 0;
};
  
_deathlastxp = missionNamespace getVariable "deaththerankin";
	if (isNil "_deathlastxp") then
{
	missionNamespace setVariable ["deaththerankin", 0]; 
	_deathlastxp = 0;
};

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_themasterrankin = 0;
};

_totaltk = missionNamespace getVariable "totaltk";
if (isNil "_totaltk") then
{
	missionNamespace setVariable ["totaltk", 0]; 
	_totaltk = 0;
};

_totalRevive = missionNamespace getVariable "totalRevive";
if (isNil "_totalRevive") then
{
	missionNamespace setVariable ["totalRevive", 0]; 
	_totalRevive = 0;
};



(_dispay displayCtrl 1110) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _totalxpg];
(_dispay displayCtrl 1111) ctrlSetStructuredText parseText format ["<t color='#39ba12'>%1</t>", _themasterrankin];
(_dispay displayCtrl 1112) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _infkilllastxp];
(_dispay displayCtrl 1113) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _softvehlastxp];
(_dispay displayCtrl 1114) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _amorkilllastxp];
(_dispay displayCtrl 1115) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _airkilllastxp];
(_dispay displayCtrl 1116) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _deathlastxp];
(_dispay displayCtrl 11161) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _totaltk];
(_dispay displayCtrl 11162) ctrlSetStructuredText parseText format ["<t color='#f90000'>%1</t>", _totalRevive];


if (_totalxpg <= 300) then { 
(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\1private1.paa'/>";
};

if (_totalxpg > 301 && _totalxpg <= 500 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\1private1.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\2firstclass.paa'/>";
};

if (_totalxpg > 501 && _totalxpg <= 1000 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\2firstclass.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\3Specialist.paa'/>";
};

if (_totalxpg > 1001 && _totalxpg <= 4000 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\3Specialist.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\4Corporal.paa'/>";
};

if (_totalxpg > 4001 && _totalxpg <= 10600 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\4Corporal.paa'/>";
   	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\5Sergeant.paa'/>";	
};

    if (_totalxpg > 10601 && _totalxpg <= 28800 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\5Sergeant.paa'/>";
   	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\6StaffSergeant.paa'/>";
	};

if (_totalxpg > 28800 && _totalxpg <= 36000 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\6StaffSergeant.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\7SergeafClass.paa'/>";
};

if (_totalxpg > 36000 && _totalxpg <= 43200 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\7SergeafClass.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\8MasSergeant.paa'/>";
};

if (_totalxpg > 43200 && _totalxpg <= 50400 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\8MasSergeant.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\9SG.paa'/>";
};

if (_totalxpg > 50400 && _totalxpg <= 61200 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\9SG.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\10SGM.paa'/>";
};

if (_totalxpg > 61200 && _totalxpg <= 72000 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\10SGM.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\11CSM.paa'/>";
};

if (_totalxpg > 72000 && _totalxpg <= 86400 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\11CSM.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\12SMA.paa'/>";
};

if (_totalxpg > 86400 && _totalxpg <= 104400 ) then {
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\12SMA.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\18uso1.paa'/>";
};

if (_totalxpg > 104400 && _totalxpg <= 126000 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\18uso1.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\19uso2.paa'/>";
};

if (_totalxpg > 126000 && _totalxpg <= 151200 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\19uso2.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\20uso3.paa'/>";
};

if (_totalxpg > 151200 && _totalxpg <= 180000 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\20uso3.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\21uso4.paa'/>";
};

if (_totalxpg > 180000 && _totalxpg <= 216000 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\21uso4.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\22so5.paa'/>";
};

if (_totalxpg > 216000 && _totalxpg <= 259200 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\22so5.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\23uso6.paa'/>";
};

if (_totalxpg > 259200 && _totalxpg <= 309600 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\23uso6.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\24uso7.paa'/>";
};

if (_totalxpg > 309600 && _totalxpg <= 370800 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\24uso7.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\25uso8.paa'/>";
 };

if (_totalxpg > 370800 && _totalxpg <= 442800 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\25uso8.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\26uso9.paa'/>";
};

if (_totalxpg > 442800 && _totalxpg <= 529200 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\26uso9.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\27uso10.paa'/>";
};

if (_totalxpg > 529200 && _totalxpg <= 633600 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\27uso10.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\28uso11.paa'/>";
};

if (_totalxpg > 633600 && _totalxpg <= 759600 ) then { 
	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\28uso11.paa'/>";
	(_dispay displayCtrl 1203) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\29o6star.paa'/>";
};

if (_totalxpg > 759600) then {
  	(_dispay displayCtrl 1202) ctrlSetStructuredText parseText "<img size='4.5' image='Media\images\29o6star.paa'/>";
 };




/*


	_now = date; 
	_hour = _now select 3;
	_min  = _now select 4;
	
	(findDisplay 00008 displayCtrl 0100001) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1 : %2</t>", _hour, _min];
	sleep 20;
	false;
};