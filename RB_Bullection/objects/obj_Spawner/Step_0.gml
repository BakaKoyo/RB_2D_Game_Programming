/// @description Insert description here
// You can write your code in this editor


if (instance_number(obj_Enemy) < maxEnemies)
{

	if (irandom(SpawnRate) == 0)
	{
		
		if (irandom(1) == 0)
		{
			var _X = room_width/2 - 100;
			var _Y = -100;
			var _Enemy = instance_create_layer(_X, _Y, "Instances", obj_Enemy);	
			_Enemy.faceDirection = 1;
		}
		else
		{
			var _X = room_width/2 + 100;
			var _Y = -100;
			var _Enemy = instance_create_layer(_X, _Y, "Instances", obj_Enemy);	
			_Enemy.faceDirection = -1;
		}
		
	}
 	
}