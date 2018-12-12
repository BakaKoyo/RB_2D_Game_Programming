/// @description [ Loop ]


#region [ Enemy Movement ]


switch(State_Enemy_1)
{
	
	#region [ Idle ]
	
	/*
	When the Enemy State is Idle 
	*/
	case(EnemyState.Idle):
	
	/* Add's one to the timer */
	Enemy_TimeCounter++;
	
	/* After 2 Seconds */
	if (Enemy_TimeCounter >= room_speed * 2)
	{
		
		/* Chooses an Integer from 0 & 1 */
		var _ChanceToChangeState = irandom_range(0,1);
		
		/* 50 50 chance of the Enemy going into patrol mode */
		switch (_ChanceToChangeState)
		{
			/* Change state to Patrol */
			case 0: 
				State_Enemy_1 = EnemyState.Patrol;
			break;
			
			/* Reset Counter */
			case 1: 
				Enemy_TimeCounter = 0;
			break;
		}
	}
	
	break;
	
	#endregion

	
	#region [ Patrol ]
	
	case(EnemyState.Patrol):
	
	/* 
	Roll from 1,4 (0, 90, 180, 270) 
	This choose which direction the enemy will patrol
	*/
	
	/* 
	After Patrolling to random distance from its original
	location go back to idle unless if player is within
	range of enemy then go Chase
	*/
	
	break;
	
	#endregion
	
	
	#region [ Chase ]
	
	case(EnemyState.Chase):
	
	
	
	break;
	
	#endregion
	
	
	#region [ Attack ]
	
	case(EnemyState.Attack):
	 
	 
	 
	break;
	
	#endregion
	
	
	
}

#endregion
