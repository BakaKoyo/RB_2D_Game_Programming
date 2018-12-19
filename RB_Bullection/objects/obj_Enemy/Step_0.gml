/// @description [ Enemy Loop ]

switch(enum_EnemyState)
{

	case EnemyState.Alive:
	
	if (Enemy_HP <= 0) enum_EnemyState = EnemyState.Dead;
	
	break;

	case EnemyState.Dead:
	
	instance_destroy();
	
	break;

}