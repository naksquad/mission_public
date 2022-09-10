//killwer kits
private ["_Custom_Skin_class","_name","_class","_display","_skin_list_box","_kit_list_box","_le_vehicle","_camo_path","_camo_class_names","_camo_display_names","_getvc","_check_comp","_comp_class_names","_comp_display_names","_cname","_red_bar","_green_bar","_blue_bar","_transp_bar","_combobraker1"];

disableSerialization;
_display = _this # 0;

_red_bar = _display displayCtrl 1900;
_green_bar = _display displayCtrl 1901;
_blue_bar = _display displayCtrl 1902;
_transp_bar = _display displayCtrl 8902;

_skin_list_box = _display displayCtrl 1500; 
_kit_list_box = _display displayCtrl 1501;

_Custom_Skin_box = _display displayCtrl 15891;

_combobraker1 =  9100;


_le_vehicle = pleasework10;

_red_bar sliderSetRange [0,1];
_green_bar sliderSetRange [0,1];
_blue_bar sliderSetRange [0,1];
_transp_bar sliderSetRange [0,1];

_red_bar sliderSetPosition 0;
_green_bar sliderSetPosition 0;
_blue_bar sliderSetPosition 0;
_transp_bar sliderSetPosition 0;



{
_index = lbAdd [_combobraker1, _x];
} forEach  ["Red [1,0,0,1]","Dark Red [0.55,0,0,1]","Pink [1,.75,.80,1]","Deep Pink [1,0.08,0.58,1]","Orange Red [1,0.27,0,1]","Dark Orange [1,0.55,0,1]","Orange [1,0.65,0,1]","Gold 1,0.84,0,1]","Yellow [1,1,0,1]","Violet [0.93,0.51,0.93,1]","Magenta [1,0, 1,1]","Dark Violet [0.58,0,0.83,1]","Purple [0.5,0,0.5,1]","Indigo [0.29,0,0.51,1]","Lime [0, 1,0,1]","Forest Green [0.13,0.55,0.13,1]","Green [0,0.5,0,1]","Yellow Green [0.6,0.8,0.2,1]","Khaki [0.94,0.9,0.55,1]",
"Dark Khaki [0.74,0.72,0.42,1]","Olive Drab [0.42,0.56,0.14,1]","Olive [0.5,0.5,0,1]","Dark Olive Green [0.33,0.42,0.18,1]","Dark Sea Green [0.56,0.74,0.55,1]","Light Sea Green [0.13,0.7,0.67,1]","Teal [0,0.5,0.5,1]","Cyan [0,0.5,0.5,1]",
"Light Cyan [0.88, 1, 1,1]","Turquoise [0.25,0.88,0.82,1]","Steel Blue [0.27,0.51,0.71,1]","Light Blue [0.68,0.85,0.9,1]","Royal Blue [0.25,0.41,0.88,1]","Blue [0,0,1,1]","Dark Blue [0,0,0.55,1]","Tan [0.82,0.71,0.55,1]",
"Golden Rod [0.85,0.65,0.13,1]","Sienna [0.63,0.32,0.18,1]","Maroon [0.5,0, 0,1]","White [1,1,1,1]","Beige [0.96,0.96,0.86,1]","Light Gray [0.83,0.83,0.83,1]","Gray [0.5,0.5,0.5,1]","Dark Gray [0.2,0.2,0.2,1]", "VileAce [0,0,0,7]"];

