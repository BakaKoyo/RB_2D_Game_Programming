/// @description [ Variables ]

Keys = obj_Keys;

SpawnPoint = obj_SpawnPointKeys;

Enemy = obj_Enemy;

Enemy_SpawnPoint = obj_EnemySpawnPoint;


repeat(5)
{

	/* Key Spawn */
	var _RandomSpawnPoint = irandom(instance_number(SpawnPoint) - 1);
	var _Key = instance_find(SpawnPoint, _RandomSpawnPoint);
	
	instance_create_layer(_Key.x, _Key.y, "Instances", Keys);

	/* Enemy Spawn */
	var _RandomEnemySpawnPoint = irandom(instance_number(Enemy_SpawnPoint) - 1);
	var _Enemy = instance_find(Enemy_SpawnPoint, _RandomEnemySpawnPoint);
	
	instance_create_layer(_Enemy.x, _Enemy.y, "Instances", Enemy);

}