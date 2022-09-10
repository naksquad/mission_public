class ProgressBar_Text {
x = 0;
y = 0;
h = 0.037;
w = 0.3;
type = 0;
style = 0;
shadow = 1;
colorShadow[] = {0, 0, 0, 0.5};
font = "PuristaMedium";
SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
text = "";
colorText[] = {1, 1, 1, 1.0};
colorBackground[] = {0, 0, 0, 0};
linespacing = 1;
};

class ProgressBar
{
name = "ProgressBar";
idd = 3400;
movingEnable = false;
enableSimulation = false;

class controlsBackground {

	class ProgressBarBackground : ProgressBar_Text {
		colorBackground[] = {0, 0, 0, 0.7};
		idc = -1;
		x = 0.1999 - 0.004;
		y = 0.074 - 0.004;
		w = 0.6 + 0.008;
		h = 0.05 + 0.008;
	};

	class ProgressBarFillBar : ProgressBar_Text {
		colorBackground[] = {
			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", 
			"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", 
			"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 
			"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
		};
		idc = 3401;
		x = 0.1999;
		y = 0.074;
		w = 0;
		h = 0.05;
	};

	class ProgressBarText : ProgressBar_Text {
		colorBackground[] = {0, 0, 0, 0};
		idc = 3402;
		x = 0.1999;
		y = 0.074;
		w = 0.6;
		h = 0.05;
	};

};
};