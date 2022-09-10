//brother pad on static weapons menu
class ipadmyfoxy
{
	idd = 10000;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn MTLD_fnc_VA5";

	
	class controls 
	{

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Quhiwe)
		////////////////////////////////////////////////////////
//Background
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
//Balance
			class RscCurrentbalencia: RscStructuredText
		{
			idc = 1997;

			x = 0.222538 * safezoneW + safezoneX;
			y = 0.75396 * safezoneH + safezoneY;
			w = 0.439687 * safezoneW;
			h = 0.028 * safezoneH;
		};
//On-off
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
//P1
		class p1: RscButton
		{
			idc = -1;
			onMouseButtonClick = "closeDialog 0;_this spawn CHVD_fnc_openDialog;";
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
//P2
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
//P3
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
//Static AT
		class ATpic: RscPicture
		{
			idc = 1201;

			text = "Media\images\static_titan_AT.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class ATbutton: RscButton
		{
			idc = 12001;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakTitanAT";
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
		class ATtext: RscText
		{
			type = 0;
			idc = 1101;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Static Titan Launcher (AT)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class ATtext: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#ffc600'>Static Titan Launcher (AT)</t>"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//Static AA
		class AApic: RscPicture
		{
			idc = 1202;

			text = "Media\images\static_titan_AA.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class AAbutton: RscButton
		{
			idc = 12002;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakTitanAA";
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
		class AAtext: RscText
		{
			type = 0;
			idc = 1102;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Static Titan Launcher (AA)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class AAtext: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Static Titan Launcher (AA)</t>"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.18375 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//Mk30
		class Mk30pic: RscPicture
		{
			idc = 1203;

			text = "Media\images\Static_mk30_low.paa";
			x = 0.49 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class Mk30button: RscButton
		{
			idc = 12003;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30";
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
		class Mk30text: RscText
		{
			type = 0;
			idc = 1103;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk30 HMG .50cal";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};	
/* 		class Mk30text: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Mk30 HMG .50</t>"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//Mk30 Raised
		class Mk30Rpic: RscPicture
		{
			idc = 1204;

			text = "Media\images\Static_mk30_raised.paa";
			x = 0.60 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class Mk30Rbutton: RscButton
		{
			idc = 12004;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30R";
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
		class Mk30Rtext: RscText
		{
			type = 0;
			idc = 1104;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk30 HMG .50cal (Raised)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
		};		
/* 		class Mk30Rtext: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Mk30 HMG .50 (Raised)</t>"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//mk30auto
		class Mk30Apic: RscPicture
		{
			idc = 1205;

			text = "Media\images\Static_mk30_low.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class Mk30Abutton: RscButton
		{
			idc = 12005;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk30A";
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
		class Mk30Atext: RscText
		{
			type = 0;
			idc = 1105;
			x = 0.695 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk30A HMG .50cal (Auto)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Mk30Atext: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Mk30A HMG .50 (Auto)</t>"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//mk32
		class Mk32pic: RscPicture
		{
			idc = 1206;

			text = "Media\images\Static_mk32_low.paa";
			x = 0.27 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class Mk32button: RscButton
		{
			idc = 12006;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk32";
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
		class Mk32text: RscText
		{
			type = 0;
			idc = 1106;
			x = 0.255 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk32 GMG 20 mm";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Mk32text: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Mk32 GMG 20 mm </t>"; //--- ToDo: Localize;
			x = 0.230938 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
		}; */
//mk32 rasied
		class Mk32Rpic: RscPicture
		{
			idc = 1207;

			text = "Media\images\Static_mk32_raised.paa";
			x = 0.38 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class Mk32Rbutton: RscButton
		{
			idc = 12007;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk32R";
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
		class Mk32Rtext: RscText
		{
			type = 0;
			idc = 1107;
			x = 0.365 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk32 GMG 20 mm (Raised)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
/* 		class Mk32Rtext: RscStructuredText
		{
			idc = 1107;

			text = "<t color='#ffc600'>Mk32 GMG 20 mm (Raised)</t>"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//mk32auto
		class Mk32Apic: RscPicture
		{
			idc = 1208;

			text = "Media\images\Static_mk32_low.paa";
			x = 0.49 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
 		class Mk32Abutton: RscButton
		{
			idc = 12008;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakmk32A";
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
		class Mk32Atext: RscText
		{
			type = 0;
			idc = 1108;
			x = 0.475 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mk32A GMG 20 mm (Auto)";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	
/* 		class Mk32Atext: RscStructuredText
		{
			idc = 1108;

			text = "<t color='#ffc600'>Mk32A GMG 20 mm (Auto) </t>"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {215,40,40,0.9};
		}; */
//Mortar
		class Mortarpic: RscPicture
		{
			idc = 1209;

			text = "Media\images\Static_Mortar.paa";
			x = 0.6 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
		};
 		class Mortarbutton: RscButton
		{
			idc = 12009;
			onMouseButtonClick = "_this spawn MTLD_fnc_nakMortar";
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};

			x = 0.6 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.086 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class Mortartext: RscText
		{
			type = 0;
			idc = 1109;
			x = 0.585 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.08 * safezoneH;
			style = 530;
			lineSpacing = 0.8;
			text = "Mortar Tubes and Bipods";
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaSemiBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};	

//No Action
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
