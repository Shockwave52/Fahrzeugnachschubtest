/**
* fn_sendRequest.sqf 
* @Descr: -
* @Author: -
*
* @Arguments: -
* @Return: -
*/
private [];

// vars
_vehicleCfgID = [_this, 0, 0] call BIS_fnc_param;

[[player, _vehicleCfgID], "TDC_vehReq_fnc_receiveRequest", false] call BIS_fnc_MP;