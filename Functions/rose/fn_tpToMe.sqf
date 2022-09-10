//AlPMaker
private _theadmins = _this # 0;
removeAllActions _theadmins;
_lenondu = name _theadmins;
_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];
_jeova = ["uav1"]; 
if (str _theadmins in _jeova) then {
_theadmins addAction ["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'}];
};

_max = 10;
snext = false;
plist = [];
pselect5 = "";
{
	if ((_x != player) && (getPlayerUID _x != "") && (side _x == west)) then {
		plist set [count plist, name _x];
	};
} forEach allPlayers;
plist sort true;

smenu =
{
	_pmenu = [["Teleport Player To Me",true]];
	if ((count plist) > 0) then {
		for "_i" from (_this select 0) to (_this select 1) do {
			_arr = [format['%1', plist select (_i)], [12],  "", -5, [["expression", format ["pselect5 = plist select %1;", _i]]], "1", "1"];
			_pmenu set [_i + 2, _arr];
		};
		if (count plist > (_this select 1)) then {
			_pmenu set [(_this select 1) + 2, ["Next", [13], "", -5, [["expression", "snext = true;"]], "1", "1"]];
		} else {
			_pmenu set [(_this select 1) + 2, ["End of list", [0], "", -5, [["expression", "hint ""End of list"" "]], "0", "0"]];
			//_pmenu set [(_this select 1) + 2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
		};
		_pmenu set [(_this select 1) + 3, ["Exit", [13], "", -5, [["expression", "pselect5 = 'exit';"]], "1", "1"]];
	} else {
		_pmenu set [(_this select 1) + 2, ["No players to teleport", [0], "", -5, [["expression", "hint ""No players to TP"" "]], "1", "0"]];
		_pmenu set [(_this select 1) + 3, ["Exit", [13], "", -5, [["expression", "pselect5 = 'exit';"]], "1", "1"]];
	};
	showCommandingMenu "#USER:_pmenu";
};
_j = 0;
_max = 10;
if (_max>9) then {
	_max = 10;
};

while {pselect5 == ""} do {
	[_j, (_j + _max) min (count plist)] call smenu;
	_j = _j + _max;
	WaitUntil {pselect5 != "" or snext};	
	snext = false;
};

if (pselect5 != "exit") then {
	_name = pselect5;
	{
		if(name _x == _name) then
		{
			hint format ["Teleporting %1", _name];
			_x attachTo [vehicle player, [2, 2, 0]];
			sleep 0.25;
			detach _x;
			
			_uidr = getPlayerUID _theadmins;

			_action = "TP to Me";
			_log = format ["Admin: %1, UID: %2 Action: %3 %4", _lenondu, _uidr, _action, _name];
			sendlogfile = [_log,"AdminMenuLog"];
			publicVariableServer "sendlogfile";
		};
	} forEach allPlayers;
};