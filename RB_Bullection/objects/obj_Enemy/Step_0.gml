/// @description [ Enemy Loop ]

switch(enum_EnemyState)
{

	case EnemyState.Alive:
	
	if (Enemy_HP <= 0) enum_EnemyState = EnemyState.Dead;

	#region [ Shooting ]
	
	if (EnemyTimer >= EnemyTime)
	{
		EnemyTimer = 0;
		var _EnemyBullet = instance_create_layer(x,y, "Instances", Enemy_Bullet);
		_EnemyBullet.hspeed = random_range(-2, 2);
		_EnemyBullet.vspeed = random_range(-2, 2);

	}
	else EnemyTimer++;
	
	
	
	#endregion
	
	break;

	case EnemyState.Dead:
	
	instance_destroy();
	
	break;

}


