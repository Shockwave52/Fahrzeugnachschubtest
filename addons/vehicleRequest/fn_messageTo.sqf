/**
* fn_messageTo.sqf 
* @Descr: -
* @Author: -
*
* @Arguments: -
* @Return: -
*/
private [_mes, _veh, _fn, _tar, _con];
_mes = select 0;
_vehName = ((TDC_vehReq_config select _mes) select 0);

hint format [_mes, _vehName];