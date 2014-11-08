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
_reqWaitTime = 10;

while {true} do 
{
	sleep _timer;	
	
	if (count TDC_vehReq_serverQueue > 0) then
	{
		// check, ob schon etwas am spawn steht, wenn ja, dann ueberspringe spawnsequenz, wenn nicht dann fahrzeug spawnen
		_nearVeh = orderveh nearEntities [["Air", "Armored", "Car", "Support",], 10];
		_nearVehCnt = count [_nearVeh];
		if (_nearVehCnt <= 1)
		{hint "Ein Fahrzeug ist bereits geliefert und blockiert den Lieferpunkt";}
		else
		{
		hint format ["Ein %1 wurde bestellt und wird an den Lieferpunkt geliefert.",((TDC_vehReq_config select (_vehicleCfgID select 0)) select 0)];
		sleep _reqWaitTime;
		createVehicle ["((TDC_vehReq_config select (_vehicleCfgID select 0) select 1)", getMarkerPos "orderveh",[],1,"None"];
		hint format ["Ein %1 steht zur Abholung am Hafen bereit.",((TDC_vehReq_config select (_vehicleCfgID select 0)) select 0)];
		}
				
		_queueItem = TDC_vehReq_serverQueue select 0;
		_className = _queueItem select 1;
		
		// aus TDC_vehReq_serverQueue enfernen
		TDC_vehReq_serverQueue deleteAt 0;
		
		
	};
	
};