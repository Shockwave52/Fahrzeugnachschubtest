/**
* fn_queue.sqf 
* @Descr: -
* @Author: -
*
* @Arguments: -
* @Return: -
*/
private ["_timer"];

_timer = 30;

while {true} do 
{
	sleep _timer;	
	
	if (count TDC_vehReq_serverQueue > 0) then
	{
		// check, ob schon etwas am spawn steht, wenn ja, dann ueberspringe spawnsequenz
		
		_queueItem = TDC_vehReq_serverQueue select 0;
		_className = _queueItem select 1;
		
		// spawn fahrzeug
		
		// aus TDC_vehReq_serverQueue enfernen
		
	};
	
};