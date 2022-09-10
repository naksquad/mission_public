//brother player stats screen
class lesplayer
{
	idd = 12345;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA2";
	
	class controls 
	{	

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Jipufa)
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
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Tofajy)
		////////////////////////////////////////////////////////
		class le0021: RscPicture
		{
			idc = 1200;

			text = "Media\images\1cellsignal.paa";
			x = 0.224375 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class RscStructuredText_1111100: RscStructuredText
		{
			idc = 100011;

			x = 0.7625 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class le002: RscPicture
		{
			idc = 1201;

			text = "Media\images\1Battery.paa";
			x = 0.71 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.086 * safezoneH;
		};
		class txp: RscStructuredText
		{
			idc = 1101;

			text = "<t color='#0b6bbf'>Total  XP :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tppp: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#39ba12'>Total Cash :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tik: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Total Infantry Kills :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tsvk: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Total Soft Vehicle Kills :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.458 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tak1: RscStructuredText
		{
			idc = 1105;

			text = "<t color='#ffc600'>Total Armor Kills :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class takkk1: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Total Air Kills :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class td11: RscStructuredText
		{
			idc = 1107;

			text = "<t color='#ffc600'>Total Deaths :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class cr11: RscStructuredText
		{
			idc = 1108;

			text = "<t color='#ffc600'>Current Rank</t>"; //--- ToDo: Localize;
			x = 0.624687 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.126771 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class ur11: RscStructuredText
		{
			idc = 1109;

			text = "<t color='#ffc600'>Upcoming Rank</t>"; //--- ToDo: Localize;
			x = 0.618125 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.126771 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class totalXp1: RscStructuredText
		{
			idc = 1110;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tpoint1: RscStructuredText
		{
			idc = 1111;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class infkill1: RscStructuredText
		{
			idc = 1112;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tsofkill1: RscStructuredText
		{
			idc = 1113;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.458 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tamorkill1: RscStructuredText
		{
			idc = 1114;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tairkill1: RscStructuredText
		{
			idc = 1115;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tdeath1: RscStructuredText
		{
			idc = 1116;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class currentran1: RscStructuredText
		{
			idc = 1202;

			x = 0.63125 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.126 * safezoneH;
		};
		class Upcomstat1: RscStructuredText
		{
			idc = 1203;

			x = 0.63125 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.14 * safezoneH;
		};
		class titlestat1: RscStructuredText
		{
			idc = 1117;

			text = "<t color='#ffc600'>Player Stats:</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.234 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class playername1: RscStructuredText
		{
			idc = 1012;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.234 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
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
		class totalffire: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Total  Friendly Fire :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class totalreive: RscStructuredText
		{
			idc = 1106;

			text = "<t color='#ffc600'>Total Revive :</t>"; //--- ToDo: Localize;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.738 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class friendly_fire: RscStructuredText
		{
			idc = 11161;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class total_revive: RscStructuredText
		{
			idc = 11162;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.738 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////





	
	};
};
