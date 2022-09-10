//brother pad on static menu
class playersetting
{
	idd = 98766;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VNeo";

	
	class controls 
	{
		
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
		class le0021: RscPicture
		{
			idc = 1200;

			text = "Media\images\1cellsignal.paa";
			x = 0.224375 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class RscStructuredText_100011: RscStructuredText
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

			text = "<t color='#ffc600'>Select Name Color</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tppp: RscStructuredText
		{
			idc = 1102;

			text = "<t color='#ffc600'>Select Player Marker Color :</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tik: RscStructuredText
		{
			idc = 1103;

			text = "<t color='#ffc600'>Select Recoil Multiplier :</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class tsvk: RscStructuredText
		{
			idc = 1104;

			text = "<t color='#ffc600'>Select Sway Percent :</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class cr11: RscStructuredText
		{
			idc = 1108;

			text = "<t color='#ffc600'>Player 3D Marker</t>"; //--- ToDo: Localize;
			x = 0.618125 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.126771 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class helojump: RscStructuredText
		{
			idc = 1117;

			text = "<t color='#ffc600'>Select Halo Jump Altitude :</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.150937 * safezoneW;
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
		class nametoshowcolor: RscStructuredText
		{
			idc = 15110;

			text = "Name"; //--- ToDo: Localize;
			x = 0.658125 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class exagonessspic: RscStructuredText
		{
			idc = 15111;

			text = "exa"; //--- ToDo: Localize;
			x = 0.648125 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.14 * safezoneH;
		};
		
		class hexacol: RscCombo
		{
			idc = 9002;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class namecolor: RscCombo
		{
			idc = 9001;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class selectheloalt: RscCombo
		{
			idc = 9003;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class recoilslider: RscSlider
		{
			idc = 1900;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
			onSliderPosChanged = "[_this] spawn ROSE_fnc_VTrinity1;";
			
		};
		class aimsilder: RscSlider
		{
			idc = 1901;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
			onSliderPosChanged = "[_this] spawn ROSE_fnc_VTrinity;";
		};
		class offmarker: RscButton
		{
			idc = 1605;
			text = "Off"; //--- ToDo: Localize;
			x = 0.716563 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.028 * safezoneH;
			onMouseButtonClick = "missionNamespace setVariable ['Dandegreous', 1]; hint 'Player Marker Off'";
		};
		class onmar: RscButton
		{
			idc = 1606;
			text = "On"; //--- ToDo: Localize;
			x = 0.755937 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.028 * safezoneH;
			onMouseButtonClick = "missionNamespace setVariable ['Dandegreous', 0]; hint 'Player Marker On'";
		};
		class aimRecoil: RscStructuredText
		{
			idc = 91110;
			text = ""; //--- ToDo: Localize;
			x = 0.568512 * safezoneW + safezoneX;
			y = 0.42916 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class aimCoif: RscStructuredText
		{
			idc = 91111;
			text = ""; //--- ToDo: Localize;
			x = 0.566937 * safezoneW + safezoneX;
			y = 0.48208 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class markerRange: RscStructuredText
		{
			idc = 91112;

			text = "<t color='#ffc600'>Select Players Marker Range :</t>"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.150937 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class markerSlider: RscSlider
		{
			idc = 91113;
			onSliderPosChanged = "[_this] spawn ROSE_fnc_VTrinity005;";

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class markerInputText: RscStructuredText
		{
			idc = 91114;
			text = ""; //--- ToDo: Localize;
			x = 0.567988 * safezoneW + safezoneX;
			y = 0.59324 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

		
	};
};
