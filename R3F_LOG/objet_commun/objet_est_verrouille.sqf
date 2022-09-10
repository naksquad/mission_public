/**
 * D�termine si un objet est verrouill� ou non pour un joueur donn�
 * 
 * @param 0 l'objet pour lequel savoir s'il est verrouill�
 * @param 1 l'unit� pour laquelle savoir si l'objet est verrouill�
 * 
 * @return true si l'objet est verrouill�, false sinon
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

private ["_objet", "_unite", "_objet_verrouille"];

_objet = _this # 0;
_unite = _this # 1;

_objet_verrouille = switch (R3F_LOG_CFG_lock_objects_mode) do
{
	case "side": {_objet getVariable ["R3F_LOG_proprietaire_verrou", side group _unite] != side group _unite};
	case "faction": {_objet getVariable ["R3F_LOG_proprietaire_verrou", faction _unite] != faction _unite};
	case "player": {_objet getVariable ["R3F_LOG_proprietaire_verrou", name _unite] != name _unite};
	case "unit": {_objet getVariable ["R3F_LOG_proprietaire_verrou", _unite] != _unite};
	default {false};
};

_objet_verrouille