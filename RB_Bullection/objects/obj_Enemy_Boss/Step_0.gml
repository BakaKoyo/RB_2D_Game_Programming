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
		_EnemyBullet.hspeed = random_range(-3, 3);
		_EnemyBullet.vspeed = random_range(-3, 3);
		
	}	
	else EnemyTimer++;
	
	#endregion
	
	break;

	case EnemyState.Dead:
	
	instance_destroy();
	
	break;

}


