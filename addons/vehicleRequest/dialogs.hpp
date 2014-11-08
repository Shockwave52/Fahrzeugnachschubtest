class TDC_vehReq_dialog
{
    idd = 10000;
    movingenable = true;
		
class controls
{

class vehorder_Frame: RscFrame
{
	idc = 1800;
	text = "Nachschubmenu"; //--- ToDo: Localize;
	x = 0.292957 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.408909 * safezoneW;
	h = 0.539 * safezoneH;
};

class vehorder_box: BOX
{
	idc = 1900;
	text = ""; //--- ToDo: Localize;
	x = 0.292957 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.408909 * safezoneW;
	h = 0.539 * safezoneH;
};
class vehorder_strutext: RscStructuredText
{
	idc = 1100;
	text = "Welches Fahrzeug soll geliefert werden?"; //--- ToDo: Localize;
	x = 0.386127 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.217395 * safezoneW;
	h = 0.055 * safezoneH;
};
class vehorder_List: RscListbox
{
	idc = 1500;
	x = 0.303309 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.383029 * safezoneW;
	h = 0.363 * safezoneH;
	
};
class vehorder_butspawnloc: RscButton
{
	idc = 1600;
	text = "Liefern"; //--- ToDo: Localize;
	x = 0.313662 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.0879931 * safezoneW;
	h = 0.055 * safezoneH;
	action = "_null = [lbCurSel 1500] spawn TDC_vehReq_fnc_sendRequest); closeDialog 0; ";
};
class vehorder_cancel: RscButton
{
	idc = 1602;
	text = "Abbruch"; //--- ToDo: Localize;
	x = 0.639754 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.0414085 * safezoneW;
	h = 0.055 * safezoneH;
	action = "closeDialog 0";
};

};
};