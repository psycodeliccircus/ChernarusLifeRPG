enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.2";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

if(!StartProgress) then
{
	[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
	//[8,true,false] execFSM "core\fsm\core_time.fsm";
};
StartProgress = true;


[] spawn
{
	sleep 60;
	[] call life_fnc_updateClothing;
};



[] execVM "antihacks\antihack.sqf";
[] execVM "antihacks\Anticheat.sqf";
[] execVM "Server Messages\message.sqf";
[] execVM "core\worp\gasmask.sqf";
[] execVM "core\worp\teargas.sqf";
[] execVM "core\worp\teargasGL.sqf";
[] execVM "nosidechat.sqf";
[] execVM "antihacks\AdminMenu.sqf";