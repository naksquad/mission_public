////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Qyjymo)
////////////////////////////////////////////////////////
class romeoJulliet5
{
	idd = 1986441001;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA14";
	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Noquxa)
		////////////////////////////////////////////////////////

		class backgroud_sscreen: IGUIBack
		{
			idc = 2200;

			x = 0.2375 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.525 * safezoneW;
			h = 0.7 * safezoneH;
		};
		class skin_list_box: RscListBox
		{
			idc = 1500;

			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.203437 * safezoneW;
			h = 0.252 * safezoneH;
		};
		class camo_text: RscText
		{
			idc = 1000;

			text = "SKIN/CAMO"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.178 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class kit_text: RscText
		{
			idc = 1001;

			text = "KITS"; //--- ToDo: Localize;
			x = 0.605 * safezoneW + safezoneX;
			y = 0.178 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class kit_list_box: RscListBox
		{
			idc = 1501;

			x = 0.545937 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.203437 * safezoneW;
			h = 0.252 * safezoneH;
		};
		class red_bar: NRD_RscSlider
		{
			idc = 1900;
			onSliderPosChanged = "[_this] spawn NAK_fnc_vbnet24;";
			sliderStep = 0.01;
			color[] = {1,0,0,0.7};

			x = 0.283437 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.177187 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {1,0,0,1};
			colorActive[] = {1,0,0,1};
			tooltip = "Red"; //--- ToDo: Localize;
		};
		class green_bar: NRD_RscSlider
		{
			idc = 1901;
			onSliderPosChanged = "[_this] spawn NAK_fnc_vbnet25;";
			sliderStep = 0.01;
			color[] = {0,1,0,0.7};

			x = 0.283437 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.177187 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,1,0,1};
			colorActive[] = {0,1,0,1};
			tooltip = "Green"; //--- ToDo: Localize;
		};
		class blue_bar: NRD_RscSlider
		{
			idc = 1902;
			onSliderPosChanged = "[_this] spawn NAK_fnc_vbnet26;";
			sliderStep = 0.01;
			color[] = {0,0,1,0.7};

			x = 0.283437 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.177187 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,1,1};
			colorActive[] = {0,0,1,1};
			tooltip = "Blue"; //--- ToDo: Localize;
		};
		class color_pic_box: RscPicture
		{
			idc = 1200;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.52625 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.196 * safezoneH;
		};
		class in_color_red: RscPicture
		{
			idc = 1201;

			text = "#(argb,8,8,3)color(1,0,0,1)";
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.02625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class in_color_green: RscPicture
		{
			idc = 1202;

			text = "#(argb,8,8,3)color(0,1,0,1)";
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.02625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class in_color_blue: RscPicture
		{
			idc = 1203;

			text = "#(argb,8,8,3)color(0,0,1,1)";
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.02625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;

			text = "COLOR PICKER"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_exit: RscButton
		{
			idc = 1603;
			onMouseButtonClick = "closeDialog 0;";

			text = "Exit"; //--- ToDo: Localize;
			x = 0.703437 * safezoneW + safezoneX;
			y = 0.864 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_naksquad: RscButton
		{
			idc = 1604;

			text = "Vehicle Skin Menu"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.525 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class transparent_bar: NRD_RscSlider
		{
			idc = 8902;
			onSliderPosChanged = "[_this] spawn NAK_fnc_vbnet27;";
			sliderStep = 0.01;

			x = 0.283437 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.177187 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Transparency"; //--- ToDo: Localize;
		};
		class RscPicture_1204: RscPicture
		{
			idc = 1203;

			text = "#(argb,8,8,3)color(0,0,0,0.50)";
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.02625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_site: RscButton
		{
			idc = 1604;

			text = "   www.naksquad.net / ts3.naksquad.net"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.822 * safezoneH + safezoneY;
			w = 0.525 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_red_cnt: RscStructuredText
		{
			idc = 1005;

			x = 0.47375 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_green_cnt: RscStructuredText
		{
			idc = 1006;

			x = 0.47375 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_blue_cnt: RscStructuredText
		{
			idc = 1007;

			x = 0.47375 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class class_trans_cnt: RscStructuredText
		{
			idc = 1008;

			x = 0.47375 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 9100;

			x = 0.250625 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.203437 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscText_1009: RscText
		{
			idc = 9002;

			text = "Sample Colors To Try"; //--- ToDo: Localize;
			x = 0.296562 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class applyskin: RscButton
		{
			idc = 10603;
			onMouseButtonClick = "[_this] spawn NAK_fnc_vbnet28;";

			text = "Apply Color Picker"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.864 * safezoneH + safezoneY;
			w = 0.137812 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class Custom_Skin_class: RscListBox
		{
			idc = 15891;

			x = 0.582162 * safezoneW + safezoneX;
			y = 0.57532 * safezoneH + safezoneY;
			w = 0.165103 * safezoneW;
			h = 0.215778 * safezoneH;
		};
		class Custom_skin_name: RscText
		{
			idc = 9002;

			text = "Custom Skin"; //--- ToDo: Localize;
			x = 0.618125 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscButton_1604: RscButton
		{
			idc = 100603;
			onMouseButtonClick = "[_this] spawn NAK_fnc_vbnet29;";

			text = "Apply Custom Skin"; //--- ToDo: Localize;
			x = 0.559062 * safezoneW + safezoneX;
			y = 0.864 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////


	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