lbSetColor [_combobraker1, 0 , [1,0,0,1]]; //Red
lbSetColor [_combobraker1, 1 , [0.55,0,0,1]]; //Dark Red
lbSetColor [_combobraker1, 2 , [1,.75,.80,1]]; //Pink
lbSetColor [_combobraker1, 3 , [1,0.08,0.58,1]]; //Deep Pink
lbSetColor [_combobraker1, 4 , [1,0.27,0,1]]; //Orange Red
lbSetColor [_combobraker1, 5 , [1,0.55,0,1]]; //Dark Orange
lbSetColor [_combobraker1, 6 , [1,0.65,0,1]]; //Orange
lbSetColor [_combobraker1, 7 , [1,0.84,0,1]]; //Gold
lbSetColor [_combobraker1, 8 , [1,1,0,1]]; //Yellow
lbSetColor [_combobraker1, 9 , [0.93,0.51,0.93,1]]; //Violet
lbSetColor [_combobraker1, 10, [1,0, 1,1]]; //Magenta
lbSetColor [_combobraker1, 11, [0.58,0,0.83,1]]; //Dark Violet
lbSetColor [_combobraker1, 12, [0.5,0,0.5,1]]; //Purple
lbSetColor [_combobraker1, 13, [0.29,0,0.51,1]]; //Indigo
lbSetColor [_combobraker1, 14, [0, 1,0,1]]; //Lime
lbSetColor [_combobraker1, 15, [0.13,0.55,0.13,1]]; //Forest Green
lbSetColor [_combobraker1, 16, [0,0.5,0,1]]; //Green
lbSetColor [_combobraker1, 17, [0.6,0.8,0.2,1]]; //YELLOWGREEN
lbSetColor [_combobraker1, 18, [0.94,0.9,0.55,1]]; //KHAKI
lbSetColor [_combobraker1, 19, [0.74,0.72,0.42,1]]; //DARKKHAKI
lbSetColor [_combobraker1, 20, [0.42,0.56,0.14,1]]; //OLIVEDRAB
lbSetColor [_combobraker1, 21, [0.5,0.5,0,1]]; //OLIVE
lbSetColor [_combobraker1, 22, [0.33,0.42,0.18,1]]; //DARKOLIVEGREEN
lbSetColor [_combobraker1, 23, [0.56,0.74,0.55,1]]; //DARKSEAGREEN
lbSetColor [_combobraker1, 24, [0.13,0.7,0.67,1]]; //LIGHTSEAGREEN
lbSetColor [_combobraker1, 25, [0,0.5,0.5,1]]; //TEAL
lbSetColor [_combobraker1, 26, [0, 1, 1,1]]; //CYAN
lbSetColor [_combobraker1, 27, [0.88, 1, 1,1]]; //LIGHTCYAN
lbSetColor [_combobraker1, 28, [0.25,0.88,0.82,1]]; //TURQUOISE
lbSetColor [_combobraker1, 29, [0.27,0.51,0.71,1]]; //STEELBLUE
lbSetColor [_combobraker1, 30, [0.68,0.85,0.9,1]]; //LIGHTBLUE
lbSetColor [_combobraker1, 31, [0.25,0.41,0.88,1]]; //ROYALBLUE
lbSetColor [_combobraker1, 32, [0,0,1,1]]; //BLUE
lbSetColor [_combobraker1, 33, [0,0,0.55,1]]; //DARKBLUE
lbSetColor [_combobraker1, 34, [0.82,0.71,0.55,1]]; //TAN
lbSetColor [_combobraker1, 35, [0.85,0.65,0.13,1]]; //GOLDENROD
lbSetColor [_combobraker1, 36, [0.63,0.32,0.18,1]]; //SIENNA
lbSetColor [_combobraker1, 37, [0.5,0, 0,1]]; //MAROON
lbSetColor [_combobraker1, 38, [1,1,1,1]]; //White
lbSetColor [_combobraker1, 39, [0.96,0.96,0.86,1]];  //BEIGE
lbSetColor [_combobraker1, 40, [0.83,0.83,0.83,1]]; //LIGHTGRAY
lbSetColor [_combobraker1, 41, [0.5,0.5,0.5,1]]; //GRAY
lbSetColor [_combobraker1, 42, [0.2,0.2,0.2,1]]; //DarkGray


uiNamespace setVariable ["ledisplaysav007", _display]; 
//diag_log format ["_le_vehicle %1, ", _le_vehicle];

