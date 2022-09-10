//by Bon_Inf*
//Modified by Moser 07/20/2014

RECRUIT_PATH = "recruit_units\";
max_units_allowed = 1;
//recruit_queue = [];

if(isServer) then{
	"recruit_newunit" addPublicVariableEventHandler {
		_newunit = _this select 1;
		[_newunit] execFSM ("recruit_units\unit_lifecycle.fsm");
	};
};
if(isDedicated) exitWith{};


// Client stuff...