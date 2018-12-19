/// @description Insert description here
// You can write your code in this editor


if (!bln_Opened)
{
	bln_Opened = true;
	global.Score += 1;
	sprite_index = spr_ChestOpen;
	alarm[0] = 120;
	
	with(other)
	{
		var _CurrentGunMode = gunMode;
		
		while(true)
		{
			gunMode = irandom_range(1, gunModeMax);
			
			if (gunMode != _CurrentGunMode) break;	
			
		}
	}
	
}
