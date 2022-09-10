/**
 * MAIN CONFIGURATION FILE
 * 
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * (EN)
 * This file contains the configuration variables of the logistics system.
 * For the configuration of the creation factory, see the file "config_creation_factory.sqf".
 * IMPORTANT NOTE : when a logistics feature is given to an object/vehicle class name, all the classes which inherit
 *                  of the parent/generic class (according to the CfgVehicles) will also have this feature.
 *                  CfgVehicles tree view example : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 * 
 * (FR)
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * Pour la configuration de l'usine de cr�ation, voir le fichier "config_creation_factory.sqf".
 * NOTE IMPORTANTE : lorsqu'une fonctionnalit� logistique est accord�e � un nom de classe d'objet/v�hicule, les classes
 *                   h�ritant de cette classe m�re/g�n�rique (selon le CfgVehicles) se verront �galement dot�es de cette fonctionnalit�.
 *                   Exemple d'arborescence du CfgVehicles : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 */

/**
 * DISABLE LOGISTICS ON OBJECTS BY DEFAULT
 * 
 * (EN)
 * Define if objects and vehicles have logistics features by default,
 * or if it must be allowed explicitely on specific objects/vehicles.
 * 
 * If false : all objects are enabled according to the class names listed in this configuration file
 *            You can disable some objects with : object setVariable ["R3F_LOG_disabled", true];
 * If true :  all objects are disabled by default
 *            You can enable some objects with : object setVariable ["R3F_LOG_disabled", false];
 * 
 * 
 * (FR)
 * D�fini si les objets et v�hicules disposent des fonctionnalit�s logistiques par d�faut,
 * ou si elles doivent �tre autoris�s explicitement sur des objets/v�hicules sp�cifiques.
 * 
 * Si false : tous les objets sont actifs en accord avec les noms de classes list�s dans ce fichier
 *            Vous pouvez d�sactiver certains objets avec : objet setVariable ["R3F_LOG_disabled", true];
 * Si true :  tous les objets sont inactifs par d�faut
 *            Vous pouvez activer quelques objets avec : objet setVariable ["R3F_LOG_disabled", false];
 */
R3F_LOG_CFG_disabled_by_default = false;

/**
 * LOCK THE LOGISTICS FEATURES TO SIDE, FACTION OR PLAYER
 * 
 * (EN)
 * Define the lock mode of the logistics features for an object.
 * An object can be locked to the a side, faction, a player (respawn) or a unit (life).
 * If the object is locked, the player can unlock it according to the
 * value of the config variable R3F_LOG_CFG_unlock_objects_timer.
 * 
 * If "none" : no lock features, everyone can used the logistics features.
 * If "side" : the object is locked to the last side which interacts with it.
 * If "faction" : the object is locked to the last faction which interacts with it.
 * If "player" : the object is locked to the last player which interacts with it. The lock is transmitted after respawn.
 * If "unit" : the object is locked to the last player which interacts with it. The lock is lost when the unit dies.
 * 
 * Note : for military objects (not civilian), the lock is initialized to the object's side.
 * 
 * See also the config variable R3F_LOG_CFG_unlock_objects_timer.
 * 
 * (FR)
 * D�fini le mode de verrouillage des fonctionnalit�s logistics pour un objet donn�.
 * Un objet peut �tre verrouill� pour une side, une faction, un joueur (respawn) ou une unit� (vie).
 * Si l'objet est verrouill�, le joueur peut le d�verrouiller en fonction de la
 * valeur de la variable de configiration R3F_LOG_CFG_unlock_objects_timer.
 * 
 * Si "none" : pas de verrouillage, tout le monde peut utiliser les fonctionnalit�s logistiques.
 * Si "side" : l'objet est verrouill� pour la derni�re side ayant interagit avec lui.
 * Si "faction" : l'objet est verrouill� pour la derni�re faction ayant interagit avec lui.
 * Si "player" : l'objet est verrouill� pour le dernier joueur ayant interagit avec lui. Le verrou est transmis apr�s respawn.
 * Si "unit" : l'objet est verrouill� pour le dernier joueur ayant interagit avec lui. Le verrou est perdu quand l'unit� meurt.
 * 
 * Note : pour les objets militaires (non civils), le verrou est initialis� � la side de l'objet.
 * 
 * Voir aussi la variable de configiration R3F_LOG_CFG_unlock_objects_timer.
 */
