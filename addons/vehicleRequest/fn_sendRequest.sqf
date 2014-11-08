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
_vehicle = [_this, 0, ""] call BIS_fnc_param;

[[player, _vehicle], "TDC_vehReq_fnc_receiveRequest", false] call BIS_fnc_MP;