//setRespawnPoint.sqf
//stores maker object name in global "vehorder_marker" variable for orderVehicles.sqf

//in theory return values from eventhandler when item on rsclistbox is selected
/*
private["_ctrl","_curSel"];
_ctrl = _this select 0;
_curSel = _this select 1;
*/
vehorder_marker =lbData [1500,_curSel];