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

		_queueItem = TDC_vehReq_serverQueue select 0;
		_className = _queueItem select 1;
		
		hint "queue";
		sleep _reqWaitTime;
	
		// check, ob schon etwas am spawn steht, wenn ja, dann ueberspringe spawnsequenz, wenn nicht dann fahrzeug spawnen
		_nearVeh = getMarkerPos "orderveh" nearEntities [["Air", "Armored", "Car", "Support"], 10];
		if (count _nearVeh <= 1) then
		{hint "Ein Fahrzeug ist bereits geliefert und blockiert den Lieferpunkt";}
		else
		{
		hint "else";
		sleep _reqWaitTime;
		hint format ["Ein %1 wurde bestellt und wird an den Lieferpunkt geliefert.",_classname];
		sleep _reqWaitTime;
		createVehicle ["_classname", getMarkerPos "orderveh",[],1,"None"];
		hint format ["Ein %1 steht zur Abholung am Hafen bereit.",_classname];
		};
	
		// aus TDC_vehReq_serverQueue enfernen
		TDC_vehReq_serverQueue deleteAt 0;
		
	};
	
};