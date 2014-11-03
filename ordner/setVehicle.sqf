//setVehicle.sqf
//stores classname from rsclistbox (lbdata) in global "vehorder_vehicle" variable for orderVehicles.sqf 

//in theory return values from eventhandler when item on rsclistbox is selected
/*
private["_ctrl","_curSel"];
_ctrl = _this select 0;
_curSel = _this select 1;
*/
vehorder_vehicle =lbData [1500,_curSel];
