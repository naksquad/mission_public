private ["_ctrl","_index","_lenonduveh","_prayGod","_list_selection","_camo_class_names","_la_voiture","_selected_camo_class_name","_minheight","_tooLow"];

disableSerialization;
_ctrl = _this # 0;
_index = _this # 1;
_lenonduveh = _ctrl lbText _index;
_prayGod =  ctrlIDC _ctrl;
_list_selection = lbCurSel _prayGod;

 _minheight = "OFF";
 _tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle skin menu.</t></t>",_minheight];


diag_log format ["_ctrl %1, _index %2, _lenonduveh %3, _prayGod %4, _list_selection %5", _ctrl, _index,_lenonduveh,_prayGod,_list_selection];

_camo_class_names = missionNamespace getVariable "theskinner";
_la_voiture = missionNamespace getVariable "theskcpveh";

diag_log format ["_camo_class_names %1, _la_voiture %2", _camo_class_names, _la_voiture];

_selected_camo_class_name = _camo_class_names select _list_selection;

if (isEngineOn _la_voiture) exitWith {hint parseText _tooLow};
[_la_voiture,[_selected_camo_class_name,1],nil,nil] call BIS_fnc_initVehicle; 
