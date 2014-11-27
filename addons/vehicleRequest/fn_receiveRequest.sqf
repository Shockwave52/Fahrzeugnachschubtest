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

TDC_vehReq_serverQueue pushBack [_vehicleCfgID,_caller];

//Nachricht zurueck an _caller, dass in Warteschlange aufgenommen oae.
_ingameName = ((TDC_vehReq_config select _vehicleCfgID) select 0);
[["Die Bestellung des Fahrzeugs %1 ist eingegangen und wird bearbeitet.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