R3F_LOG_CFG_lock_objects_mode = "none";

/**
 * COUNTDOWN TO UNLOCK AN OBJECT
 * 
 * Define the countdown duration (in seconds) to unlock a locked object.
 * Set to -1 to deny the unlock of objects.
 * See also the config variable R3F_LOG_CFG_lock_objects_mode.
 * 
 * D�fini la dur�e (en secondes) du compte-�-rebours pour d�verrouiller un objet.
 * Mettre � -1 pour qu'on ne puisse pas d�verrouiller les objets.
 * Voir aussi la variable de configiration R3F_LOG_CFG_lock_objects_mode.
 */
R3F_LOG_CFG_unlock_objects_timer = 30;

/**
 * ALLOW NO GRAVITY OVER GROUND
 * 
 * Define if movable objects with no gravity simulation can be set in height over the ground (no ground contact).
 * The no gravity objects corresponds to most of decoration and constructions items.
 * 
 * D�fini si les objets d�pla�able sans simulation de gravit� peuvent �tre position en hauteur sans �tre contact avec le sol.
 * Les objets sans gravit� correspondent � la plupart des objets de d�cors et de construction.
 */
R3F_LOG_CFG_no_gravity_objects_can_be_set_in_height_over_ground = true;

/**
 * LANGUAGE
 * 
 * Automatic language selection according to the game language.
 * New languages can be easily added (read below).
 * 
 * S�lection automatique de la langue en fonction de la langue du jeu.
 * De nouveaux langages peuvent facilement �tre ajout�s (voir ci-dessous).
 */
R3F_LOG_CFG_language = switch (language) do
{
	case "English":{"en"};
	case "French":{"fr"};
	
	// Feel free to create you own language file named "XX_strings_lang.sqf", where "XX" is the language code.
	// Make a copy of an existing language file (e.g. en_strings_lang.sqf) and translate it.
	// Then add a line with this syntax : case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};
	// For example :
	
	//case "Czech":{"cz"}; // Not supported. Need your own "cz_strings_lang.sqf"
	//case "Polish":{"pl"}; // Not supported. Need your own "pl_strings_lang.sqf"
	//case "Portuguese":{"pt"}; // Not supported. Need your own "pt_strings_lang.sqf"
	//case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};  // Need your own "LANGUAGE_CODE_strings_lang.sqf"
	
	default {"en"}; // If language is not supported, use English
};

/**
 * CONDITION TO ALLOW LOGISTICS
 * 
 * (EN)
 * This variable allow to set a dynamic SQF condition to allow/deny all logistics features only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow logistics only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * The condition is evaluted in real time, so it can use condition depending on the mission progress : "alive officer && taskState task1 == ""Succeeded"""
 * Or to deny logistics in a circular area defined by a marker : "player distance getMarkerPos ""markerName"" > getMarkerSize ""markerName"" select 0"
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/vehicle, you can use the command cursorTarget
 * To allow the logistics to everyone, just set the condition to "true".
 * 
 * (FR)
 * Cette variable permet d'utiliser une condition SQF dynamique pour autoriser ou non les fonctions logistiques sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser la logistique sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission : "alive officier && taskState tache1 == ""Succeeded"""
 * Ou pour interdire la logistique dans la zone d�fini par un marqueur circulaire : "player distance getMarkerPos ""markerName"" > getMarkerSize ""markerName"" select 0"
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Pour autoriser la logistique chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_logistics_on_this_client = "true";

/**
 * CONDITION TO ALLOW CREATION FACTORY
 * 
 * (EN)
 * This variable allow to set a dynamic SQF condition to allow/deny the access to the creation factory only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow the creation factory only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/v�hicule, you can use the command cursorTarget
 * Note also that the condition is evaluted in real time, so it can use condition depending on the mission progress :
 * "alive officer && taskState task1 == ""Succeeded"""
 * To allow the creation factory to everyone, just set the condition to "true".
 * 
 * (FR)
 * Cette variable permet d'utiliser une condition SQF dynamique pour rendre accessible ou non l'usine de cr�ation sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser l'usine de cr�ation sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Notez aussi que les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission :
 * "alive officier && taskState tache1 == ""Succeeded"""
 * Pour autoriser l'usine de cr�ation chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_creation_factory_on_this_client = "true";

/*
 ********************************************************************************************
 * BELOW IS THE CLASS NAMES CONFIGURATION / CI-DESSOUS LA CONFIGURATION DES NOMS DE CLASSES *
 ********************************************************************************************
 * 
 * (EN)
 * There are two ways to manage new objects with the logistics system. The first one is to add these objects in the
 * following appropriate lists. The second one is to create a new external file in the /addons_config/ directory,
 * based on /addons_config/TEMPLATE.sqf, and to add a #include below to.
 * The first method is better to add/fix only some various class names.
 * The second method is better to take into account an additional addon.
 * 
 * These variables are based on the inheritance principle according to the CfgVehicles tree.
 * It means that a features accorded to a class name, is also accorded to all child classes.
 * Inheritance tree view : http://madbull.arma.free.fr/A3_1.32_CfgVehicles_tree.html
 * 
 * (FR)
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ bas� sur /addons_config/TEMPLATE.sqf, et d'ajouter un #include ci-dessous.
 * La premi�re m�thode est pr�f�rable lorsqu'il s'agit d'ajouter ou corriger quelques classes diverses.
 * La deuxi�me m�thode est pr�f�rable s'il s'agit de prendre en compte le contenu d'un addon suppl�mentaire.
 * 
 * Ces variables sont bas�es sur le principe d'h�ritage utilis�s dans l'arborescence du CfgVehicles.
 * Cela signifie qu'une fonctionnalit� accord�e � une classe, le sera aussi pour toutes ses classes filles.
 * Vue de l'arborescence d'h�ritage : http://madbull.arma.free.fr/A3_1.32_CfgVehicles_tree.html
 */

