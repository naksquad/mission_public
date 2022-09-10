//test.sqf
private ["_lastMai1","_chooseyourdestiny","_display","_combo1","_combo2","_combo3","_combo4","_combo5","_combo6","_combo7","_combo8","_combo9","_combo10","_combo11","_combo12","_combo13","_combo14"];

disableSerialization;

//Define idc's for controls for easy access
_combo1 = 20001;
_combo2 = 20002;
_combo3 = 20003;
_chooseyourdestiny = 2602300;



//store display, passed from onLoad
_display = _this # 0;




//Add to our lb and combo lists
//combo 1
_claws = "I_Heli_light_03_dynamicLoadout_F" getCompatiblePylonMagazines 1;
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
_claws = "I_Heli_light_03_dynamicLoadout_F" getCompatiblePylonMagazines 2;
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
_index = lbAdd [_chooseyourdestiny, _x];
} forEach ["Custom loadout","AT loadout"];
{
_index = lbAdd [_combo3, _x];
} forEach ["Indep", "Green"];

{
_index = lbAdd [1000001, _x];
} forEach ["Save to loadout 1","Save to loadout 2","Save to loadout 3"];

{
_index = lbAdd [1000002, _x];
} forEach ["Load loadout 1","Load loadout 2","Load loadout 3"];

(_display displayCtrl _combo1)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName8"];
(_display displayCtrl _combo2)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName8"];
(_display displayCtrl _combo3)  ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_scriptName8"];
(_display displayCtrl _chooseyourdestiny) ctrlAddEventHandler ["LBSelChanged","_this call AVIP_fnc_ocrac_aolf_i_trust"];


(_display displayCtrl 1000001) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName8"];
(_display displayCtrl 1000002) ctrlAddEventHandler ["LBSelChanged","_this call AVI_fnc_lscriptName8"];


//(_display displayCtrl _combo13) ctrlAddEventHandler ["LBSelChanged","_this execVM 'scriptName3"];
//(_display displayCtrl _combo10)  ctrlAddEventHandler ["LBSelChanged","[_this select 0, _this select 1] execVM 'scriptNameclear;"];
