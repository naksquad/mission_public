//test.sqf enemy a10
private ["_thecounter","_theindexCounter","_claws","_pylonNameARR","_pylonDescAAR","_pylonName","_pylonDesc","_chooseyourdestiny","_display","_combo1","_combo2","_combo3","_combo4","_combo5","_combo6","_combo7","_combo8","_combo9","_combo10","_combo11"];

disableSerialization;

//Define idc's for controls for easy access
_combo1 = 3001;
_combo2 = 3002;
_combo3 = 3003;
_combo4 = 3004;
_combo5 = 3005;
_combo6 = 3006;
_combo7 = 3007;
_combo8 = 3008;
_combo9 = 3009;
_combo10 = 3010;
_chooseyourdestiny = 202300;
//store display, passed from onLoad
_display = _this # 0;

//combo 1
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 1;
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
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 2;
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

//combo 3
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 3;
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
	_index = lbAdd [_combo3, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo3, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 4
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 4;
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
	_index = lbAdd [_combo4, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo4, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 5
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 5;
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
	_index = lbAdd [_combo5, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo5, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 6
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 6;
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
	_index = lbAdd [_combo6, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo6, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 7
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 7;
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
	_index = lbAdd [_combo7, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo7, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 8
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 8;
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
	_index = lbAdd [_combo8, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo8, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 9
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 9;
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
	_index = lbAdd [_combo9, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo9, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 10
_claws = "O_Plane_CAS_02_dynamicLoadout_F" getCompatiblePylonMagazines 10;
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
	_index = lbAdd [_combo10, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo10, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;


{
_index = lbAdd [_chooseyourdestiny, _x];
} forEach ["Custom loadout","AA loadout","AT loadout", "CAS loadout"];

{
_index = lbAdd [1000001, _x];
} forEach ["Save to loadout 1","Save to loadout 2","Save to loadout 3"];

{
_index = lbAdd [1000002, _x];
} forEach ["Load loadout 1","Load loadout 2","Load loadout 3"];

(_display displayCtrl _combo1)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo2)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo3)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo4)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo5)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo6)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo7)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo8)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo9)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _combo10) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName1"];
(_display displayCtrl _chooseyourdestiny) ctrlAddEventHandler ["LBSelChanged","_this call AVIP_fnc_Oshikr_aolf_i_trust"];

//(_display displayCtrl _combo10)  ctrlAddEventHandler ["LBSelChanged","[_this select 0, _this select 1] execVM 'scriptNameclear;"];
(_display displayCtrl 1000001) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName1"];
(_display displayCtrl 1000002) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName1"];