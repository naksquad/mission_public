/**
 * Initialise un v�hicule h�liporteur
 * 
 * @param 0 l'h�liporteur
 */

private ["_heliporteur"];

_heliporteur = _this # 0;

// D�finition locale de la variable si elle n'est pas d�finie sur le r�seau
if (isNil {_heliporteur getVariable "R3F_LOG_heliporte"}) then
{
	_heliporteur setVariable ["R3F_LOG_heliporte", objNull, false];
};
//[_heliporteur, ["<t color='#9990f9'>Ammo Drop</t>", "scripts\vehicle\drop\drop.sqf",[1],0,false,true,"", "driver _target == player"]] remoteExec ["addAction", 0, false];

_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliporter + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_heliporter}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliporter_valide"];

_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliport_larguer + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_larguer}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliport_larguer_valide"];