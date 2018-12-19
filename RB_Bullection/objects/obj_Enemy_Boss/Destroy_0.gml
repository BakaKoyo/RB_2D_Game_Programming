effect_create_above(ef_firework, x, y, 5, c_red);

repeat(100)
{
	
	var _EnemyBullet = instance_create_layer(x,y, "Instances", Enemy_Bullet);
	_EnemyBullet.hspeed = random_range(-3, 3);
	_EnemyBullet.vspeed = random_range(-3, 3);

}
