_theunitca = _this # 1;

_uidr = getPlayerUID _theunitca;



sleep 1;


hint "CIA operative is rescued, Escort operative to te Evac SUV ...";

sleep 1;

[] remoteExec ["NAK_fnc_smSucSwitch",0];

[_theunitca,_uidr] remoteExecCall ["NAK_fnc_vbnet16", 0, false]; 
