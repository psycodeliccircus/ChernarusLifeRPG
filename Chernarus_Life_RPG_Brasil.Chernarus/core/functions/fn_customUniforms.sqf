if (playerSide == independent) then
{
	sleep 1;
	player setObjectTextureGlobal [0,"textures\Medic\Uniform\medic_uniform.paa"];

	_Count = 0;
	while {_Count < 5} do
	{
		player setObjectTextureGlobal [0,"textures\Medic\Uniform\medic_uniform.paa"];
		_Count = _Count + 1;
		sleep 2;
	};
};

// Make Backpack invisible
if ( (playerSide == independent) or (playerSide == west) ) then
{
	if(backpack player != "") then 
	{
		(unitBackpack player) setObjectTextureGlobal [0,""];
	};
};