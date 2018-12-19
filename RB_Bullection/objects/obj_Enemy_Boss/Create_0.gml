/// @description [ Variables ]

#region [ Player Can Kill Enemy ]

Enemy_HP = random_range(50, 100);
Enemy_Bullet = obj_BulletEnemy;
EnemyTimer = 0;
EnemyTime = 1;




enum EnemyStateBoss
{

	Alive,
	Dead

}

enum_EnemyState = EnemyStateBoss.Alive;

path_start(Enemy_Path, 5, path_action_continue, true);

#endregion