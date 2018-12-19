
if (instance_number(Enemy) <= 1)
{

	/* Enemy Spawn */
	var _RandomEnemySpawnPoint = irandom(instance_number(Enemy_SpawnPoint) - 1);
	var _Enemy = instance_find(Enemy_SpawnPoint, _RandomEnemySpawnPoint);
	
	instance_create_layer(_Enemy.x, _Enemy.y, "Instances", Enemy);

}


if (instance_number(Keys) <= 1)
{

	/* Enemy Spawn */
	var _RandomEnemySpawnPoint = irandom(instance_number(SpawnPoint) - 1);
	var _Enemy = instance_find(SpawnPoint, _RandomEnemySpawnPoint);
	
	instance_create_layer(_Enemy.x, _Enemy.y, "Instances", Keys);

}
