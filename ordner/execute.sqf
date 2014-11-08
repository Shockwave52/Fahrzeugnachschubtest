//private["_ctrl","_curSel"];
//_ctrl = _this select 0;
//_curSel = _this select 1;

hint "execute";
sleep 1;
_data=lbData[1500,1];
hint format ["Data is: %1",_data];

if((lbData[1500,1]) == "Leopard") then
{
    []execVM "orderVehicles.sqf";
};  