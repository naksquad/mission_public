//brother supply drop menu

//First Aid icon \a3\ui_f\data\gui\cfg\hints\incapacitated_ca.paa function MTLDB_fnc_nakSDFisrtAid
//Personal Ammo \a3\ui_f\data\gui\cfg\hints\reload_ca.paa function MTLDB_fnc_nakSDPersonalAmmo
//Explosives icon - \a3\ui_f\data\gui\cfg\hints\ieds_ca.paa function MTLDB_fnc_nakSDExplosives
//Nighttime supplies \a3\ui_f\data\gui\cfg\hints\icon nv_ca.paa function MTLDB_fnc_nakSDNightSupplies

class ipadmycasper
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn MTLDB_fnc_VA6";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Foxije)
		////////////////////////////////////////////////////////

//Start Generic Pictures
			class ecran1: RscPicture
		{
			moving = 0;

			idc = 12000;
			text = "Media\rug1.paa";
			x = 0.15875 * safezoneW + safezoneX;
			y = -0.116 * safezoneH + safezoneY;
			w = 0.721875 * safezoneW;
			h = 1.254 * safezoneH;
		};
		
		//Current Balance
			class RscCurrentbalencia: RscStructuredText
		{
			idc = 1997;

			x = 0.222538 * safezoneW + safezoneX;
			y = 0.75396 * safezoneH + safezoneY;
			w = 0.439687 * safezoneW;
			h = 0.028 * safezoneH;
		};
		//On Off
		class RscButton_bOnOff: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadvileacelol'";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.5 * safezoneW + safezoneX;
			y = 0.836 * safezoneH + safezoneY;
			w = 0.0344791 * safezoneW;
			h = 0.0523704 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
			tooltip = "Back"; //--- ToDo: Localize;
		};
		//P1 View Distance
		class p1: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0;_this call CHVD_fnc_openDialog;";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.539375 * safezoneW + safezoneX;
			y = 0.84636 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
			tooltip = "View Distance Settings"; //--- ToDo: Localize;
		};
		class p2: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.568644 * safezoneW + safezoneX;
			y = 0.84748 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		class p3: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.597387 * safezoneW + safezoneX;
			y = 0.84636 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
		//Cell Signal
		class le001: RscPicture
		{
			idc = 1210;

			text = "Media\images\1cellsignal.paa";
			x = 0.224375 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.056 * safezoneH;
		};
		//Battery

		class le002: RscPicture
		{
			idc = 1212;

			text = "Media\images\1Battery.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
//End Generic Pictures

//Start Weapons Crate
		//Weapons and Ammo
		class Weapons_pic: RscPicture
		{
			idc = 1201;

			text = "\a3\ui_f\data\gui\cfg\hints\rifle_ca.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		//Weapons and Ammo
		class Weapons_click: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDWeaponsAndAmmo";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};		
		
		//Weapons and Ammo
		class WeaponsAmmoText: RscText
		{
			type = 0;
			idc = 1101;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Weapons and Ammo";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class Weapons_Crate: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>Weapons and Ammo</t>"; //--- ToDo: Localize;
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
// End Weapons Crate

//Start Launcher and Ammo Crate
		//Launcher  Crate
		class Launcher_pic: RscPicture
		{
			idc = 1202;

			text = "\a3\ui_f\data\gui\cfg\hints\launcher_ca.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};

		//Launcher Crate
		class Launcher_click: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDLaunchersAndAmmo";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.38 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class LauncherText: RscText
		{
			type = 0;
			idc = 1102;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Launchers and Ammo";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};			
		//Launcher Crate

/* 		class Launcher_Crate: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Launchers and Ammo</t>"; //--- ToDo: Localize;
			x = 0.40 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		};	 */	
//End Launcher Crate

//Start Special Weapons Crate
		//Special Weapons Crate
		class SpecialWeapons_pic: RscPicture
		{
			idc = 1203;
			text = "\a3\ui_f\data\gui\cfg\hints\ranged_ca.paa";
			x = 0.49 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};		
		
		//Special Weapons Crate
		class SpecialWeapons_click: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDSpecWeaponsAndAmmo";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.49 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		
		//Special Weapons Crate
		class SpecialWeaponsText: RscText
		{
			type = 0;
			idc = 1103;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Special Weapons and Ammo";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class SpecialWeapons_Crate: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Special Weapons and Ammo</t>"; //--- ToDo: Localize;
			x = 0.54 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Weapons Ammo Crate

//Start Equipment and Diving Crate
		//Equipment and Diving Crate
		class Equipment_Diving_pic: RscPicture
		{
			idc = 1204;

			text = "\a3\ui_f\data\gui\cfg\hints\basicdive_ca.paa";
			x = 0.60 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		//Equipment and Diving Crate
		class Equipment_Diving_click: RscButton
		{
			idc = 12004;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDEqipDiving";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.60 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		//Equipment and Diving Crate
		class Equipment_DivingText: RscText
		{
			type = 0;
			idc = 1104;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Equipment and Diving";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class Equipment_Diving_Crate: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Equipment and Diving</t>"; //--- ToDo: Localize;
			x = 0.69 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Launcher Ammo Crate

//Start First Aid Crate
		class First_Aid_pic: RscPicture
		{
			idc = 1205;
			text = "\a3\ui_f\data\gui\cfg\hints\incapacitated_ca.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
	
		class First_Aid_click: RscButton
		{
			idc = 12005;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDFisrtAid";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.71 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};	
		class First_AidText: RscText
		{
			type = 0;
			idc = 1105;
			x = 0.695 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "First Aid";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};		
/* 		class First_Aid_Crate: RscStructuredText
		{
			idc = 1105;
			text = "<t color='#ffc600'>First Aid</t>";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.575667 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End First Aid Crate

//Start Personal Ammo Crate  function 
		class Personal_Ammo_pic: RscPicture
		{
			idc = 1206;
			text = "\a3\ui_f\data\gui\cfg\hints\reload_ca.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
	
		class Personal_Ammo_click: RscButton
		{
			idc = 12006;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDPersonalAmmo";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};	
		class Personal_AmmoText: RscText
		{
			type = 0;
			idc = 1106;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Personalized Ammo";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Personal_Ammo_Crate: RscStructuredText
		{
			idc = 1106;
			text = "<t color='#ffc600'>Personalized Ammo</t>";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.575667 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End Personal Ammo Crate

//Start Explosives Crate
		class Explosives_pic: RscPicture
		{
			idc = 1207;
			text = "\a3\ui_f\data\gui\cfg\hints\ieds_ca.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
	
		class Explosives_click: RscButton
		{
			idc = 12007;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDExplosives";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.38 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};	
		class ExplosivesText: RscText
		{
			type = 0;
			idc = 1107;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Explosives";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Explosives_Crate: RscStructuredText
		{
			idc = 1107;
			text = "<t color='#ffc600'>Explosives</t>";
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.575667 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End Explosives Ammo Crate

//Start Night Supplies Crate
		class Night_Supplies_pic: RscPicture
		{
			idc = 1208;
			text = "\a3\ui_f\data\gui\cfg\hints\nv_ca.paa";
			x = 0.49 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
	
		class Night_Supplies_click: RscButton
		{
			idc = 12008;
			onMouseButtonClick = "_this spawn MTLDB_fnc_nakSDNightSupplies";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.49 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};	
		class Night_SuppliesText: RscText
		{
			type = 0;
			idc = 1108;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Night Supplies";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class Night_Supplies_Crate: RscStructuredText
		{
			idc = 1108;
			text = "<t color='#ffc600'>Night Supplies</t>";
			x = 0.70 * safezoneW + safezoneX;
			y = 0.575667 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End Night Supplies Crate
		//Time
		class RscStructuredText_111110: RscStructuredText
		{
			idc = 100011;

			x = 0.7625 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
	
		class RscButton_1604: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.626131 * safezoneW + safezoneX;
			y = 0.84524 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};		
	
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};
