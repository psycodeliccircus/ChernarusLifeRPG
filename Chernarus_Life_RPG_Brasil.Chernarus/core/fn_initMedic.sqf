#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch (__GETC__(life_medicLevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 1000;}; 
	             case 2: {life_paycheck = life_paycheck + 1500;}; 
	             case 3: {life_paycheck = life_paycheck + 2000;};
	             case 4: {life_paycheck = life_paycheck + 3000;}; 
	             case 5: {life_paycheck = life_paycheck + 3300;};  
	             case 6: {life_paycheck = life_paycheck + 3750;}; 
	             case 7: {life_paycheck = life_paycheck + 4500;}; 
				 case 8: {life_paycheck = life_paycheck + 5000;}; 
				 case 9: {life_paycheck = life_paycheck + 6500;}; 
				 case 10: {life_paycheck = life_paycheck + 6750;}; 
				 case 11: {life_paycheck = life_paycheck + 7250;}; 
				 case 12: {life_paycheck = life_paycheck + 8000;}; 
				 case 13: {life_paycheck = life_paycheck + 9000;}; 
				 case 14: {life_paycheck = life_paycheck + 1000;};
			};

[] call life_fnc_medicLoadout;
[] call life_fnc_spawnMenu;
[] execVM "intro\intro.sqf";
[] execVM "intro\welcome.sqf";
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {(uniform player) == "U_Rangemaster"} do
    {
	switch (__GETC__(life_medicLevel)) do 
		{
			case 1: {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
			
			case 2: {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
			
			case 3: {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
			
			case 4: {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
			
			case 5: {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
			
			default {
			player setObjectTextureGlobal [0,"textures\medic\uniform\medic_uniform.paa"];
			};
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};