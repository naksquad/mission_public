class dynamic_loadout
{
    idd = 5000;
    movingenable = 0;

	onLoad = "_this spawn AVI_fnc_test;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 1000;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/
class mklnlkmfs: RscButton
{
	idc = 160057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};


		class PresetDestiny: RscText
{
	idc = 88099;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 1800;
			text = "\A3\air_f_epc\Plane_CAS_01\Data\UI\Plane_CAS_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;

		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 1600;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 2001;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.262 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 2002;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo3: RscCombo
{
	idc = 2003;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo4: RscCombo
{
	idc = 2004;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo5: RscCombo
{
	idc = 2005;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.472 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo6: RscCombo
{
	idc = 2006;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.514 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo7: RscCombo
{
	idc = 2007;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo8: RscCombo
{
	idc = 2008;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo9: RscCombo
{
	idc = 2009;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.668 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo10: RscCombo
{
	idc = 2010;
	x = 0.434375 * safezoneW + safezoneX;
	y = 0.71 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo11: RscCombo
{
	idc = 2011;
	x = 0.605 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
};
class RscText_1000: RscText
{
	idc = -1;
	text = "Skin"; //--- ToDo: Localize;
	x = 0.605 * safezoneW + safezoneX;
	y = 0.402 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
};

class chooseyourdestiny: RscCombo
{
	idc = 602300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};


class comboPylonClear: RscButton
{
	idc = 2109;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_a10scriptNameclear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};


    };
};


class dynamic_loadouts
{
    idd = 50000;
    movingenable = 0;

onLoad = "_this spawn AVI_fnc_test1;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 10000;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 260057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 99099;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 1800;
			text = "\A3\air_f_epc\Plane_CAS_02\Data\UI\Plane_cas_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 16000;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
   class combo1: RscCombo
{
	idc = 3001;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.262 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 3002;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo3: RscCombo
{
	idc = 3003;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.0328 * safezoneH;
};
class combo4: RscCombo
{
	idc = 3004;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo5: RscCombo
{
	idc = 3005;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.472 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo6: RscCombo
{
	idc = 3006;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.514 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo7: RscCombo
{
	idc = 3007;
	x = 0.401563 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo8: RscCombo
{
	idc = 3008;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo9: RscCombo
{
	idc = 3009;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.668 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo10: RscCombo
{
	idc = 3010;
	x = 0.434375 * safezoneW + safezoneX;
	y = 0.71 * safezoneH + safezoneY;
	w = 0.1575 * safezoneW;
	h = 0.028 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 202300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};
class comboPylonClear: RscButton
{
	idc = 3109;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_Oshikr_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};

    };
};

class dynamic_loadoutjetlee
{
    idd = 51000;
    movingenable = 0;

onLoad = "_this spawn AVI_fnc_test2;";
    class ControlsBackground
    {
		class naksquad_pi: RscPicture
		{
			idc = 1330;
			text = "\A3\air_f_jets\Plane_Fighter_02\Data\UI\Fighter_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
       ////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Vezice)
		////////////////////////////////////////////////////////

		class naksquad_pi: RscPicture
		{
			idc = 1330;

			text = "\A3\air_f_jets\Plane_Fighter_02\Data\UI\Fighter_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
		class mklnlkmfs: RscButton
		{
			idc = 360057;
			action = "closeDialog 0;";

			text = "NAK Squad"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class PresetDestiny: RscText
		{
			idc = 188099;

			text = "PRESET"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class button_close: RscButton
		{
			idc = 17800;
			action = "closeDialog 0;";

			text = "X"; //--- ToDo: Localize;
			x = 0.742812 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class combo7: RscCombo
		{
			idc = 4007;

			x = 0.329375 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo5: RscCombo
		{
			idc = 4005;

			x = 0.303125 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo3: RscCombo
		{
			idc = 4003;

			x = 0.29 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo1: RscCombo
		{
			idc = 4001;

			x = 0.276875 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo9: RscCombo
		{
			idc = 4009;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.416 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo10: RscCombo
		{
			idc = 4010;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.458 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo11: RscCombo
		{
			idc = 4011;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo13: RscCombo
		{
			idc = 4013;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo12: RscCombo
		{
			idc = 4012;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo8: RscCombo
		{
			idc = 4008;

			x = 0.5525 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo6: RscCombo
		{
			idc = 4006;

			x = 0.57875 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo4: RscCombo
		{
			idc = 4004;

			x = 0.591875 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo2: RscCombo
		{
			idc = 4002;

			x = 0.605 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.118125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 4014;

			x = 0.467187 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 4015;

			text = "CAMO"; //--- ToDo: Localize;
			x = 0.486875 * safezoneW + safezoneX;
			y = 0.738 * safezoneH + safezoneY;
			w = 0.0459375 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class chooseyourdestiny: RscCombo
		{
			idc = 302300;

			text = "Preset"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class comboPylonClear: RscButton
		{
			idc = 3109;
			action = "[] spawn AVIP_fnc_shikr_clear";

			text = "Clear Pylon"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Clear All Pylons"; //--- ToDo: Localize;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};




    };
};


class dynamic_loadoutvileace
{
    idd = 6100;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test3;";
    class ControlsBackground
    {
		class naksquad_pi: RscPicture
		{
			idc = 6330;
			text = "\A3\air_f_jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        ////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Gexuti)
		////////////////////////////////////////////////////////

		class mklnlkmfs: RscButton
		{
			idc = 460057;
			action = "closeDialog 0;";

			text = "NAK Squad"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class PresetDestiny: RscText
		{
			idc = 288099;

			text = "PRESET"; //--- ToDo: Localize;
			x = 0.283437 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class naksquad_pi: RscPicture
		{
			idc = 6330;

			text = "\A3\air_f_jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
		class button_close: RscButton
		{
			idc = 67800;
			action = "closeDialog 0;";

			text = "X"; //--- ToDo: Localize;
			x = 0.742812 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class combo2: RscCombo
		{
			idc = 6002;

			x = 0.276875 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo4: RscCombo
		{
			idc = 6004;

			x = 0.303125 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo6: RscCombo
		{
			idc = 6006;

			x = 0.329375 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo1: RscCombo
		{
			idc = 6001;

			x = 0.618125 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo3: RscCombo
		{
			idc = 6003;

			x = 0.591875 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo5: RscCombo
		{
			idc = 6005;

			x = 0.565625 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo12: RscCombo
		{
			idc = 6012;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo11: RscCombo
		{
			idc = 6011;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.668 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo10: RscCombo
		{
			idc = 6010;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo9: RscCombo
		{
			idc = 6009;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo8: RscCombo
		{
			idc = 6008;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo7: RscCombo
		{
			idc = 6007;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 6013;

			x = 0.460625 * safezoneW + safezoneX;
			y = 0.794 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 6014;

			text = "CAMO"; //--- ToDo: Localize;
			x = 0.480312 * safezoneW + safezoneX;
			y = 0.752 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class chooseyourdestiny: RscCombo
		{
			idc = 402300;

			text = "Preset"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class comboPylonClear: RscButton
		{
			idc = 69109;
			action = "[] spawn AVIP_fnc_f35_scriptNameclear";

			text = "Clear Pylon"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Clear All Pylons"; //--- ToDo: Localize;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};


    };
};

class dynamic_loadoutvileace2
{
    idd = 457100;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test4;";
    class ControlsBackground
    {
		class naksquad_pi: RscPicture
		{
			idc = 7330;
			text = "\A3\air_f_jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        ////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Moroza)
		////////////////////////////////////////////////////////

		class mklnlkmfs: RscButton
		{
			idc = 560057;
			action = "closeDialog 0;";

			text = "NAK Squad"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class PresetDestiny: RscText
		{
			idc = 38099;

			text = "PRESET"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class button_close: RscButton
		{
			idc = 97800;
			action = "closeDialog 0;";

			text = "X"; //--- ToDo: Localize;
			x = 0.742812 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
		};
		class combo1: RscCombo
		{
			idc = 7005;

			x = 0.335938 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo2: RscCombo
		{
			idc = 7006;

			x = 0.545937 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo4: RscCombo
		{
			idc = 7008;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.458 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo5: RscCombo
		{
			idc = 7009;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.514 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo6: RscCombo
		{
			idc = 7010;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo7: RscCombo
		{
			idc = 7011;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo8: RscCombo
		{
			idc = 7012;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class combo3: RscCombo
		{
			idc = 7007;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.111562 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscCombo_2100: RscCombo
		{
			idc = 7013;

			x = 0.461281 * safezoneW + safezoneX;
			y = 0.77076 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 7014;

			text = "CAMO"; //--- ToDo: Localize;
			x = 0.478212 * safezoneW + safezoneX;
			y = 0.74612 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class chooseyourdestiny: RscCombo
		{
			idc = 502300;

			text = "Preset"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class comboPylonClear: RscButton
		{
			idc = 79109;
			action = "[] spawn AVIP_fnc_f35s_clear";

			text = "Clear Pylon"; //--- ToDo: Localize;
			x = 0.677188 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.07875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Clear All Pylons"; //--- ToDo: Localize;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};


    };
};

class dynamic_loadoutfoxy
{
    idd = 97100;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test5;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81000;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 760057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};
		class PresetDestiny: RscText
{
	idc = 68099;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 8330;
			text = "\A3\air_f\Heli_Light_01\Data\UI\Heli_Light_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 98800;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 8001;
	x = 0.591875 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 8002;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 702300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};
class comboPylonClear: RscButton
{
	idc = 79129;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_helico1_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};


    };
};


class dynamic_loadoutclaws
{
    idd = 8100;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test6;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 91000;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/


		class mklnlkmfs: RscButton
{
	idc = 860057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 8880899;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 9330;
			text = "\A3\air_f_beta\Heli_Attack_01\Data\UI\Heli_Attack_01_EDEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 98900;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
class combo1: RscCombo
{
	idc = 9001;
	x = 6.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo2: RscCombo
{
	idc = 9002;
	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo3: RscCombo
{
	idc = 9003;
	x = 6.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo4: RscCombo
{
	idc = 9004;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo5: RscCombo
{
	idc = 9005;
	x = 25.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo6: RscCombo
{
	idc = 9006;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class chooseyourdestiny: RscCombo
{
	idc = 902300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};
class comboPylonClear: RscButton
{
	idc = 791299;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_ah998scriptNameclear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*
class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName6_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};


class dynamic_loadoutsarah
{
    idd = 71500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test7;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 960057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 880999;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 8380;
			text = "\A3\air_f\Heli_Light_02\Data\UI\Heli_Light_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 98880;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 19001;
	x = 0.591875 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 19002;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo_2100: RscCombo
{
	idc = 19003;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.731 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 19004;
	text = "CAMO"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 1602300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 79899;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_eagle_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};

    };
};

class dynamic_loadoutallen
{
    idd = 17100;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test8;";
    class ControlsBackground
    {
        /*/*  class background: RscText
      	{
            idc = 89990;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 1060057;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 880992;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 8390;
			text = "\A3\air_f_epb\Heli_Light_03\data\UI\Heli_Light_03_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 98888;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 20001;
	x = 0.591875 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 20002;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo_2100: RscCombo
{
	idc = 20003;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.731 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 20004;
	text = "CAMO"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 2602300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 79999;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_ocra_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};

    };
};

class dynamic_mondieujetaime
{
    idd = 81500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test9;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 9600578;
	text = "NakSquad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click To Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 8809989;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 88380;
			text = "\A3\drones_f\Air_F_Gamma\UAV_02\Data\UI\UAV_02_base_EDEN_F.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 988880;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 30001;
x = 0.4475 * safezoneW + safezoneX;
	y = 0.682 * safezoneH + safezoneY;
	w = 0.111562 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 30002;
	x = 0.4475 * safezoneW + safezoneX;
	y = 0.29 * safezoneH + safezoneY;
	w = 0.111562 * safezoneW;
	h = 0.028 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 16027300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 797899;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_uav1_scriptNameclear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName9_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};

class mondieubenimesnakplayer
{
    idd = 91500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test10;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 1600578;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 1809989;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 18380;
			text = "\A3\air_f_jets\UAV_05\Data\UI\UAV_05_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 188880;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 40001;
	x = 0.309687 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 40002;
	x = 0.591875 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo_2100: RscCombo
{
	idc = 40003;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.731 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 40004;
	text = "CAMO"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 16727300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 7978599;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "execVM '[] spawn AVIP_fnc_uav2_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName10_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};

class mondieulepremieretdernier
{
    idd = 915500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test11;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 16002578;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 18089;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 183880;
			text = "\A3\air_f_exp\UAV_03\Data\UI\Map_UAV_03_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 188680;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 50004;
	x = 0.29 * safezoneW + safezoneX;
	y = 0.402 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 50003;
	x = 0.303125 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo3: RscCombo
{
	idc = 50001;
	x = 0.605 * safezoneW + safezoneX;
	y = 0.402 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo4: RscCombo
{
	idc = 50002;
	x = 0.591875 * safezoneW + safezoneX;
	y = 0.57 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 63727300;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 778599;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_uav3_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName11_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};

class mondieujetensuplin
{
    idd = 913500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test12;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 160023578;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 180389;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 1838380;
			text = "\A3\air_f_exp\VTOL_02\Data\UI\VTOL_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 1858680;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 60001;
x = 0.460625 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 60002;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.402 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo3: RscCombo
{
	idc = 60003;
		x = 0.414687 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo4: RscCombo
{
	idc = 60004;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.682 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo_2100: RscCombo
{
	idc = 60005;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.731 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 60006;
	text = "CAMO"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 72730880;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 77877599;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_vtoll_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*
class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName12_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};


class mondieujetensuplin007
{
    idd = 00012548;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test14;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 81090;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/

		class mklnlkmfs: RscButton
{
	idc = 160023578;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = 180389;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = 1838380;
			text = "\A3\air_f_exp\VTOL_02\Data\UI\VTOL_02_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = 1858680;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };
 class combo1: RscCombo
{
	idc = 60001;
x = 0.460625 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo2: RscCombo
{
	idc = 60002;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.402 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo3: RscCombo
{
	idc = 60003;
		x = 0.414687 * safezoneW + safezoneX;
	y = 0.626 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo4: RscCombo
{
	idc = 60004;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.682 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};

class RscCombo_2100: RscCombo
{
	idc = 60005;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.731 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RscText_1000: RscText
{
	idc = 60006;
	text = "CAMO"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.011 * safezoneH;
};
class chooseyourdestiny: RscCombo
{
	idc = 72730880;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};

class comboPylonClear: RscButton
{
	idc = 77877599;
	text = "Clear Pylon"; //--- ToDo: Localize;
	x = 0.677188 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Clear All Pylons"; //--- ToDo: Localize;
	action = "[] spawn AVIP_fnc_vtoll_clear";
}; 
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName14_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/

    };
};

class lesreglesdujeux
{
    idd = 656;
    movingenable = 0;

    class ControlsBackground
    {
			  class background: RscText
			{
				idc = 81090;
				x = 0.2375 * safezoneW + safezoneX;
				y = 0.15 * safezoneH + safezoneY;
				w = 0.525 * safezoneW;
				h = 0.7 * safezoneH;
				colorBackground[] = {0,0,0,0.8};
			};
			class txt_Rules: RscStructuredText
{
	idc = 1105543;
	text = "<a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #01</a> NO Racism.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #02</a> No impersonating an admin.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #03</a> No intentional team killing.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #04</a> No griefing or harassment.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #05</a> No firing at base.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #06</a> No wasting server assets.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #07</a> No using voice in restricted channels, spamming, broadcasting music, use of any voice modulators or voice changers.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #08</a> Names used in TeamSpeak must match your in-game profile name.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #09</a> No playing as infantry while in the pilot slot.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #10</a> No arguing with the administration.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #11</a> No pilots, UAV operator, or ATC may play without being on the NAK Squad TeamSpeak server (excluding nak elite). No pilot may be afk. No players in the “pilots” channel may mute all communication, which includes being “away” in TeamSpeak.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #12</a> No users under 16 years of age.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #13</a> No verbal abuse.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #14</a> No use of language or profile names that are lewd, obscene, vulgar, discriminatory, hate speech, promoting violence, drug use or any illegal activity, promoting crimes against humanity, genocide or torture, or is otherwise objectionable.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #15</a> No recruiting.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #16</a> No posting of inappropriate or harmful links or content<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #17</a> No recording or streaming of teamspeak.<br/><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>RULE #18</a> No cheating or <a href='https://www.naksquad.net/mods'>unapproved mods.</a>	<br/><br/><t align='center'><a color='#f1d970' href='https://www.naksquad.net/rules/server-rules/'>COMPLETE SERVER RULES</a></t><br/><br/><t align='center'><a color='#f1d970' href='https://www.naksquad.net/mods/'>MODS (ALLOWED AND RESTRICTED)</a></t>";
	x = 0.335938 * safezoneW + safezoneX;
	//y = 0.318 * safezoneH + safezoneY;
	y = 0.278 * safezoneH + safezoneY;
	w = 0.387187 * safezoneW;
	h = 0.532 * safezoneH;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0,0,0,0};
};

	class MMJJJJGJKJKD: RscStructuredText
{
	idc = 554778;
	text = "<t font='TahomaB' color='#AB2B2C' size='2' shadow='2' shadowColor='#000000' shadowOffset='0.5' align='center'>WELCOME TO NAK SQUAD</t><br/>";
	x = 0.335938 * safezoneW + safezoneX;
	y = 0.200 * safezoneH + safezoneY;
	w = 0.321562 * safezoneW;
	h = 0.098 * safezoneH;
};
class nastynaksquadc: RscPicture
{
	idc = 89665;
	text = "Media\images\naksquad1.paa";
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.178 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.126 * safezoneH;
};



class RscPicture_1203: RscPicture
{
	idc = 788965;
	text = "Media\images\nakcommand.paa";
	x = 0.670625 * safezoneW + safezoneX;
	y = 0.178 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.126 * safezoneH;
};


			class mklnlkmfs: RscButton
			{
			idc = 8600578;
			text = "DISAGREE"; //--- ToDo: Localize;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.85 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to exit NAK Squad"; //--- ToDo: Localize;
			action= "closeDialog 0; _nil=[] spawn NAK_fnc_answerNo";
			};

		
	};

    class Controls
    {
       

class comboPylonClear: RscButton
{
	idc = 77877599;
	text = "AGREE"; //--- ToDo: Localize;
	x = 0.690312 * safezoneW + safezoneX;
	y = 0.85 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "You are stating that you understand and agree to follow these rules on our server. Otherwise you may exit the server by choosing DISAGREE"; //--- ToDo: Localize;
	action = "closeDialog 0;";
}; 
class RscBEutton_1600: RscStructuredText
{
	idc = 554222;
	text = "<a color='#f1d970' href='https://www.naksquad.net/nak-squad-shop/'>NAK SHOP</a>";
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Buy Some NAK Squad Merch";
};
class RscBRutton_1601: RscStructuredText
{
	idc = 554444;
	text = "<a color='#f1d970' href='https://naksquad.net/teamspeaktrans/'>TEAMSPEAK</a>";
	x = 0.395 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Click To Join NAK TeamSpeak For Better Tactical Gameplay";

};
class RscBuTtton_1602: RscStructuredText
{
	idc = 44455222;
	text = "<a color='#f1d970' href='https://naksquad.net/forum/viewforum.php?f=11'>FEEDBACK</a>";
	x = 0.539375 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Click to Provide Feedback and Report Bugs";

};
class RscEButton_1603: RscStructuredText
{
	idc = 55544223;
	text = "<a color='#f1d970' href='https://naksquad.net/donate/'>DONATE</a>";
	x = 0.664063 * safezoneW + safezoneX;
	y = 0.794 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Click to Donate and Help Keep the Server Running";

};


    };
};

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

//////////////////////////////////////////////////////////






class lasenemychop
{
    idd = 81555665500;
    movingenable = 0;
onLoad = "_this spawn AVI_fnc_test13;";
    class ControlsBackground
    {
        /*  class background: RscText
        {
            idc = 91000;
          	x = 0.2375 * safezoneW + safezoneX;
            y = 0.15 * safezoneH + safezoneY;
            w = 0.525 * safezoneW;
            h = 0.7 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
        };*/


	class mklnlkmfs: RscButton
{
	idc = -1;
	text = "NAK Squad"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
	 tooltip = "Click to Exit"; //--- ToDo: Localize;
    action = "closeDialog 0;";
};

		class PresetDestiny: RscText
{
	idc = -1;
	text = "PRESET"; //--- ToDo: Localize;
	x = 0.270313 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
		class naksquad_pi: RscPicture
		{
			idc = -1;
			text = "\A3\air_f_beta\Heli_Attack_01\Data\UI\Heli_Attack_01_EDEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;
		};
    };

    class Controls
    {
        class button_close: RscButton
        {
            idc = -1;
            text = "X"; //--- ToDo: Localize;
         	x = 0.742812 * safezoneW + safezoneX;
            y = 0.164 * safezoneH + safezoneY;
            w = 0.013125 * safezoneW;
            h = 0.028 * safezoneH;
            tooltip = "Click to Exit"; //--- ToDo: Localize;
            action = "closeDialog 0;";
        };

class combo2: RscCombo
{
	idc = 39004;
	x = 5.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo3: RscCombo
{
	idc = 39003;
	x = 6.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class combo5: RscCombo
{
	idc = 39001;
	x = 25.5 * GUI_GRID_W + GUI_GRID_X;
	y = 15 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class combo6: RscCombo
{
	idc = 39002;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class chooseyourdestiny: RscCombo
{
	idc = -1;
	text = "Preset"; //--- ToDo: Localize;
	x = 0.26375 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
};
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
/*class pilot_gunner: RscButton
{
	idc = -1;
	action = "[] spawn AVI_fnc_lscriptName13_1";

	text = "Update Pylons"; //--- ToDo: Localize;
	x = 0.414687 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Update Pylons"; //--- ToDo: Localize;
};*/
    };
};

class dynamic_loadout007
{
	idd = 77844452;
	movingenable = 0;

	onLoad = "_this spawn AVI_fnc_test01;";
	class ControlsBackground
	{
		class mklnlkmfs: RscButton
		{
			idc = -1;
			text = "NAK Squad"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};

		class PresetDestiny: RscText
		{
			idc = -1;
			text = "PRESET"; //--- ToDo: Localize;
			x = 0.270313 * safezoneW + safezoneX;
					y = 0.164 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class naksquad_pi: RscPicture
		{
			idc = -1;
			text = "\A3\air_f_epc\Plane_CAS_01\Data\UI\Plane_CAS_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;

		};
	};

	class Controls
	{


			////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Tafosi)
		////////////////////////////////////////////////////////

		class un: RscCombo
		{
			idc = 7000001;
			x = 0.440937 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class deux: RscCombo
		{
			idc = 7000002;
			x = 0.440937 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class trois: RscCombo
		{
			idc = 7000003;
			x = 0.440937 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class eight: RscCombo
		{
			idc = 7000004;
			x = 0.322812 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class five: RscCombo
		{
			idc = 7000005;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class six: RscCombo
		{
			idc = 7000006;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class seven: RscCombo
		{
			idc = 7000007;
			x = 0.4475 * safezoneW + safezoneX;
			y = 0.738 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

		class button_close: RscButton
		{
			idc = -1;
			text = "X"; //--- ToDo: Localize;
			x = 0.742812 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};

		class chooseyourdestiny: RscCombo
		{
			idc = -1;
			text = "Preset"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
class combo_save: RscCombo
{
	idc = 1000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 1000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
	};
};

class KeypadDefuse 
{
	idd = -1;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	
	class controls 
	{
		class B9: RscButton
		{
			idc = -1;
			x = 0.53197 * safezoneW + safezoneX;
			y = 0.5924 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 9]; ctrlSetText [1099, (ctrlText 1099) + str 9]";
		};
		class B8: RscButton
		{
			idc = -1;
			x = 0.504125 * safezoneW + safezoneX;
			y = 0.5924 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 8]; ctrlSetText [1099, (ctrlText 1099) + str 8]";
		};
		class B7: RscButton
		{
			idc = -1;
			x = 0.476148 * safezoneW + safezoneX;
			y = 0.592356 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 7]; ctrlSetText [1099, (ctrlText 1099) + str 7]";
		};
		class B6: RscButton
		{
			idc = -1;
			x = 0.532441 * safezoneW + safezoneX;
			y = 0.64143 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 6]; ctrlSetText [1099, (ctrlText 1099) + str 6]";
		};
		class B5: RscButton
		{
			idc = -1;
			x = 0.504273 * safezoneW + safezoneX;
			y = 0.643052 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 5]; ctrlSetText [1099, (ctrlText 1099) + str 5]";
		};
		class B4: RscButton
		{
			idc = -1;
			x = 0.47525 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 4]; ctrlSetText [1099, (ctrlText 1099) + str 4]";
		};
		class B3: RscButton
		{
			idc = -1;
			x = 0.531963 * safezoneW + safezoneX;
			y = 0.691778 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 3]; ctrlSetText [1099, (ctrlText 1099) + str 3]";
		};
		class B2: RscButton
		{
			idc = -1;
			x = 0.504752 * safezoneW + safezoneX;
			y = 0.692704 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 2]; ctrlSetText [1099, (ctrlText 1099) + str 2]";
		};
		class B1: RscButton
		{
			idc = -1;
			x = 0.476095 * safezoneW + safezoneX;
			y = 0.691778 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 1]; ctrlSetText [1099, (ctrlText 1099) + str 1]";
		};
		class B0: RscButton
		{
			idc = -1;
			x = 0.504124 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT set [count CODEINPUT, 0]; ctrlSetText [1099, (ctrlText 1099) + str 0]";
		};
		class Benter: RscButton
		{
			idc = -1;
			x = 0.532898 * safezoneW + safezoneX;
			y = 0.740504 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = " lesave = CODEINPUT; missionNamespace setVariable ['LEINPUTCODE',lesave, true];[] spawn COB_fnc_codeCompare; closeDialog 0";
		};
		class Bclear: RscButton
		{
			idc = -1;
			x = 0.477313 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0165001 * safezoneW;
			h = 0.022 * safezoneH;
			colorFocused[] = {0.1,0.1,0.1,0.1};
			colorShadow[] = {0,0,0,0};
			colorBorder[] = {0.5,0.5,0.5,0};
			colorBackground[] = {0.7,0.7,0.7,0};
			colorBackgroundActive[] = {0.1,0.1,0.1,0};
			colorDisabled[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.5,0.5,0.5,0};
			borderSize = 0.015;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'button_click'; CODEINPUT = []; ctrlSetText [1099, str CODEINPUT]";
		};
		class KeypadImage: RscPicture
		{
			idc = -1;
			moving = 1;
			type = CT_STATIC;
			style = ST_PICTURE;
			x = 0.142156 * safezoneW + safezoneX;
			y = -0.1446 * safezoneH + safezoneY;
			w = 0.721875 * safezoneW;
			h = 1.254 * safezoneH;
			text = "Media\explosive.paa";
		};
		class NumberDisplay: RscStructuredText
		{
			idc = 1099;
			type = CT_STATIC;
			style = ST_LEFT;
			colorText[] = {247, 38, 41};
			colorBackground[] = { 1, 1, 1, 0 };
			font = RobotoCondensed;
			sizeEx = 0.072;
			x = 0.474219 * safezoneW + safezoneX;
			y = 0.3988 * safezoneH + safezoneY;
			w = 0.136116 * safezoneW;
			h = 0.0418 * safezoneH;
		};
		class Bblue: RscButton
		{
			idc = -1;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,1,1};
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'wire_cut'; missionNamespace setVariable ['uiwirec','BLUE', true]; [] spawn COB_fnc_wireCompare; closeDialog 0";
		};
		class Bwhite: RscButton
		{
			idc = -1;
			x = 0.481437 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {1,1,1,1};
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'wire_cut'; missionNamespace setVariable ['uiwirec','WHITE', true]; [] spawn COB_fnc_wireCompare; closeDialog 0";
		};
		class Byellow: RscButton
		{
			idc = -1;
			x = 0.521656 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {1,1,0,1};
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'wire_cut'; missionNamespace setVariable ['uiwirec','YELLOW', true]; [] spawn COB_fnc_wireCompare; closeDialog 0";
		};
		class Bgreen: RscButton
		{
			idc = -1;
			x = 0.558781 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.020625 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,1,0,1};
			soundClick[] = {"",0,0};
			onMouseButtonDown = "playSound 'wire_cut'; missionNamespace setVariable ['uiwirec','GREEN', true]; [] spawn COB_fnc_wireCompare; closeDialog 0";
		};
	};
};

//////gordon

class dynamic_loadout008
{
	idd = 77844452;
	movingenable = 0;

	onLoad = "_this spawn AVI_fnc_test02;";
	class ControlsBackground
	{
		class mklnlkmfs: RscButton
		{
			idc = -1;
			text = "NAK Squad"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.091875 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};

		class PresetDestiny: RscText
		{
			idc = -1;
			text = "SKIN"; //--- ToDo: Localize;
			x = 0.270313 * safezoneW + safezoneX;
					y = 0.164 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class naksquad_pi: RscPicture
		{
			idc = -1;
			text = "\A3\air_f_epc\Plane_CAS_01\Data\UI\Plane_CAS_01_3DEN_CA.paa";
			x = 0.309687 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.476 * safezoneH;

		};
	};

	class Controls
	{


			////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Tafosi)
		////////////////////////////////////////////////////////
		class UN_2: RscCombo
		{
			idc = 2000002;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class DEUX_2: RscCombo
		{
			idc = 2000004;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class TROIS_2: RscCombo
		{
			idc = 2000006;

			x = 0.440937 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class TROIS: RscCombo
		{
			idc = 2000005;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class DEUX: RscCombo
		{
			idc = 2000003;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class UN: RscCombo
		{
			idc = 2000001;

			x = 0.4475 * safezoneW + safezoneX;
			y = 0.738 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.028 * safezoneH;
		};

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

		class button_close: RscButton
		{
			idc = -1;
			text = "X"; //--- ToDo: Localize;
			x = 0.742812 * safezoneW + safezoneX;
			y = 0.164 * safezoneH + safezoneY;
			w = 0.013125 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Click to Exit"; //--- ToDo: Localize;
			action = "closeDialog 0;";
		};

		class chooseyourdestiny: RscCombo
		{
			idc = 2000007;
			text = "SKIN"; //--- ToDo: Localize;
			x = 0.26375 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.0853125 * safezoneW;
			h = 0.028 * safezoneH;
		};
class combo_save: RscCombo
{
	idc = 2000001;

	x = 0.454062 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class combo_load: RscCombo
{
	idc = 2000002;

	x = 0.611562 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to load a Saved Loadout"; //--- ToDo: Localize;
};
class save_loadout: RscText
{
	idc = -1;

	text = "Save Loadout"; //--- ToDo: Localize;
	x = 0.460625 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
class Load_Loadout: RscText
{
	idc = -1;

	text = "Load Loadout"; //--- ToDo: Localize;
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.164 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.028 * safezoneH;
	tooltip = "Use the drop down menu to select a Custom Save Location"; //--- ToDo: Localize;
};
	};
};