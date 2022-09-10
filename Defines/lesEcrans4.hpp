//brother Shop main menu
class ipadvileacelol 
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn MTSC_fnc_VA3";

	
	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Fydybi)
		////////////////////////////////////////////////////////

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
		class RscCurrentbalencia: RscStructuredText
		{
			idc = 1997;

			x = 0.222538 * safezoneW + safezoneX;
			y = 0.75396 * safezoneH + safezoneY;
			w = 0.439687 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscButton_bOnOff: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'nastynak'";
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
		class p4: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.62705 * safezoneW + safezoneX;
			y = 0.84524 * safezoneH + safezoneY;
			w = 0.0240623 * safezoneW;
			h = 0.033852 * safezoneH;
			colorBackground[] = {0.7,0.7,0.7,0};
		};
//Cell
		class le001: RscPicture
		{
			idc = 1210;

			text = "Media\images\1cellsignal.paa";
			x = 0.224375 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.056 * safezoneH;
		};
//Time
		class RscStructuredText_111110: RscStructuredText
		{
			idc = 100011;

			x = 0.7625 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
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
//Start Sector Scan	
		class le1: RscPicture
		{
			idc = 1201;

			text = "\a3\ui_f\data\gui\cfg\hints\radar_ca.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class sectorscanc: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this spawn MTSC_fnc_VAhpscannerai";
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
		class SectorScanText: RscText
		{
			type = 0;
			idc = 1100;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Sector Scan";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};			
		/* class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;

			text = "<t align='left' color='#ffffff'>Sector Scan</t>"; //--- ToDo: Localize;
			x = 0.27 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Sector Scan	
//Start AI Revive		
		class le3: RscPicture
		{
			idc = 1203;
			text = "Media\images\1holdAction_reviveMedic_ca-1.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		class reviveMedicc: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this spawn MTSC_fnc_VAaiRevive";
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
		class AIReviveText: RscText
		{
			type = 0;
			idc = 1101;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "AI Revive";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};		
/* 		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;

			text = "<t align='left' color='#ffffff'>AI Revive</t>"; //--- ToDo: Localize;
			x = 0.38 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End AI Revive			
//Start AutoRevive	
		class le2: RscPicture
		{
			idc = 1202;
			text = "Media\images\1holdAction_revive_ca-1.paa";
			x = 0.49 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
	
		class autoreviveC: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this spawn MTSC_fnc_VArevive";
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
		class AutoReviveText: RscText
		{
			type = 0;
			idc = 1105;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Auto Revive";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};	
/* 		class RscStructuredText_1105: RscStructuredText
		{
			idc = 1105;

			text = "<t align='left' color='#ffffff'>Auto Revive</t>"; //--- ToDo: Localize;
			x = 0.49 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End AutoRevive
//Start Supply Drop
		class ammocratecpic: RscPicture
		{
			idc = 1205;

			text = "Media\images\1SupplyDrop-1.paa";
			x = 0.60 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		class ammodropC: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadmycasper'";
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
			//tooltip = "Module Under Construction"; //--- ToDo: Localize;
		};
		class SupplyDropText: RscText
		{
			type = 0;
			idc = 1103;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Supply Drop";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};		
/* 		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1104;

			text = "<t align='left' color='#ffffff'>Supply Drop</t>"; //--- ToDo: Localize;
			x = 0.60 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Supply Drop
//Static Weapons Drop
		class staticdroppic: RscPicture
		{
			idc = 1206;

			text = "\a3\ui_f\data\gui\cfg\hints\firemode_ca.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		class staticdroC: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadmyfoxy'";
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
		class StaticWeaponDropText: RscText
		{
			type = 0;
			idc = 1103;
			x = 0.695 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Static Weapon Drop";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1103: RscStructuredText
		{
			idc = 1103;

			text = "<t align='left' color='#ffffff'>Static Weapon Drop</t>"; //--- ToDo: Localize;
			x = 0.70 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.10 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Weapons Drop		
//Arsenal Start
		class the_arsenal_pic: RscPicture
		{
			idc = 1106;
			text = "Media\images\1Arsenal-1.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};	
		class arsenal_click: RscButton
		{
			idc = 12008;
			onMouseButtonClick = "_this spawn MTSC_fnc_VAArsenal";
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
		class ArsenalText: RscText
		{
			type = 0;
			idc = 1107;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Arsenal";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class the_arsenal: RscStructuredText
		{
			idc = 1107;
			text = "<t align='left' color='#ffffff'>Arsenal</t>";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//Arsenal End

//Start Recruit AI
		class Recruit_AI: RscPicture
		{
			idc = 1209;
			text = "\a3\ui_f\data\gui\cfg\hints\response_ca.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		
		class Recruit_AIButton: RscButton
		{
			idc = 12009;
			//VileAce makle open_dialog.swf a function add to line below
			onMouseButtonClick = "_this spawn MTSC_fnc_Open_Recruit_Dialog";
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
		class RecruitAIText: RscText
		{
			type = 0;
			idc = 1109;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Recruit AI";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Recruit_AIText: RscStructuredText
		{
			idc = 1109;

			text = "<t align='left' color='#ffffff'>Recruit AI</t>"; //--- ToDo: Localize;
			x = 0.38 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Recruit AI
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////




	};
};
