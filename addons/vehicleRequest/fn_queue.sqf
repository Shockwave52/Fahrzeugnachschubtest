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
_reqWaitTime = 60;



while {true} do 
{
	sleep _timer;	
	
	if (count TDC_vehReq_serverQueue > 0) then
	{
		_queueItem = ((TDC_vehReq_serverQueue select 0) select 0);
		_caller = ((TDC_vehReq_serverQueue select 0) select 1);
		_className = ((TDC_vehReq_config select _queueItem) select 1);
		_ingameName = ((TDC_vehReq_config select _queueItem) select 0);

		// check, ob schon etwas am spawn steht, wenn ja, dann ueberspringe spawnsequenz, wenn nicht dann fahrzeug spawnen
		_nearVeh = nearestObjects [getMarkerPos "reqveh",["Air", "Armored", "Car", "Support","BWA3_Puma_Tropen","BWA3_Leopard2A6M_Tropen","BWA3_Puma_Fleck","BWA3_Leopard2A6M_Fleck"], 10];
		
		if (count _nearVeh >= 1) then {
			[["Ein Fahrzeug wurde bereits geliefert und blockiert den Lieferpunkt", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;}
			else{
			[["Das Fahrzeug %1 wurde bestellt und wird an den Lieferpunkt geliefert.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
			sleep _reqWaitTime;
			createVehicle [_classname, getMarkerPos "reqveh",[],1,"None"];
			[["Das Fahrzueg %1 steht zur Abholung am Lieferpunkt bereit.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
		};
	
		// aus TDC_vehReq_serverQueue enfernen
		TDC_vehReq_serverQueue deleteAt 0;
		
	};
	
};