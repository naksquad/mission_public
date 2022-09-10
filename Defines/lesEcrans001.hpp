//brother player stats screen
class lodinscrenn
{
	idd = 12345;
	movingEnable = 1;
    enableSimulation = 1;
	controlsBackground[] = {};
  	objects[] = {};
	onLoad = "[_this select 0] spawn ROSE_fnc_VA4";
	
	class controls 
	{	
	
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by bclaw, v1.063, #Kevady)
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
	class le4: RscPicture
	{
		idc = 1204;

		text = "#(argb,8,8,3)color(1,1,1,1)";
		x = safeZoneX + safeZoneW * 0.3671875;
		y = safeZoneY + safeZoneH * 0.27430556;
		w = safeZoneW * 0.265625;
		h = safeZoneH * 0.45138889;
		style = 2+48;
/* 		x = 0.47375 * safezoneW + safezoneX;
		y = 0.388 * safezoneH + safezoneY;
		w = 0.091875 * safezoneW;
		h = 0.14 * safezoneH; */
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////

	};
};
