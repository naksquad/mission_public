//Adjusted colors to single decimal
_dispay = _this # 0;
disableSerialization;
private _now = date; 
private _hour = _now select 3;
private _min  = _now select 4;
private _daytime = daytime;
_strTime = [_daytime, "HH:MM"] call BIS_fnc_timeToString;

_combobraker1 = 9001;
_combobraker2 = 9002;
_combobraker3 = 9003;

_themasterrankin = missionNamespace getVariable "themasterrankin";
if (isNil "_themasterrankin") then
{
	missionNamespace setVariable ["themasterrankin", 0]; 
	_themasterrankin = 0;
};

sliderSetPosition [1900, (missionNameSpace getVariable "lesniperpour1")];
sliderSetPosition [1901, (missionNameSpace getVariable "lesniperpour")];
sliderSetPosition [91113, (missionNameSpace getVariable "hexdistance")];

(_dispay displayCtrl 91110) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", parseNumber ((missionNameSpace getVariable "lesniperpour1") toFixed 1)];
(_dispay displayCtrl 91111) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", parseNumber ((missionNameSpace getVariable "lesniperpour") toFixed 1)];
(_dispay displayCtrl 91114) ctrlSetStructuredText parseText format ["<t color='#ffc600'>%1</t>", parseNumber ((missionNameSpace getVariable "hexdistance") toFixed 0)];

uiNamespace setVariable ["ledisplaysav", _dispay]; 

