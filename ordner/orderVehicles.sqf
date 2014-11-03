//neue Fahrzeuge ordern
//by Shockwave
//object init line :this addaction ["Tiger bestellen”,”addons\VehicleRespawn\orderVehicles.sqf"];

hint "Ein Tiger wurde bestellt. Er wird an den Hafen geliefert und ist in wenigen Minuten da.";
sleep 30;
createVehicle ["B_Heli_Attack_01_F", getMarkerPos "orderveh",[],1,"None"];
hint "Der Tiger steht zur Abholung am Hafen bereit.";