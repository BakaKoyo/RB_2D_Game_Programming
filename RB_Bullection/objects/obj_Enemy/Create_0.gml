/// @description [ Variables ]

#region [ Player Can Kill Enemy ]

Enemy_HP = random_range(50, 100);
Enemy_Bullet = obj_BulletEnemy;
EnemyTimer = 0;
EnemyTime = 10;

enum EnemyState
{

	Alive,
	Dead

}

enum_EnemyState = EnemyState.Alive;

#endregion