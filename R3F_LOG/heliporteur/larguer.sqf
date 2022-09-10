/**
 * Larguer un objet en train d'�tre h�liport�
 * 
 * @param 0 l'h�liporteur
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	private ["_heliporteur", "_objet"];
	
	_heliporteur = _this # 0;
	_objet = _heliporteur getVariable "R3F_LOG_heliporte";
	
	_heliporteur setVariable ["R3F_LOG_heliporte", objNull, true];
	_objet setVariable ["R3F_LOG_est_transporte_par", objNull, true];
	
	// D�tacher l'objet et lui appliquer la vitesse de l'h�liporteur (inertie)
	[_objet, "detachSetVelocity", velocity _heliporteur] call R3F_LOG_FNCT_exec_commande_MP;
	
	systemChat format [STR_R3F_LOG_action_heliport_larguer_fait, getText (configFile >> "CfgVehicles" >> (typeOf _objet) >> "displayName")];
		removeAllActions _heliporteur;
		sleep 1;
		_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliporter + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_heliporter}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliporter_valide"];

		_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG_action_heliport_larguer + "</t>"), {_this call R3F_LOG_FNCT_heliporteur_larguer}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_objet_addAction == _target && R3F_LOG_action_heliport_larguer_valide"];
	//	[_heliporteur, ["<t color='#9990f9'>Ammo Drop</t>", "scripts\vehicle\drop\drop.sqf",[1],0,false,true,"", "driver _target == player"]] remoteExec ["addAction", 0, false];


	R3F_LOG_mutex_local_verrou = false;
};