//Get all camouflages(texture sets)
_camo_path = "true" configClasses (configfile >> "CfgVehicles" >>(typeof _le_vehicle) >> "TextureSources");
_camo_class_names = [];
_camo_display_names = [];
_camo_cuztom_class = ["black_tiles","bloodshot","camo_orange","camo_pink","camo_red","carbon","carbon_circle","chocoChip","denim","digi","digi_black","digi_desert","digi_wood","doritos","drylands","hellokitty","hex","hippie","leopard","metal_tiles","micro_carbon","mtndew","murica","pride","psych","rainbow","rusty","sand","snake","stripes","stripes_NAK","stripes2","stripes3","swamp","tiger","unionjack","urban","water","wooddark","woodland","woodtiger"];
_camo_cuztom_name = ["Black Tiles","Bloodshot","Camo Orange","Camo Pink","Camo Red","Carbon Fiber","Carbon Circle","Chocolate Chip","Denim","Digi","Digi Black","Digi Desert","Digi Wood","Doritos","Dry Lands","Hello Kitty","Hex","Hippie","Leopard","Metal Tiles","Micro Carbon","Mtn Dew","Murica","Pride","Psych","Rainbow","Rusty","Sand","Snake","Stripes","Stripes NAK","Stripes 1","stripes 2","Swamp","Tiger","Union Jack","Urban","Water","Wood Dark","Wood Land","Wood Tiger"];

{_class = configName _x; _camo_class_names pushBack _class;} forEach _camo_path;
{_name = getText (configfile >> "CfgVehicles" >>(typeof _le_vehicle) >> "TextureSources" >> _x >> "DisplayName"); _camo_display_names pushBack _name;} forEach _camo_class_names;
{
	if (_x isEqualTo "") then {
		_camo_display_names set [_forEachIndex, _camo_class_names select _forEachIndex];
	};
} forEach _camo_display_names;

//diag_log format ["_camo_class_names %1, _camo_display_names %2", _camo_class_names, _camo_display_names];

//Get all components(animations)
 _getvc = [_le_vehicle] call BIS_fnc_getVehicleCustomization;
 _check_comp = _getvc select 1;
_comp_class_names = [];
{
	if (_x isEqualType "STRING") then {
		_comp_class_names pushBack (_check_comp select _forEachIndex);
	};
} forEach _check_comp;
_comp_display_names = [];
{_cname = getText (configfile >> "CfgVehicles" >> (typeof _le_vehicle) >> "AnimationSources" >> _x >> "DisplayName"); _comp_display_names pushBack _cname;} forEach _comp_class_names;
{
	if (_x isEqualTo "") then {
		_comp_display_names set [_forEachIndex, _comp_class_names select _forEachIndex];
	};
} forEach _comp_display_names;

//diag_log format ["_comp_class_names %1, _comp_display_names %2", _comp_class_names, _comp_display_names];
missionNamespace setVariable ["theskcpveh", _le_vehicle];


if (_camo_class_names isEqualTo []) then {
} else {
	{_skin_list_box lbAdd _x} forEach _camo_display_names;
	missionNamespace setVariable ["theskinner", _camo_class_names];
};

if (_comp_class_names isEqualTo []) then {
} else {
	{_kit_list_box lbAdd _x} forEach _comp_display_names;
	missionNamespace setVariable ["thecmopskin", _comp_display_names];
};

//custom paint
if (true) then {
	{_Custom_Skin_box lbAdd _x} forEach _camo_cuztom_name;
	missionNamespace setVariable ["Custom_Skin_class", _camo_cuztom_class];
};


if !(_camo_class_names isEqualTo []) then {
	_skin_list_box  ctrlAddEventHandler ["LBSelChanged","_this call NAK_fnc_vbnet22"];
};

if !(_camo_cuztom_name isEqualTo []) then {
	_Custom_Skin_box  ctrlAddEventHandler ["LBSelChanged","_this call NAK_fnc_vbnet222"];
};

if !(_comp_class_names isEqualTo []) then {
	_kit_list_box  ctrlAddEventHandler ["LBSelChanged","_this call NAK_fnc_vbnet23"];
};

