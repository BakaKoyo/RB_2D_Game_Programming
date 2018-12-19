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
		
		var _EnemyBullet2 = instance_create_layer(x,y, "Instances", Enemy_Bullet);
		_EnemyBullet2.hspeed = random_range(-3, 3);
		_EnemyBullet2.vspeed = random_range(-3, 3);
			
		if (bln_CirclePhase)
		{
			
			_EnemyBullet2.direction += 10;
			_EnemyBullet2.speed = clamp(speed, 3, 6);
	
			RNG = random_range(0,100)	
			if (RNG <= 2) bln_CirclePhase = false;
			else bln_CirclePhase = true;
		}
		else 
		{
			_EnemyBullet2.direction -= 10;
			_EnemyBullet2.speed = clamp(speed, 3, 6);
			RNG = random_range(0,100)	
			if (RNG >= 98) bln_CirclePhase = true;
			else bln_CirclePhase = false;
		}
		
	}	
	else EnemyTimer++;
	
	#endregion
	
	break;

	case EnemyState.Dead:
	
	instance_destroy();
	
	break;

}


