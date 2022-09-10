
_units = _this # 0;

if (!(isNil "BIS_fakeTexture")) exitWith {"IFF cannot be initialized more than once." call BIS_fnc_error; false};

// Global icon variables
BIS_fakeTexture = [1,1,1,0] call BIS_fnc_colorRGBAtoTexture;
missionNamespace setVariable ["lejoueur", player];


// Icon eventhandler
addMissionEventHandler [
	"Draw3D",
	{
		private _hexdistance = missionNameSpace getVariable "hexdistance";

		if ((missionNameSpace getVariable "Dandegreous") == 0) then {
			{	
				if ((lifeState _x) != "INCAPACITATED" ) then  { 
					if((side _x) == west) then {
						if (_x != (missionNameSpace getVariable "lejoueur")) then {
							private _unit = _x;
							private _pos = _unit selectionPosition "Spine3";
							_pos = _unit modelToWorldVisual _pos;
							_name = name _unit;
							if (((missionNameSpace getVariable "lejoueur") distance _x) <= _hexdistance)  then {
								if (((missionNameSpace getVariable "lejoueur") distance _x) <= _hexdistance && ((missionNameSpace getVariable "lejoueur") distance _x) > (_hexdistance - 100))  then {	
									drawIcon3D [
										"a3\ui_f\data\igui\cfg\cursors\select_ca.paa",
										(missionNameSpace getVariable "NAK_iconColor") + [0.1],
										_pos,
										1,
										1,
										0
									];
								};
								if (((missionNameSpace getVariable "lejoueur") distance _x) <= (_hexdistance - 100) && ((missionNameSpace getVariable "lejoueur") distance _x) > (_hexdistance - 200) )  then {	
									drawIcon3D [
										"a3\ui_f\data\igui\cfg\cursors\select_ca.paa",
										(missionNameSpace getVariable "NAK_iconColor") + [0.2],
										_pos,
										1,
										1,
										0
									];
								};
								if (((missionNameSpace getVariable "lejoueur") distance _x) <= (_hexdistance - 200) && ((missionNameSpace getVariable "lejoueur") distance _x) > (_hexdistance - 300) )  then {	
									drawIcon3D [
										"a3\ui_f\data\igui\cfg\cursors\select_ca.paa",
										(missionNameSpace getVariable "NAK_iconColor") + [0.3],
										_pos,
										1,
										1,
										0
									];
								};
								if (((missionNameSpace getVariable "lejoueur") distance _x) <= (_hexdistance - 300) )  then {	
									drawIcon3D [
										"a3\ui_f\data\igui\cfg\cursors\select_ca.paa",
										(missionNameSpace getVariable "NAK_iconColor") + [0.5],
										_pos,
										1,
										1,
										0
									];
								};
								if (((missionNameSpace getVariable "lejoueur") distance _x) <= (_hexdistance - 400))  then {
									drawIcon3D [
										BIS_fakeTexture,
										(missionNameSpace getVariable "NAK_iconColor1") + [0.5],
										_pos,
										1,
										-1.8,
										0,
										_name,
										0,
										0.025
									];
								};
							};
						};
					};
				};
			} forEach allUnits;
		    
			{
				if ((lifeState _x) == "INCAPACITATED" ) then  { 
					if((missionNameSpace getVariable "lejoueur") != _x) then {
						if (((missionNameSpace getVariable "lejoueur") distance _x) <= 700)  then {

							drawIcon3D ["a3\ui_f\data\map\MapControl\hospital_ca.paa", [0.6,0.15,0,0.8], _x, 0.7, 0.7, 0, format["%1 (%2m)", name _x, ceil ((missionNameSpace getVariable "lejoueur") distance _x)], 0, 0.04];	
						};
					};
				};
			} forEach playableUnits;

		};
	}
];

true