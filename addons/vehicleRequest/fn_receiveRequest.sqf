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

//TDC_vehReq_serverQueue pushBack _vehicleCfgID;
TDC_vehReq_serverQueue pushBack [_vehicleCfgID,_caller];

//Nachricht zurueck an _caller, dass in Warteschlange aufgenommen oae.
[["Die Bestellung %1 ist eingegangen und wird bearbeitet.",(TDC_vehReq_config select _vehicleCfgID)],"TDC_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
