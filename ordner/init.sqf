
[] call compile PreprocessFileLineNumbers "core\config.sqf";

if (isServer) then { [] spawn TDC_vehReq_fnc_initServer; };

player addAction["GUI", TDC_vehReq_fnc_showDialog];