/****** LIST OF ADDONS CONFIG TO INCLUDE / LISTE DES CONFIG D'ADDONS A INCLURE ******/
//VileAce consolidated all entries to this file

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of ground vehicles which can tow objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets.
 */
R3F_LOG_CFG_can_tow = R3F_LOG_CFG_can_tow +
[
"B_Truck_01_mover_F",
 "B_Truck_01_flatbed_F",
 "b_apc_tracked_01_crv_f"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
"ship_f",
"car_f",
"plane",
"machine_base_f",
"O_MBT_02_cannon_F",
"B_MBT_01_cannon_F",
"B_MRAP_01_hmg_F",
"B_MRAP_01_F",
"B_Truck_01_ammo_F",
"B_Truck_01_medical_F",
"B_MRAP_01_hmg_F",
"I_MRAP_03_F",
"B_G_Offroad_01_armed_F",
"B_G_Offroad_01_F",
"B_APC_Wheeled_01_cannon_F",
"I_APC_tracked_03_cannon_F",
"B_Truck_01_fuel_F",
"B_Truck_01_Repair_F",
"I_APC_Wheeled_03_cannon_F",
"I_MBT_03_cannon_F",
"B_MBT_01_TUSK_F",
"B_Truck_01_box_F",
"Land_Cargo40_sand_F",
"Land_Cargo20_sand_F",
"Land_Cargo10_sand_F",
"B_Truck_01_covered_F",
"B_Truck_01_medical_F",
"B_Truck_01_fuel_F",
"B_Truck_01_Repair_F",
"B_Truck_01_transport_F",
"B_G_Offroad_01_armed_F",
"B_UGV_01_rcws_F",
"Land_CargoBox_V1_F",
"O_Truck_03_transport_F",
"B_LSV_01_unarmed_F",
"B_LSV_01_armed_F",
"B_Heli_Transport_01_F",
"I_Heli_light_03_unarmed_F",
"I_Heli_Transport_02_F",
"O_Heli_Light_02_unarmed_F",
"B_Heli_Transport_03_unarmed_F",
"O_Heli_Transport_04_covered_F",
"C_Heli_Light_01_civil_F",
"B_Heli_Transport_03_F",
"O_Heli_Attack_02_black_F",
"B_T_VTOL_01_infantry_F",
"B_Plane_CAS_01_F",
"I_Plane_Fighter_03_AA_F",
"B_Boat_Armed_01_minigun_F",
"C_Scooter_Transport_01_F",
"B_Boat_Transport_01_F",
"C_Boat_Civil_01_rescue_F",
"B_APC_Tracked_01_rcws_F",
"I_MRAP_03_hmg_F",
"I_MRAP_03_gmg_F",
"O_MBT_04_cannon_F",
"O_MBT_04_command_F",
"I_LT_01_AA_F",
"I_LT_01_AT_F",
"I_LT_01_cannon_F",
"I_LT_01_scout_F",
"B_APC_Tracked_01_AA_F",
"O_Heli_Transport_04_F",
"B_CTRG_Heli_Transport_01_tropic_F",
"I_Heli_light_03_dynamicLoadout_F",
"O_Heli_Light_02_dynamicLoadout_F",
"I_Plane_Fighter_03_dynamicLoadout_F",
"B_Slingload_01_Fuel_F",
"O_Heli_Transport_04_ammo_F",
"O_Heli_Transport_04_bench_F",
"O_Heli_Transport_04_box_F",
"O_Heli_Transport_04_fuel_F",
"O_Heli_Transport_04_medevac_F",
"C_IDAP_Heli_Transport_02_F",
"B_CTRG_Heli_Transport_01_sand_F",
"C_Boat_Civil_01_F",
"C_Scooter_Transport_01_F",
"I_C_Boat_Transport_02_F",
"B_G_Boat_Transport_01_F",
"B_SDV_01_F",
"B_GEN_Offroad_01_comms_F",
"B_GEN_Offroad_01_covered_F",
"B_Truck_01_cargo_F",
"C_Hatchback_01_F",
"C_Tractor_01_F",
"C_Kart_01_F",
"B_Truck_01_flatbed_F"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des h�licopt�res pouvant h�liporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[
"heli_light_02_base_f",
"heli_transport_01_base_f",
"heli_transport_02_base_f",
"b_heli_transport_03_base_f",
"heli_transport_04_base_f",
"B_Heli_Transport_01_F",
"I_Heli_light_03_unarmed_F",
"I_Heli_Transport_02_F",
"O_Heli_Light_02_unarmed_F",
"B_Heli_Transport_03_unarmed_F",
"O_Heli_Transport_04_covered_F",
"B_Heli_Transport_03_F",
"O_Heli_Attack_02_black_F",
"B_T_VTOL_01_infantry_F",
"O_Heli_Transport_04_F",
"B_CTRG_Heli_Transport_01_tropic_F",
"I_Heli_light_03_dynamicLoadout_F",
"O_Heli_Light_02_dynamicLoadout_F",
"O_Heli_Transport_04_ammo_F",
"O_Heli_Transport_04_bench_F",
"O_Heli_Transport_04_box_F",
"O_Heli_Transport_04_fuel_F"
];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[
"ship_f",
"b_supplycrate_f",
"c_supplycrate_f",
"box_east_ammoveh_f",
"ig_supplycrate_f",
"box_ind_ammoveh_f",
"box_nato_ammoveh_f",
"cargo_base_f",
"land_cargobox_v1_f",
"bus",
"car_f",
"cargo10_base_f",
"machine_base_f",
"cargonet_01_base_f",
"slingload_01_base_f",
"I_LT_01_AT_F",
"I_LT_01_AA_F",
"I_LT_01_scout_F",
"I_LT_01_cannon_F",
"I_MRAP_03_hmg_F",
"I_MRAP_03_gmg_F",
"I_MRAP_03_F",
"B_G_Offroad_01_F",
"B_G_Offroad_01_F",
"B_G_Offroad_01_armed_F",
"B_G_Offroad_01_repair_F",
"B_GEN_Offroad_01_gen_F",
"B_MBT_01_TUSK_F",
"O_LSV_02_armed_F",
"O_LSV_02_unarmed_F",
"O_LSV_02_AT_F",
"B_LSV_01_unarmed_F",
"B_LSV_01_armed_F",
"B_CTRG_LSV_01_light_F",
"B_AFV_Wheeled_01_up_cannon_F",
"B_AFV_Wheeled_01_cannon_F",
"B_G_Van_02_vehicle_F",
"B_GEN_Van_02_transport_F",
"B_G_Van_02_transport_F",
"B_MRAP_01_F",
"B_MRAP_01_gmg_F",
"B_MRAP_01_hmg_F",
"B_UGV_01_F",
"B_UGV_01_rcws_F",
"B_APC_Tracked_01_AA_F",
"B_APC_Tracked_01_rcws_F",
"I_MBT_03_cannon_F",
"Pod_Heli_Transport_04_base_F",
"Land_Pod_Heli_Transport_04_covered_F",
"Land_Pod_Heli_Transport_04_medevac_F",
"Land_Pod_Heli_Transport_04_repair_F",
"Land_Pod_Heli_Transport_04_fuel_F",
"Land_Pod_Heli_Transport_04_box_F",
"Land_Pod_Heli_Transport_04_ammo_F",
"I_APC_tracked_03_cannon_F",
"I_APC_Wheeled_03_cannon_F",
"B_Truck_01_fuel_F",
"B_Truck_01_ammo_F",
"B_Truck_01_transport_F",
"B_Truck_01_box_F",
"B_Truck_01_medical_F",
"B_Truck_01_Repair_F",
"B_Boat_Armed_01_minigun_F",
"B_Lifeboat",
"B_Boat_Transport_01_F",
"B_APC_Wheeled_01_cannon_F",
"O_MBT_04_cannon_F",
"O_MBT_04_command_F",
"Land_Pod_Heli_Transport_04_bench_F",
"B_Slingload_01_Fuel_F",
"B_MBT_01_cannon_F",
"B_APC_Tracked_01_AA_F",
"B_G_Offroad_01_AT_F",
"B_LSV_01_AT_F",
"B_G_Van_01_fuel_F",
"I_C_Offroad_02_unarmed_F",
"I_C_Offroad_02_AT_F",
"I_C_Offroad_02_LMG_F",
"C_Van_02_medevac_F",
"C_Truck_02_fuel_F",
"C_Boat_Civil_01_F",
"C_Scooter_Transport_01_F",
"I_C_Boat_Transport_02_F",
"B_G_Boat_Transport_01_F",
"B_SDV_01_F",
"B_GEN_Offroad_01_comms_F",
"B_GEN_Offroad_01_covered_F",
"B_Truck_01_cargo_F",
"C_Hatchback_01_F",
"C_Tractor_01_F",
"C_Kart_01_F",
"B_Truck_01_flatbed_F",
"B_APC_Tracked_01_AA_F",
"O_MBT_02_cannon_F"
];
//VileAce Removed from items that can be lifted - to prevent deathstar items from being moved
//B_Radar_System_01_F
//B_SAM_System_03_F
//B_SAM_System_02_F
//B_SAM_System_01_F
//B_AAA_System_01_F
//VileAce - Removed bobcat from sling players taking advantage of unlimited ammo
//B_APC_Tracked_01_CRV_F

/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
* (EN)
 * This section uses a numeric quantification of capacity and cost of the objets.
 * For example, in a vehicle has a capacity of 100, we will be able to load in 5 objects costing 20 capacity units.
 * The capacity doesn't represent a real volume or weight, but a choice made for gameplay.
 * 
 * (FR)
 * Cette section utilise une quantification num�rique de la capacit� et du co�t des objets.
 * Par exemple, dans un v�hicule d'une capacit� de 100, nous pouvons charger 5 objets co�tant 20 unit�s de capacit�.
 * La capacit� ne repr�sente ni un poids, ni un volume, mais un choix fait pour la jouabilit�.
 */

/**
 * List of class names of vehicles or cargo objects which can transport objects.
 * The second element of the nested arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules ou "objets contenant" pouvant transporter des objets.
 * Le deuxi�me �l�ment des sous-tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
["tank", 5],
["car", 6],
["motorcycle", 2],
["truck_f", 100],
["bus", 30],
["plane", 3],
["uav", 0],
["ship_f", 5],
["helicopter_base_f", 8],
["heli_attack_01_base_f", 2],
["heli_attack_02_base_f", 20],
["heli_light_02_base_f", 15],
["heli_transport_01_base_f", 15],
["heli_transport_02_base_f", 120],
["i_heli_light_03_base_f", 25],
["uav_01_base_f", 0],
["cargo10_base_f", 40], 
["cargonet_01_base_f", 14],
["b_slingload_01_cargo_f", 110],
["b_slingload_01_ammo_f", 90],
["b_heli_transport_03_base_f", 70],
["o_heli_transport_04_ammo_f", 40],
["o_heli_transport_04_box_f", 40],
["heli_transport_04_base_f", 40],
["o_heli_transport_04_bench_f", 5],
["o_heli_transport_04_f", 5],
["o_heli_transport_04_fuel_f", 5],
["kart_01_base_f", 2],
["mrap_01_base_f", 12],
["mrap_02_base_f", 12],
["mrap_03_base_f", 12],
["offroad_01_base_f", 10],
["offroad_01_armed_base_f", 4],
["quadbike_01_base_f", 3],
["quadbike_base_f", 3],
["b_truck_01_mover_f", 5],
["b_truck_01_repair_f", 170],
["Land_Pod_Heli_Transport_04_ammo_F", 120],
["Land_Pod_Heli_Transport_04_box_F", 120],
["b_truck_01_covered_f", 120],
["b_truck_01_ammo_f", 120],
["b_truck_01_box_f", 170],
["truck_02_base_f", 120],
["i_truck_02_medical_f", 100],
["i_truck_02_fuel_f", 5],
["i_truck_02_transport_f", 100],
["o_truck_02_fuel_f", 5],
["o_truck_02_transport_f", 100],
["o_truck_03_ammo_f", 140],
["o_truck_03_device_f", 5],
["o_truck_03_fuel_f", 5],
["van_01_base_f", 5],
["c_van_01_box_f", 40],
["c_van_01_transport_f", 25],
["i_g_van_01_transport_f", 25],
["wheeled_apc_f", 10],
["cargo_base_f", 170],
["land_cargobox_v1_f", 14],
["box_east_ammoveh_f", 14],
["box_ind_ammoveh_f", 14],
["box_nato_ammoveh_f", 14],
["boat_civil_01_base_f", 10],
["boat_armed_01_base_f", 15]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
["uav_01_base_f", 3],
["UAV_06_base_F",5],
["kart_01_base_f", 40],
["quadbike_01_base_f", 40],
["ugv_01_base_f", 100],
["reammobox_f", 4],
["Land_Pod_Heli_Transport_04_ammo_F", 150],
["Land_Pod_Heli_Transport_04_box_F", 150],
["b_supplycrate_f", 10],
["c_supplycrate_f", 10],
["box_east_ammoord_f", 2],
["box_east_ammoveh_f", 15],
["box_east_ammo_f", 2],
["box_east_grenades_f", 2],
["box_east_support_f", 2],
["box_east_wpslaunch_f", 2],
["box_east_wps_f", 3],
["ig_supplycrate_f", 10],
["box_ind_ammoord_f", 2],
["box_ind_ammoveh_f", 15],
["box_ind_ammo_f", 2],
["box_ind_grenades_f", 2],
["box_ind_support_f", 2],
["box_ind_wpslaunch_f", 2],
["box_ind_wps_f", 3],
["land_box_ammoold_f", 2],
["box_nato_ammoord_f", 2],
["box_nato_ammoveh_f", 15],
["box_nato_ammo_f", 2],
["box_nato_grenades_f", 2],
["box_nato_support_f", 2],
["box_nato_wpslaunch_f", 2],
["box_nato_wps_f", 3],
["land_camping_light_f", 1],
["roadcone_l_f", 1],
["roadbarrier_small_f", 1],
["rubber_duck_base_f", 40],
["HMG_01_base_F", 5],
["AA_01_base_F", 8],
["AT_01_base_F", 8],
["GMG_01_base_F", 5],
["HMG_01_base_F", 5],
["Mortar_01_base_F", 5],
["B_HMG_01_F", 5],
["B_HMG_01_high_F", 5],
["B_GMG_01_F", 5],
["B_GMG_01_high_F", 5],
["B_HMG_01_A_F", 5],
["B_GMG_01_A_F", 5],
["B_Mortar_01_F", 5],
["B_static_AA_F", 8],
["B_static_AT_F", 8],
["B_Static_Designator_01_F", 5]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 * Liste des noms de classes des objets qui peuvent �tre port�s et d�plac�s par le joueur.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
"uav_01_base_f",
"UAV_06_base_F",
"HMG_01_base_F",
"AA_01_base_F",
"AT_01_base_F",
"GMG_01_base_F",
"Mortar_01_base_F",
"B_HMG_01_F",
"B_HMG_01_high_F",
"B_GMG_01_F",
"B_GMG_01_high_F",
"B_HMG_01_A_F",
"B_GMG_01_A_F",
"B_Mortar_01_F",
"B_static_AA_F",
"B_static_AT_F",
"B_Static_Designator_01_F"
];