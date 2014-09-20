/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform//////
////////////////

_uniform = uniform player;

	
	case (playerSide == independent && _uniform == "U_Rangemaster"):
	{
		if( (call life_medlevel) > 3) then
		{
			player setObjectTextureGlobal  [0, "textures\Medic\Uniform\medic_uniform.paa"];
		}
		else
		{
			//player setObjectTextureGlobal  [0, "textures\med_uniform_sani.jpg"]; 
		};
		
		//if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
};