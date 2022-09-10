// by Bon_Inf*
//Modified by Moser -- 07/18/2014

#include "definitions.sqf"

class RecruitUnitsDialog {
	idd = RECRUITING_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'recruit_units\build_unitlist.sqf'";

	__EXEC( _xSpacing = 0.0075;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 101; _windowHeight = 64;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : BON_RscPicture {
			type = 0;
			moving = true;
			idc = RECRUITING_BCKGRND;
			x = safeZoneX + safeZoneW * 0.33496094;
			y = safeZoneY + safeZoneH * 0.28125;
			w = safeZoneW * 0.49511719;
			h = safeZoneH * 0.43923612;
			text = "recruit_units\dialog\ui_background_controlers_ca.paa";
		};
		class RecruitUnitsTitle : BON_RscText {
		   	idc = RECRUITING_TITLE;
			x = 0.22; y =  0.13;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = Color_White;
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "Unit Recruitment";
		};
	};
	class controls {
		class Unitlist: BON_RscListBox {
			idc = RECRUITING_UNITLIST;
			default = 1;
			x = 0.101; y = 0.20;
			w = 0.405; h = 0.575;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "";
			onLBDblClick = "";
			rowHeight = 0.025;
			soundSelect[] = {"\A3\ui_f\data\Sound\RscButtonMenu\soundClick", 0.07, 1};
			maxHistoryDelay = 10;
			canDrag = 0;
			xcolumn1 = "0.1f";
			xcolumn2 = "0.25f";
			xcolumn3 = "0.85f";		
		};
		class RecruitButton: HW_RscGUIShortcutButton {
			x = 0.325; y = 0.825;
			w = 0.125; h = 0.05;
			text = "Recruit";
			onButtonClick = "execVM 'recruit_units\recruit.sqf'";
		};
		class CloseButton: RecruitButton {
			x = 0.15;
			text = "Close";
			onButtonClick = "CloseDialog 0;_this spawn MTSC_fnc_Close_Recruit_Dialog";
		};
		class RulesText: NAK_StructuredText {
			idc = -1;
			x = safeZoneX + safeZoneW * 0.51367188;
			y = .20;
			w = .405;
			h = .575;
			text = "<t color='#ffffff' size='1.2' font='PuristaBold' align='center'>Please do not misuse or abuse the AI recruit feature. If this feature is misused we may have to remove it.</t><br /><br /><t color='#ffffff' size='0.9' font='PuristaMedium' align='left'><img size='0.75' image='\a3\ui_f\data\igui\cfg\cursors\unitunconscious_ca.paa' />For all rule enforcement your AI is you and you are your AI.<br /><img size='0.75' image='\a3\ui_f\data\igui\cfg\cursors\unitunconscious_ca.paa' />You must be a pilot or NAK Elite for your AI to pilot a vehicle.<br /><img size='0.75' image='\a3\ui_f\data\igui\cfg\cursors\unitunconscious_ca.paa' />You must have visual contact of your AI at all times, unless they are rejoining you.<br /></t>"; 

		};
	};
};