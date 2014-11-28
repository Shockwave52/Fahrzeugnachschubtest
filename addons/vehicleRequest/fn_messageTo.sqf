/**
* fn_messageTo.sqf 
* @Descr: -
* @Author: TDC | Shockwave
*
* @Arguments: String Message; Vehicle Ingame-Name
* @Return: -
*/
private [];
_mes = _this select 0;
_vehName = _this select 1;

hint format [_mes, _vehName];