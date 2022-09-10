//#include "../../..unitDefines.hpp"

hint "we in ";
/*
if (_this # 1 == 197 || _this # 1 == 210 ) then {         
switch (missionNamespace getVariable 'lesorelle') do {
	case 1: { missionNamespace setVariable ['lesorelle', 2]; 2 fadeSound 0.1;  hint 'EARPLUGS FITTED'; };
	case 2: { missionNamespace setVariable ['lesorelle', 1]; 2 fadeSound 1;  hint 'EARPLUGS REMOVED'; };
	};
}; 

if (uidd in LOUKOU) then {  
if ( _this # 1 == 24 ) then {[player] spawn ROSE_fnc_lepartrons; player addEventHandler [ "Respawn", { ["Terminate"] call BIS_fnc_EGSpectator;}]; };
};

