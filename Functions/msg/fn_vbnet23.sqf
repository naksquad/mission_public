private ["_minheight", "_tooLow", "_camp_display", "_ctrl", "_index", "_lenonduveh", "_prayGod", "_list_selection", "_camp_class_names", "_la_voiture", "_selected_camo_class_name", "_comp_array", "_current_comp", "_comp_change", "_comp_array_total", "_lindexe", "_getvc", "_check_comp", "_nlindexe", "_lecheckersel", "_lechanger", "_comp_class_names", "_lindexename", "_laselectidu"];

disableSerialization;
_ctrl = _this # 0;
_index = _this # 1;
_lenonduveh = _ctrl lbText _index;
_prayGod = ctrlIDC _ctrl;

_minheight = "OFF";
_tooLow = format ["<t align='center'><t size='2.2' color='#ed3b00'>ENGINE ON</t><br/><t size='1.2' color='#9ef680'>You need to have the</t><br/><t size='1.5' color='#ed3b00'>Engine %1</t><br/><t size='1.2' color='#9ef680'>in order to use vehicle skin menu.</t></t>", _minheight];

_camp_display = missionNamespace getVariable "thecmopskin";
_la_voiture = missionNamespace getVariable "theskcpveh";

_getvc = [_la_voiture] call BIS_fnc_getVehicleCustomization;

_check_comp = _getvc select 1;

_comp_class_names = [];
{
	if (_x isEqualType "STRING") then {
		_comp_class_names pushBack (_check_comp select _forEachIndex);
	};
} forEach _check_comp;

_lindexename = _camp_display findIf {
	_x isEqualTo _lenonduveh
};
_laselectidu = _comp_class_names select _lindexename;

_lindexe = _check_comp findIf {
	_x isEqualTo _laselectidu
};
_nlindexe = _lindexe + 1;
_lecheckersel = _check_comp select _nlindexe;

if (_lecheckersel == 0) then {
	_lechanger = 1;
};
if (_lecheckersel == 1) then {
	_lechanger = 0;
};

_check_comp set [_nlindexe, _lechanger];

if (isEngineOn _la_voiture) exitWith {
	hint parseText _tooLow
};
[_la_voiture, nil, _check_comp, nil] call BIS_fnc_initVehicle;