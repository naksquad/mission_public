private ["_lastMai1","_chooseyourdestiny","_display","_combo1","_combo2","_combo3","_combo4","_combo5","_combo6","_combo7","_combo8","_combo9","_combo10","_combo11","_combo12","_combo13","_combo14"];

disableSerialization;
_combo1 = 40001;
_combo2 = 40002;
_combo3 = 40003;
//_chooseyourdestiny = 16727300;
_display = _this # 0;





//combo 1
_claws = "B_UAV_05_F" getCompatiblePylonMagazines 1;
_pylonNameARR = [];
_pylonDescAAR = [];
_thecounter = 0;
{
	_pylonName =  getText (configfile >> "CfgMagazines" >> _x >> "displayName");
	_pylonNameARR pushBack _pylonName;
	_pylonDesc =  getText (configfile >> "CfgMagazines" >> _x >> "descriptionShort"); 
	_pylonDescAAR pushBack _pylonDesc;
} forEach _claws;
{
	_index = lbAdd [_combo1, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo1, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 2
_claws = "B_UAV_05_F" getCompatiblePylonMagazines 2;
_pylonNameARR = [];
_pylonDescAAR = [];
_thecounter = 0;
{
	_pylonName =  getText (configfile >> "CfgMagazines" >> _x >> "displayName");
	_pylonNameARR pushBack _pylonName;
	_pylonDesc =  getText (configfile >> "CfgMagazines" >> _x >> "descriptionShort"); 
	_pylonDescAAR pushBack _pylonDesc;
} forEach _claws;
{
	_index = lbAdd [_combo2, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo2, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;


{
_index = lbAdd [_combo3, _x];
} forEach ["Dark Grey", "Dark Grey Camo"];
/*
{
_index = lbAdd [_chooseyourdestiny, _x];
} forEach ["Custom loadout","AA loadout","AT loadout","CAS loadout"];
*/
{
_index = lbAdd [1000001, _x];
} forEach ["Save to loadout 1","Save to loadout 2","Save to loadout 3"];

{
_index = lbAdd [1000002, _x];
} forEach ["Load loadout 1","Load loadout 2","Load loadout 3"];

(_display displayCtrl _combo1)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName10"];
(_display displayCtrl _combo2)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName10"];
(_display displayCtrl _combo3)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName10"];
//(_display displayCtrl _chooseyourdestiny) ctrlAddEventHandler ["LBSelChanged","_this execVM 'Scripts\vehicle\uav2\aolf_i_trust.sqf'"];
//(_display displayCtrl _combo10)  ctrlAddEventHandler ["LBSelChanged","[_this select 0, _this select 1] execVM 'scriptNameclear;"];

(_display displayCtrl 1000001) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName10"];
(_display displayCtrl 1000002) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName10"];