private _displayList = missionNamespace getVariable "listboxCtrlEhLit";

{
	if (!isNull _x) then {
		_x ctrlRemoveAllEventHandlers "LBSelChanged";
	};
	
} forEach _displayList;

missionNamespace setVariable ["listboxCtrlEhLit", []];