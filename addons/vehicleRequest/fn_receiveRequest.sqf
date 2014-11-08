/**
* fn_receiveRequest.sqf 
* @Descr: -
* @Author: -
*
* @Arguments: -
* @Return: -
*/
private [];

// vars
_caller = [_this, 0, objNull] call BIS_fnc_param;
_vehicleCfgID = [_this, 1, 0] call BIS_fnc_param;

TDC_vehReq_serverQueue pushBack _vehicleCfgID;

// spaeter Nachricht zurueck an _caller, dass in Warteschlange aufgenommen oae.