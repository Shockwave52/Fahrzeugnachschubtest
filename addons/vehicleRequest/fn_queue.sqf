/**
* fn_queue.sqf 
* @Descr: -
* @Author: TDC | Shockwave & TDC | insane
*
* @Arguments: Vehicle Config Number; Caller
* @Return: -
*/
private ["_timer"];

_timer = 30;
_reqWaitTime = 60;
_dir = 188;



while {true} do 
{
	sleep _timer;	
	
	if (count TDC_vehReq_serverQueue > 0) then
	{
		_queueItem = ((TDC_vehReq_serverQueue select 0) select 0);
		_caller = ((TDC_vehReq_serverQueue select 0) select 1);
		_className = ((TDC_vehReq_config select _queueItem) select 1);
		_ingameName = ((TDC_vehReq_config select _queueItem) select 0);

		// check, ob schon etwas am spawn steht, wenn ja, dann warten bis platz frei und dann queue neu asufueren, wenn nicht dann fahrzeug spawnen
		_nearVeh = nearestObjects [getMarkerPos "reqveh",["Air", "Armored", "Car", "Support","BWA3_Puma_Tropen","BWA3_Leopard2A6M_Tropen","BWA3_Puma_Fleck","BWA3_Leopard2A6M_Fleck","B_MBT_01_arty_F","B_APC_Tracked_01_CRV_F","B_MBT_01_mlrs_F"], 10];
		
		if (count _nearVeh >= 1) then {
			[["Ein Fahrzeug wurde bereits geliefert und blockiert den Lieferpunkt", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
			waitUntil {
				_nearVeh = nearestObjects [getMarkerPos "reqveh",["Air", "Armored", "Car", "Support","BWA3_Puma_Tropen","BWA3_Leopard2A6M_Tropen","BWA3_Puma_Fleck","BWA3_Leopard2A6M_Fleck","B_MBT_01_arty_F","B_APC_Tracked_01_CRV_F","B_MBT_01_mlrs_F"], 10];
				count _nearVeh <1};
			[["Der Lieferpunkt ist frei. Die Bestellung des Fahrzeugs %1 wird neu bearbeitet.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
			}
			else{
			[["Das Fahrzeug %1 wurde bestellt und wird an den Lieferpunkt geliefert.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
			sleep _reqWaitTime;
			_veh = createVehicle [_classname, getMarkerPos "reqveh",[],1,"None"];
			_veh setDir _dir;
			[["Das Fahrzueg %1 steht zur Abholung am Lieferpunkt bereit.", _ingameName],"TDC_vehReq_fnc_messageTo",(owner _caller)] call BIS_fnc_MP;
			// aus TDC_vehReq_serverQueue enfernen
			TDC_vehReq_serverQueue deleteAt 0;
		};
	
	};
	
};