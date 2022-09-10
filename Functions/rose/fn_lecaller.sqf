/* open progress bar & set initial text */
_vehType = _this # 0;
_player = _this # 1;

lesreparator = ["repa001","repa002","repa003","repa004","repa005","repa006","repa007","repa008","repa009"];


progressBar_progress = {
private["_progress", "_progressBar", "_position"];
_progress = _this # 0;
_progressBar = (findDisplay 3400) displayCtrl 3401;
_position = ctrlPosition _progressBar;
_progressBar ctrlSetPosition [(_position select 0), (_position select 1), ( _progress / 100 ) * 0.6, 0.05];
_progressBar ctrlCommit 0;
};

progressBar_setText = {
private["_text"];
_text = _this # 0;
ctrlSetText [3402, _text];
};


progressBar_open = {
_progressBar = createDialog "ProgressBar";
};

progressBar_close = {
closeDialog 3402;
};

_veh = getText(configFile>>"CfgVehicles">>typeOf _vehType>>"DisplayName");
thematrix01 = typeOf _vehType;
Vehicdamage = getDammage _vehType;
_fuelLevel = fuel _vehType;
_playername = name _player;


_engineoff = format ["<t align='center'><t size='2.2' color='#ed3b00'>%1 ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine off</t><br/><t size='1.2' color='#9ef680'>in order to Repair the Vehicle.</t></t>",_veh];

_nodammage = format ["<t align='center'><t size='2.2' color='#ed3b00'>%1</t><br/><t size='1.2' color='#9ef680'>Service Not Available</t><br/><t size='1.5' color='#ed3b00'>Damage: %2</t><br/><t size='1.5' color='#ed3b00'>Fuel: %3</t><br/><t size='1.2' color='#9ef680'>Join TS3 At ts3.naksquad.net.</t></t>",_veh,Vehicdamage,_fuelLevel];

_vehRepaired = format ["<t align='center'><t size='2.2' color='#ed3b00'>%1</t><br/><t size='1.2' color='#9ef680'>Service Completed</t><br/><t size='1.5' color='#ed3b00'>Damage: %2</t><br/><t size='1.5' color='#ed3b00'>Fuel: %3</t><br/><t size='1.2' color='#9ef680'>Join TS3 At ts3.naksquad.net.</t></t>",_veh,Vehicdamage,_fuelLevel];

_Playerinveh = format ["<t align='center'><t size='2.2' color='#ed3b00'>%1</t><br/><t size='1.2' color='#9ef680'>Service Not Available From Inside The Vehicle</t><br/><t size='1.5' color='#ed3b00'>Damage: %2</t><br/><t size='1.5' color='#ed3b00'>Fuel: %3</t><br/><t size='1.2' color='#9ef680'>Join TS3 At ts3.naksquad.net.</t></t>",_playername,Vehicdamage,_fuelLevel];

if (vehicle player != player) exitWith {hint parseText _Playerinveh};

if (Vehicdamage == 0) exitWith {hint parseText _nodammage};

if (isEngineOn _vehType) exitWith {hint parseText _engineoff};

if (str player in lesreparator) then
{
	_thepercentage = 10;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic";
	call progressBar_open; sleep 0.5; (findDisplay 3400) displayAddEventHandler ["KeyDown", "if (_this select 1 == 1) then { true }"];
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic";
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_vehType setDamage 0.2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_vehType setDamage 0;
	(findDisplay 3402) displayAddEventHandler ["KeyDown", "if (_this select 1 == 1) then { false }"]; sleep 0.5;
	call progressBar_close;
	player playActionNow "stop";
	hint parseText _vehRepaired;
	_lecallers = missionNamespace getVariable "lesextrap";
	_lecallers = _lecallers + 15;
	_therownerid = clientOwner;
	missionNamespace setVariable ["lesextrap", _lecallers, _therownerid];
	_pic = "Media\images\15point.paa";
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
} else
{
//VileAce increased time for non repair specialist
	_thepercentage = 10;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic";
	call progressBar_open; sleep 0.5; (findDisplay 3400) displayAddEventHandler ["KeyDown", "if (_this select 1 == 1) then { true }"];
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic";
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_vehType setDamage 0.2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 5; _player playMove "AinvPknlMstpSlayWrflDnon_medic"; sleep 2;
	_thepercentage = _thepercentage + 10;
	[format ["Repairing (%1", floor _thepercentage] + "%)..."] call progressBar_setText;
	[_thepercentage] call progressBar_progress;
	_vehType setDamage 0;
	(findDisplay 3402) displayAddEventHandler ["KeyDown", "if (_this select 1 == 1) then { false }"]; sleep 0.5;
	call progressBar_close;
	player playActionNow "stop";
	hint parseText _vehRepaired;

};
	
/*----------------------------------------------------------------------*/
