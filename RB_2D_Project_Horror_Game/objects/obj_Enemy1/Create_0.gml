/// @description [ Variables ]


#region [ Non-Tweakable Varriables ]

/* State for Enemy */
enum EnemyState
{
	Idle,
	Patrol,
	Chase,
	Attack,
	Flee
}

/* Sets what state it is when it spawns */ 
State_Enemy_1 = EnemyState.Idle;

/* Enemy's Show Range */
Enemy_ShowRange = 700;

/* Enemy's Detection Range */
Enemy_DetectRange = 500;

/* Enemy's Attack Range */
Enemy_AttackRange = 250;

Enemy_TimeCounter = 0;

#endregion

#region [ Tweakable Values ]

/* Move Speed for Enemy */
Enemy_Movespeed = 3;


#endregion