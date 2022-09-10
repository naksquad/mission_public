//brother main menu
class nastynak 
{
	idd = 1000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA1";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Lusebi)
		////////////////////////////////////////////////////////
		class ecran4: RscPicture
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
			onMouseButtonClick = "closeDialog 0;";
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
			tooltip = "Turn Off"; //--- ToDo: Localize;
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
		
//Player Stats		
		class le1: RscPicture
		{
			idc = 1201;
			text = "Media\images\1PlayerStats-1.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
//Player Stats Button
		class 1PlayerStats: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'lesplayer'";

			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class PlayerStatsText: RscText
		{
			type = 0;
			idc = 1100;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Player Stats";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};		
/* 		
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 1100;

			text = "<t color='#ffc600'>Player Stats</t>"; //--- ToDo: Localize;
			x = 0.232062 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		}; 
		*/
//NAK Shop
		class le2: RscPicture
		{
			idc = 1202;
			text = "Media\images\1stores-1.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class 1stores: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0; createDialog 'ipadvileacelol'";

			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class NAKShopText: RscText
		{
			type = 0;
			idc = 1105;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "NAK Shop";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1105: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Shop</t>"; //--- ToDo: Localize;
			x = 0.249062 * safezoneW + safezoneX; 
			y = 0.57 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//End NAK Shop
//Start Server Rules
		class le3: RscPicture
		{
			idc = 1203;
			text = "Media\images\1ServerRules-1.paa";
			x = safeZoneX + safeZoneW * 0.38;
			y = safeZoneY + safeZoneH * 0.32;
			w = safeZoneW * 0.050;
			h = safeZoneH * 0.086;
		};
		class ruleclass: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'ipadmwalker'";

			x = safeZoneX + safeZoneW * 0.38;
			y = safeZoneY + safeZoneH * 0.32;
			w = safeZoneW * 0.050;
			h = safeZoneH * 0.086;
			colorBackground[] = {0,0,0,0};
		};
		class ServerRulesText: RscText
		{
			type = 0;
			idc = 1101;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Server Rules";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1101: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>Rules</t>"; //--- ToDo: Localize;
			x = 0.364187 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Server Rules
//FAQ
		class le4: RscStructuredText
		{
			idc = 1204;
			text = "<a href='https://www.naksquad.net/FAQs/'><img size='4' image='Media\images\1FAQ-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.49 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class FAQText: RscText
		{
			type = 0;
			idc = 1102;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Faqs";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};		
/* 		class RscStructuredText_1102: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Faqs</t>"; //--- ToDo: Localize;
			x = 0.493875 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Faqs
//Mods
		class le5: RscStructuredText
		{
			idc = 1205;
			text = "<a href='https://www.naksquad.net/mod-list/'><img size='4' image='Media\images\1ModIcon-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.60 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class ModsText: RscText
		{
			type = 0;
			idc = 1103;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Mods";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1103: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Mods</t>"; //--- ToDo: Localize;
			x = 0.616562 * safezoneW + safezoneX; //-.01
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Mods
//Website
		class le6: RscStructuredText
		{
			idc = 1206;
			text = "<a href='https://www.naksquad.net/'><img size='4' image='Media\images\1Website-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.71 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class WebsiteText: RscText
		{
			type = 0;
			idc = 1104;
			x = 0.695 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Website";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1104: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Website</t>"; //--- ToDo: Localize;
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Website
//Server Feedback		
		class le7: RscStructuredText
		{
			idc = 1207;

			text = "<a href='https://www.naksquad.net/forum/viewforum.php?f=44'><img size='4' image='Media\images\1Feedback-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.6 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class FeedbackText: RscText
		{
			type = 0;
			idc = 1108;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "Server Feedback";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1108: RscStructuredText
		{
			idc = 1108;

			text = "<t color='#ffc600'>FeedBack</t>"; //--- ToDo: Localize;
			x = 0.61025 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Server Feedback	
//TeamSpeak
		class le8: RscStructuredText
		{
			idc = 1208;

			text = "<a href='https://naksquad.net/teamspeaktrans/'><img size='4' image='Media\images\1TeamSpeak-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.49 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class TeamSpeakText: RscText
		{
			type = 0;
			idc = 1107;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;			
			text = "TeamSpeak";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1107: RscStructuredText
		{
			idc = 1107;

			text = "<t color='#ffc600'>TeamSpeak</t>"; //--- ToDo: Localize;
			x = 0.481875 * safezoneW + safezoneX; // +.01
			x = 0.481875 * safezoneW + safezoneX; // +.01
			y = 0.57 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End TeamSpeak
//Donate		
		class le9: RscStructuredText
		{
			idc = 1209;

			text = "<a href='https://www.naksquad.net/donate/'><img size='4' image='Media\images\1Donate-1.paa' /></a>"; //--- ToDo: Localize;
			x = 0.38 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.096 * safezoneH;
		};
		class DonateText: RscText
		{
			type = 0;
			idc = 1106;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Donate";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class RscStructuredText_1106: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Donations</t>"; //--- ToDo: Localize;
			x = 0.357187 * safezoneW + safezoneX; // -.005
			y = 0.57 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,0.784,0,1};
		}; */
//End Donate
//Player Settings		
		class leplayersett: RscPicture
		{
			idc = -1;

			text = "Media\images\1PlayerSettings-1.paa";
			x =  0.71 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class playersetting: RscButton
		{
			idc = -1;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			onMouseButtonClick = "closeDialog 0;createDialog 'playersetting'";

			x =  0.71 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class PlayerSettingsText
		{
			type = 0;
			idc = -1;
			x = 0.695 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.038 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Player Settings";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class plasetting: RscStructuredText
		{
			idc = -1;

			text = "<t color='#ffc600'>Player Settings</t>"; //--- ToDo: Localize;
			x = 0.715688 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//End Player Settings
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

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////





	};
};