(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1</t>", _strTime];
//(_dispay displayCtrl 100011) ctrlSetStructuredText parseText format ["<t color='#0b6bbf'>%1:%2</t>", _hour,_min];

(_dispay displayCtrl 1997) ctrlSetStructuredText parseText format ["<t color='#ffc600'>Current Balance</t><t color='#0b6bbf'> $%1</t>", _themasterrankin];
(_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>";
{
_index = lbAdd [_combobraker1, _x];
} forEach  ["Red","Dark Red","Pink","Deep Pink","Orange Red","Dark Orange","Orange","Gold","Yellow","Violet","Magenta","Dark Violet","Purple","Indigo","Lime","Forest Green","Green","Yellow Green","Khaki","Dark Khaki","Olive Drab","Olive","Dark Olive Green","Dark Sea Green","Light Sea Green","Teal","Cyan","Light Cyan","Turquoise","Steel Blue","Light Blue","Royal Blue","Blue","Dark Blue","Tan","Golden Rod","Sienna","Maroon","White","Beige","Light Gray","Gray","Dark Gray"];

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
{
_index = lbAdd [_combobraker2, _x];
} forEach  ["Red","Dark Red","Pink","Deep Pink","Orange Red","Dark Orange","Orange","Gold","Yellow","Violet","Magenta","Dark Violet","Purple","Indigo","Lime","Forest Green","Green","Yellow Green","Khaki","Dark Khaki","Olive Drab","Olive","Dark Olive Green","Dark Sea Green","Light Sea Green","Teal","Cyan","Light Cyan","Turquoise","Steel Blue","Light Blue","Royal Blue","Blue","Dark Blue","Tan","Golden Rod","Sienna","Maroon","White","Beige","Light Gray","Gray","Dark Gray"];
lbSetColor [_combobraker2, 0 , [1,0,0,1]]; //Red
lbSetColor [_combobraker2, 1 , [0.55,0,0,1]]; //Dark Red
lbSetColor [_combobraker2, 2 , [1,.75,.80,1]]; //Pink
lbSetColor [_combobraker2, 3 , [1,0.08,0.58,1]]; //Deep Pink
lbSetColor [_combobraker2, 4 , [1,0.27,0,1]]; //Orange Red
lbSetColor [_combobraker2, 5 , [1,0.55,0,1]]; //Dark Orange
lbSetColor [_combobraker2, 6 , [1,0.65,0,1]]; //Orange
lbSetColor [_combobraker2, 7 , [1,0.84,0,1]]; //Gold
lbSetColor [_combobraker2, 8 , [1,1,0,1]]; //Yellow
lbSetColor [_combobraker2, 9 , [0.93,0.51,0.93,1]]; //Violet
lbSetColor [_combobraker2, 10, [1,0, 1,1]]; //Magenta
lbSetColor [_combobraker2, 11, [0.58,0,0.83,1]]; //Dark Violet
lbSetColor [_combobraker2, 12, [0.5,0,0.5,1]]; //Purple
lbSetColor [_combobraker2, 13, [0.29,0,0.51,1]]; //Indigo
lbSetColor [_combobraker2, 14, [0, 1,0,1]]; //Lime
lbSetColor [_combobraker2, 15, [0.13,0.55,0.13,1]]; //Forest Green
lbSetColor [_combobraker2, 16, [0,0.5,0,1]]; //Green
lbSetColor [_combobraker2, 17, [0.6,0.8,0.2,1]]; //YELLOWGREEN
lbSetColor [_combobraker2, 18, [0.94,0.9,0.55,1]]; //KHAKI
lbSetColor [_combobraker2, 19, [0.74,0.72,0.42,1]]; //DARKKHAKI
lbSetColor [_combobraker2, 20, [0.42,0.56,0.14,1]]; //OLIVEDRAB
lbSetColor [_combobraker2, 21, [0.5,0.5,0,1]]; //OLIVE
lbSetColor [_combobraker2, 22, [0.33,0.42,0.18,1]]; //DARKOLIVEGREEN
lbSetColor [_combobraker2, 23, [0.56,0.74,0.55,1]]; //DARKSEAGREEN
lbSetColor [_combobraker2, 24, [0.13,0.7,0.67,1]]; //LIGHTSEAGREEN
lbSetColor [_combobraker2, 25, [0,0.5,0.5,1]]; //TEAL
lbSetColor [_combobraker2, 26, [0, 1, 1,1]]; //CYAN
lbSetColor [_combobraker2, 27, [0.88, 1, 1,1]]; //LIGHTCYAN
lbSetColor [_combobraker2, 28, [0.25,0.88,0.82,1]]; //TURQUOISE
lbSetColor [_combobraker2, 29, [0.27,0.51,0.71,1]]; //STEELBLUE
lbSetColor [_combobraker2, 30, [0.68,0.85,0.9,1]]; //LIGHTBLUE
lbSetColor [_combobraker2, 31, [0.25,0.41,0.88,1]]; //ROYALBLUE
lbSetColor [_combobraker2, 32, [0,0,1,1]]; //BLUE
lbSetColor [_combobraker2, 33, [0,0,0.55,1]]; //DARKBLUE
lbSetColor [_combobraker2, 34, [0.82,0.71,0.55,1]]; //TAN
lbSetColor [_combobraker2, 35, [0.85,0.65,0.13,1]]; //GOLDENROD
lbSetColor [_combobraker2, 36, [0.63,0.32,0.18,1]]; //SIENNA
lbSetColor [_combobraker2, 37, [0.5,0, 0,1]]; //MAROON
lbSetColor [_combobraker2, 38, [1,1,1,1]]; //White
lbSetColor [_combobraker2, 39, [0.96,0.96,0.86,1]];  //BEIGE
lbSetColor [_combobraker2, 40, [0.83,0.83,0.83,1]]; //LIGHTGRAY
lbSetColor [_combobraker2, 41, [0.5,0.5,0.5,1]]; //GRAY
lbSetColor [_combobraker2, 42, [0.2,0.2,0.2,1]]; //DARKGRAY
{
_index = lbAdd [_combobraker3, _x];
} forEach  ["500","600","700","800","900","1000","1200","1400","1600","2000","2500","3000"];
sliderSetRange [1900, 0, 10];
sliderSetRange [1901, 0, 1];
sliderSetRange [91113, 1000, 50000];
switch (str (missionNamespace getVariable "NAK_iconColor")) do {
	case "[1,0,0]": { lbSetCurSel [_combobraker1, 0]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FF0000' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.55,0,0]": { lbSetCurSel [_combobraker1, 1]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#8B0000' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,.75,.80]": { lbSetCurSel [_combobraker1, 2]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FFC0CB' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0.08,0.58]": { lbSetCurSel [_combobraker1, 3]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FF1493' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0.27,0]": { lbSetCurSel [_combobraker1, 4]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FF4500' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0.55,0]": { lbSetCurSel [_combobraker1, 5]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FF8C00' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0.65,0]": { lbSetCurSel [_combobraker1, 6]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FFA500' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0.84,0]": { lbSetCurSel [_combobraker1, 7]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FFD700' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,1,0]": { lbSetCurSel [_combobraker1, 8]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FFFF00' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.93,0.51,0.93]": { lbSetCurSel [_combobraker1, 9]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#EE82EE' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,0,1]": { lbSetCurSel [_combobraker1, 10]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FF00FF' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.58,0,0.83]": { lbSetCurSel [_combobraker1, 11]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#9400D3' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.5,0,0.5]": { lbSetCurSel [_combobraker1, 12]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#800080' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.29,0,0.51]": { lbSetCurSel [_combobraker1, 13]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#4B0082' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,1,0]": { lbSetCurSel [_combobraker1, 14]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#00FF00' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.13,0.55,0.13]": { lbSetCurSel [_combobraker1, 15]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#228B22' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,0.5,0]": { lbSetCurSel [_combobraker1, 16]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#008000' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.6,0.8,0.2]": { lbSetCurSel [_combobraker1, 17]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#9ACD32' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.94,0.9,0.55]": { lbSetCurSel [_combobraker1, 18]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#F0E68C' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.74,0.72,0.42]": { lbSetCurSel [_combobraker1, 19]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#BDB76B' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.42,0.56,0.14]": { lbSetCurSel [_combobraker1, 20]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#6B8E23' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.5,0.5,0]": { lbSetCurSel [_combobraker1, 21]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#808000' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.33,0.42,0.18]": { lbSetCurSel [_combobraker1, 22]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#556B2F' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.56,0.74,0.55]": { lbSetCurSel [_combobraker1, 23]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#8FBC8B' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.13,0.7,0.67]": { lbSetCurSel [_combobraker1, 24]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#20B2AA' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,0.5,0.5]": { lbSetCurSel [_combobraker1, 25]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#008080' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,1,1]": { lbSetCurSel [_combobraker1, 26]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#00FFFF' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.88,1,1]": { lbSetCurSel [_combobraker1, 27]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#E0FFFF' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.25,0.88,0.82]": { lbSetCurSel [_combobraker1, 28]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#40E0D0' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.27,0.51,0.71]": { lbSetCurSel [_combobraker1, 29]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#4682B4' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.68,0.85,0.9]": { lbSetCurSel [_combobraker1, 30]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#ADD8E6' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.25,0.41,0.88]": { lbSetCurSel [_combobraker1, 31]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#4169E1' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,0,1]": { lbSetCurSel [_combobraker1, 32]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#0000FF' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0,0,0.55]": { lbSetCurSel [_combobraker1, 33]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#00008B' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.82,0.71,0.55]": { lbSetCurSel [_combobraker1, 34]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#D2B48C' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.85,0.65,0.13]": { lbSetCurSel [_combobraker1, 35]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#DAA520' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.63,0.32,0.18]": { lbSetCurSel [_combobraker1, 36]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#A0522D' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.5,0,0]": { lbSetCurSel [_combobraker1, 37]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#800000' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[1,1,1]": { lbSetCurSel [_combobraker1, 38]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#FFFFFF' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.96,0.96,0.86]": { lbSetCurSel [_combobraker1, 39]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#F5F5DC' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.83,0.83,0.83]": { lbSetCurSel [_combobraker1, 40]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#D3D3D3' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.5,0.5,0.5]": { lbSetCurSel [_combobraker1, 41]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#808080' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
	case "[0.2,0.2,0.2]": { lbSetCurSel [_combobraker1, 42]; (_dispay displayCtrl 15111) ctrlSetStructuredText parseText "<img size='4.0' color='#333333' image='a3\ui_f\data\igui\cfg\cursors\select_ca.paa'/>"; };
};
lenon = "Name";
switch (str (missionNamespace getVariable "NAK_iconColor1")) do {
	case "[1,0,0]": { lbSetCurSel [_combobraker2, 0]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FF0000'>%1</t>", lenon]; };
	case "[0.55,0,0]": { lbSetCurSel [_combobraker2, 1]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#8B0000'>%1</t>", lenon]; };
	case "[1,.75,.80]": { lbSetCurSel [_combobraker2, 2]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FFC0CB'>%1</t>", lenon]; };
	case "[1,0.08,0.58]": { lbSetCurSel [_combobraker2, 3]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FF1493'>%1</t>", lenon]; };
	case "[1,0.27,0]": { lbSetCurSel [_combobraker2, 4]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FF4500'>%1</t>", lenon]; };
	case "[1,0.55,0]": { lbSetCurSel [_combobraker2, 5]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FF8C00'>%1</t>", lenon]; };
	case "[1,0.65,0]": { lbSetCurSel [_combobraker2, 6]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FFA500'>%1</t>", lenon]; };
	case "[1,0.84,0]": { lbSetCurSel [_combobraker2, 7]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FFD700'>%1</t>", lenon]; };
	case "[1,1,0]": { lbSetCurSel [_combobraker2, 8]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FFFF00'>%1</t>", lenon]; };
	case "[0.93,0.51,0.93]": { lbSetCurSel [_combobraker2, 9]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#EE82EE'>%1</t>", lenon]; };
	case "[1,0,1]": { lbSetCurSel [_combobraker2, 10]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FF00FF'>%1</t>", lenon]; };
	case "[0.58,0,0.83]": { lbSetCurSel [_combobraker2, 11]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#9400D3'>%1</t>", lenon]; };
	case "[0.5,0,0.5]": { lbSetCurSel [_combobraker2, 12]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#800080'>%1</t>", lenon]; };
	case "[0.29,0,0.51]": { lbSetCurSel [_combobraker2, 13]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#4B0082'>%1</t>", lenon]; };
	case "[0,1,0]": { lbSetCurSel [_combobraker2, 14]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#00FF00'>%1</t>", lenon]; };
	case "[0.13,0.55,0.13]": { lbSetCurSel [_combobraker2, 15]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#228B22'>%1</t>", lenon]; };
	case "[0,0.5,0]": { lbSetCurSel [_combobraker2, 16]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#008000'>%1</t>", lenon]; };
	case "[0.6,0.8,0.2]": { lbSetCurSel [_combobraker2, 17]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#9ACD32'>%1</t>", lenon]; };
	case "[0.94,0.9,0.55]": { lbSetCurSel [_combobraker2, 18]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#F0E68C'>%1</t>", lenon]; };
	case "[0.74,0.72,0.42]": { lbSetCurSel [_combobraker2, 19]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#BDB76B'>%1</t>", lenon]; };
	case "[0.42,0.56,0.14]": { lbSetCurSel [_combobraker2, 20]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#6B8E23'>%1</t>", lenon]; };
	case "[0.5,0.5,0]": { lbSetCurSel [_combobraker2, 21]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#808000'>%1</t>", lenon]; };
	case "[0.33,0.42,0.18]": { lbSetCurSel [_combobraker2, 22]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#556B2F'>%1</t>", lenon]; };
	case "[0.56,0.74,0.55]": { lbSetCurSel [_combobraker2, 23]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#8FBC8B'>%1</t>", lenon]; };
	case "[0.13,0.7,0.67]": { lbSetCurSel [_combobraker2, 24]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#20B2AA'>%1</t>", lenon]; };
	case "[0,0.5,0.5]": { lbSetCurSel [_combobraker2, 25]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#008080'>%1</t>", lenon]; };
	case "[0,1,1]": { lbSetCurSel [_combobraker2, 26]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#00FFFF'>%1</t>", lenon]; };
	case "[0.88,1,1]": { lbSetCurSel [_combobraker2, 27]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#E0FFFF'>%1</t>", lenon]; };
	case "[0.25,0.88,0.82]": { lbSetCurSel [_combobraker2, 28]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#40E0D0'>%1</t>", lenon]; };
	case "[0.27,0.51,0.71]": { lbSetCurSel [_combobraker2, 29]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#4682B4'>%1</t>", lenon]; };
	case "[0.68,0.85,0.9]": { lbSetCurSel [_combobraker2, 30]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#ADD8E6'>%1</t>", lenon]; };
	case "[0.25,0.41,0.88]": { lbSetCurSel [_combobraker2, 31]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#4169E1'>%1</t>", lenon]; };
	case "[0,0,1]": { lbSetCurSel [_combobraker2, 32]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#0000FF'>%1</t>", lenon]; };
	case "[0,0,0.55]": { lbSetCurSel [_combobraker2, 33]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#00008B'>%1</t>", lenon]; };
	case "[0.82,0.71,0.55]": { lbSetCurSel [_combobraker2, 34]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#D2B48C'>%1</t>", lenon]; };
	case "[0.85,0.65,0.13]": { lbSetCurSel [_combobraker2, 35]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#DAA520'>%1</t>", lenon]; };
	case "[0.63,0.32,0.18]": { lbSetCurSel [_combobraker2, 36]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#A0522D'>%1</t>", lenon]; };
	case "[0.5,0,0]": { lbSetCurSel [_combobraker2, 37]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#800000'>%1</t>", lenon]; };
	case "[1,1,1]": { lbSetCurSel [_combobraker2, 38]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#FFFFFF'>%1</t>", lenon]; };
	case "[0.96,0.96,0.86]": { lbSetCurSel [_combobraker2, 39]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#F5F5DC'>%1</t>", lenon]; };
	case "[0.83,0.83,0.83]": { lbSetCurSel [_combobraker2, 40]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#D3D3D3'>%1</t>", lenon]; };
	case "[0.5,0.5,0.5]": { lbSetCurSel [_combobraker2, 41]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#808080'>%1</t>", lenon]; };
	case "[0.2,0.2,0.2]": { lbSetCurSel [_combobraker2, 42]; (_dispay displayCtrl 15110) ctrlSetStructuredText parseText format ["<t color='#333333'>%1</t>", lenon]; };
};
switch (str (missionNamespace getVariable "LAltitude")) do {
	case "500": { lbSetCurSel [_combobraker3, 0]; };
	case "600": { lbSetCurSel [_combobraker3, 1]; };
	case "700": { lbSetCurSel [_combobraker3, 2]; };
	case "800": {lbSetCurSel [_combobraker3, 3]; };
	case "900": { lbSetCurSel [_combobraker3, 4]; };
	case "1000": { lbSetCurSel [_combobraker3, 5]; };
	case "1200": { lbSetCurSel [_combobraker3, 6]; };
	case "1400": { lbSetCurSel [_combobraker3, 7]; };
	case "1600": { lbSetCurSel [_combobraker3, 8]; };
	case "2000": { lbSetCurSel [_combobraker3, 9]; };
	case "2500": { lbSetCurSel [_combobraker3, 10]; };
	case "3000": { lbSetCurSel [_combobraker3, 11]; };
};

(_dispay displayCtrl _combobraker1)  ctrlAddEventHandler ["LBSelChanged","_this spawn ROSE_fnc_VNeo1"];
(_dispay displayCtrl _combobraker2)  ctrlAddEventHandler ["LBSelChanged","_this spawn ROSE_fnc_VNeo2"];
(_dispay displayCtrl _combobraker3)  ctrlAddEventHandler ["LBSelChanged","_this spawn ROSE_fnc_VNeo1"];
