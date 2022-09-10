_theadmins = _this # 0;
_lenondu = name _theadmins;
_uidr = getPlayerUID _theadmins;

	_action = "Vehicle Markers";
	_log = format ["Admin: %1, UID: %2 Action: %3", _lenondu, _uidr, _action];
	sendlogfile = [_log,"AdminMenuLog"];
	publicVariableServer "sendlogfile";
	
removeAllActions _theadmins;
//[( _this select 0),["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],1,false,true,"",""]] remoteExec ["addAction",-2];
//VileAce remoteExec was causing duplicate entries

_theadmins addAction ["<t color='#fcdc35'>PLAYER MENU</t>", {createDialog 'nastynak007';},[],-100,false,true,"","true",-1,false,"",""];

if !("ItemMap" in items ( _this select 0)) then {( _this select 0) addweapon "ItemMap";}; 
 
if (isnil "NAK_vehMarker") then { 
 NAK_vehMarker = 0; 
};  
 
if (NAK_vehMarker == 0) then { 
 NAK_vehMarker = 1; hint "Vehicle Markers ON"; 
} else { 
 NAK_vehMarker = 0; hint "Vehicle Markers OFF"; 
}; 

if (NAK_vehMarker == 1) exitwith {
allEmpty = []; 
 { 
	if (alive _x) then {
		if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then { 
			if !(_x getVariable ['QS_ST_drawEmptyVehicle',FALSE]) then {
				if ((crew _x) isEqualTo []) then {
				
				_vehIndex = format ["veh%1",_forEachIndex]; 
				deleteMarkerLocal _vehIndex; 
				emptyVehicleMarker = createMarkerLocal [_vehIndex, getPos _x]; 
				emptyVehicleMarker setMarkerTypeLocal "waypoint"; 
				emptyVehicleMarker setMarkerPosLocal getPos _x; 
				emptyVehicleMarker setMarkerSizeLocal [0.5,0.5];
				_vehName = getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
				emptyVehicleMarker setMarkerTextLocal format['%1',_vehName]; 
				emptyVehicleMarker setMarkerColorLocal ("ColorGreen");
				allEmpty pushback _vehIndex;
				};
			};
		}; 
	};
 } forEach vehicles;
}; 

{deleteMarkerLocal _x;} forEach allEmpty;
allEmpty = []; 

 _jeova = ["uav1"];
 if (str _theadmins in _jeova) then {
	[( _this select 0),["<t color='#ffc700'>Death Star Menu System</t>", {createDialog 'playeruavspawaka'},[],1,false,true,"",""]] remoteExec ["addAction",-2];
}; 
