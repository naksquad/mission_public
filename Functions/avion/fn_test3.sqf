//test.sqf
disableSerialization;
private ["_thecounter","_theindexCounter","_claws","_pylonNameARR","_pylonDescAAR","_pylonName","_pylonDesc","_lastMai1","_chooseyourdestiny","_display","_combo1","_combo2","_combo3","_combo4","_combo5","_combo6","_combo7","_combo8","_combo9","_combo10","_combo11","_combo12","_combo13","_combo14"];

//Define idc's for controls for easy access
_combo1 = 6001;
_combo2 = 6002;
_combo3 = 6003;
_combo4 = 6004;
_combo5 = 6005;
_combo6 = 6006;
_combo7 = 6007;
_combo8 = 6008;
_combo9 = 6009;
_combo10 = 6010;
_combo11 = 6011;
_combo12 = 6012;

_combo13 = 6013;
_chooseyourdestiny = 402300;
//store display, passed from onLoad
_display = _this # 0;



//combo 1
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 1;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 2;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 3;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 4;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 5;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 6;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 7;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 8;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 9;
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
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 10;
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

//combo 11
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 11;
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
	_index = lbAdd [_combo11, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo11, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;

//combo 12
_claws = "B_Plane_Fighter_01_F" getCompatiblePylonMagazines 12;
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
	_index = lbAdd [_combo12, _x];
} forEach _pylonNameARR;
{
	lbSetTooltip [_combo12, _thecounter, _x];
	_thecounter = _thecounter + 1;
} forEach _pylonDescAAR;




{
_index = lbAdd [1000001, _x];
} forEach ["Save to loadout 1","Save to loadout 2","Save to loadout 3"];

{
_index = lbAdd [1000002, _x];
} forEach ["Load loadout 1","Load loadout 2","Load loadout 3"];


{
_index = lbAdd [_combo13, _x];
} forEach ["Dark Grey", "Dark Grey Camo"];


{
_index = lbAdd [_chooseyourdestiny, _x];
} forEach ["Custom loadout","AA loadout","AT loadout", "CAS loadout"];

(_display displayCtrl _combo1)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo2)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo3)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo4)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo5)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo6)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo7)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo8)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo9)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo10) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo11)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo12)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];
(_display displayCtrl _combo13)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName3"];

//(_display displayCtrl _combo13) ctrlAddEventHandler ["LBSelChanged","_this execVM 'scriptName3"];
//(_display displayCtrl _combo10)  ctrlAddEventHandler ["LBSelChanged","[_this select 0, _this select 1] execVM 'scriptNameclear;"];
(_display displayCtrl _chooseyourdestiny) ctrlAddEventHandler ["LBSelChanged","_this call AVIP_fnc_f35_aolf_i_trust"];

(_display displayCtrl 1000001) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName3"];
(_display displayCtrl 1000002) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName3"];