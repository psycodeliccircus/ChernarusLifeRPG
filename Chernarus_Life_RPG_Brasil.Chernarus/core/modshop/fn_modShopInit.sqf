/*
	Author: MaxWell
	Date: 24/07/2014
*/
private["_display","_reskinList","_nitroList","_engineList"];
if(dialog) exitWith {};
if(vehicle player == player) exitWith {hint "You need to be in a vehicle to use the modshop!"};
if(driver vehicle player != player) exitWith {hint "You need to be in the drivers seat in order to use the modshop!";};

if(!(createDialog "ciaransmodshop")) exitWith {};
disableSerialization;
_display = findDisplay 2000;
_reskinList = _display displayCtrl 1500;
life_modshop_purchase = false;
_vehicle = vehicle player;
_veh = typeOf _vehicle;
//Offroad, IFRIT, Zamak
if(_veh in ["C_Offroad_01_F","O_MRAP_02_F","I_Truck_02_transport_F","I_Truck_02_covered_F"]) then {
	_reskinList lbAdd format["Custom RGB"];
} else {
	_paintR = _display displayCtrl 1800;
	_paintG = _display displayCtrl 1801;
	_paintB = _display displayCtrl 1802;
	
	_paintR ctrlEnable false;
	_paintG ctrlEnable false;
	_paintB ctrlEnable false;
};

_color = _vehicle getVariable["Life_VEH_color",""];
_rgb = _vehicle getVariable["Life_VEH_RGB",[]];
life_modshop_data = [_color,_rgb]; //Set up a modshop data array.

//Populate the list of textures.
_c_arr = [_veh] call life_fnc_vehicleColorCfg;

for "_i" from 0 to (count _c_arr)-1 do
{
	if((_c_arr select _i) select 1 == "civ") then
	{
		_text = [_veh,_i] call life_fnc_vehicleColorStr;
		lbAdd[1500,format["%1",_text]];
		lbSetValue [1500,(lbSize 1500)-1,_i];
	};	

	if((_c_arr select _i) select 1 == "donate" && (call life_samaritan) > 0) then
	{
		_text = [_veh,_i] call life_fnc_vehicleColorStr;
		lbAdd[1500,format["%1",_text]];
		lbSetValue [1500,(lbSize 1500)-1,_i];
	};	

	if((_c_arr select _i) select 1 == "reb" && license_civ_rebel) then
	{
		_text = [_veh,_i] call life_fnc_vehicleColorStr;
		lbAdd[1500,format["%1",_text]];
		lbSetValue [1500,(lbSize 1500)-1,_i];
	};		
};
