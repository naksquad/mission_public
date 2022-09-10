//if (isDedicated) then {

//  ********************************************
// Simple_taskDefend.sqf v1.0 by Wiggum
// A slightly improved version of the BIS_fnc_taskDefend
//  ********************************************
// How to use:
// Place the Simple_taskDefend.sqf inside your mission folder and create a init.sqf
// Inside the init.sqf type this line:
// Simple_fnc_taskDefend = compile preprocessFileLineNumbers "Simple_taskDefend.sqf";
// Place a group in the editor and name the group via -> mygroup = group this; <- inside the group leaders init
// Call the script via a trigger with condition -> true <- and On Act:
// nul=[grp, pos, areasize] call Simple_fnc_taskDefend;
//  ********************************************
// grp - is the name of the group that will defend
// pos - the center of the defense, can be a invisible H or a campfire for example
// areasize - the area (ellipse) around pos in which the group will search for static weapons to man, move randomly around and possibly sit down
//  ********************************************

if (!isServer) exitwith {};

private ["_staticWeapons","_unit","_grp","_pos","_areasize","_list","_units"];
_grp = _this # 0;
_pos = _this # 1;
_areasize = _this # 2;

{_x setBehaviour "SAFE"; _x setCombatMode "YELLOW"; _x setSpeedMode "LIMITED"; _x setFormation "STAG COLUMN"} foreach units _grp;

_list = _pos nearObjects ["StaticWeapon", _areasize];
_units = (units _grp) - [leader _grp]; //The leader should not man defenses
_staticWeapons = [];

//Find all nearby static defenses without a gunner
{
    if ((_x emptyPositions "gunner") > 0) then 
    {
        _staticWeapons = _staticWeapons + [_x];    
    };
} forEach _list;

//Have the group man static defenses
{
//Are there still units available?
    if ((count _units) > 0) then 
    {
        _unit = (_units select ((count _units) - 1));            
        _unit assignAsGunner _x;
        [_unit] orderGetIn true;
        _unit setBehaviour "SAFE";
        _unit setSpeedMode "LIMITED";
        _units resize ((count _units) - 1);

    };
} forEach _staticWeapons;

_units = (units _grp) + [leader _grp]; //The leader should also move randomly

// Units that are left should randomly sit down or move around
{  
    [_x, _pos, _areasize, _grp] spawn {    
        private ["_pos","_areasize","_wp","_unit","_newpos","_grp"];
        _unit = _this # 0;
        _pos = _this # 1;
        _areasize = _this # 2;
        _grp = _this # 3;
        
        _wp = getPos _pos;       
        _newpos =  [(_wp select 0) + ((random _areasize)+(random - _areasize)), (_wp select 1) + ((random _areasize)+(random - _areasize)), 0];
        if (!(surfaceIsWater _newPos)) then {
            _unit  doMove _newpos;
            _unit setBehaviour "SAFE";
            _unit setSpeedMode "LIMITED";
            _unit setDir random 360;
        };
        waitUntil{unitReady _unit || moveToCompleted _unit || moveToFailed _unit};
        if ((random 1) >= 0.4) then {
            if !(_unit == leader _grp) then {
                doStop _unit;
            };
            sleep 0.5;            
            _unit action ["SitDown", _unit];    
        };
    };
       
} forEach _units; // };