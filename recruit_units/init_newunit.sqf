_unit = _this select 0;

/*****************************************************************
	following section to run only on server.
	Note: duplicate respective code in the pve in the init.sqf
******************************************************************/
if(isServer) then{
	[_unit] execFSM ("recruit_units\unit_lifecycle.fsm");
} else {
	recruit_newunit = _unit;
	publicVariable "recruit_newunit";
};




/*****************************************************************
	Client Stuff
******************************************************************/
_unit addAction ["<t color='#949494'>Dismiss</t>","recruit_units\dismiss.sqf",[],-10,false,true,""];