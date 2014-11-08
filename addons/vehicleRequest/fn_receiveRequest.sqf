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
_vehicle = [_this, 1, ""] call BIS_fnc_param;

TDC_vehReq_serverQueue pushBack _vehicle;

// spaeter Nachricht zurueck an _caller, dass in Warteschlange aufgenommen oae.