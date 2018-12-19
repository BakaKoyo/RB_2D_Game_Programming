/// @description Insert description here
// You can write your code in this editor

global.GameOver = true;


if (global.Score > global.HiScore)
{
	global.HiScore = global.Score;	
	
	ini_open("savedata.ini");
	{
		ini_write_real("Stats", "HighScore", global.HiScore);	
	}
	ini_close()

}

instance_change(obj_PlayerDeath, true);