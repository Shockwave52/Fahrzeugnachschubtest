/**
* fn_showDialog.sqf 
* @Descr: -
* @Author: -
*
* @Arguments: -
* @Return: -
*/
private ["_handle","_idc"];

_idc = 1500;
_handle = createDialog "TDC_vehReq_dialog";

if _handle then
{
	private ["_index"];
	_index = 0;
	
	lbClear _idc;	
	{	
		lbAdd[_idc, _x select 0];
	} forEach TDC_vehReq_config;	
};