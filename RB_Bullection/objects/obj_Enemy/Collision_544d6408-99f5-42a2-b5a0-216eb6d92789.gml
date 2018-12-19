/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

image_alpha =.25;
image_blend = c_red;
alarm[0] = 10;

HP -= 1;

if (HP <= 0)
{
	
	instance_change(obj_PlayerDeath, true);
	
	repeat(200)
	{
		var _BulletEnemy = instance_create_layer(x, y, "Instances", obj_BulletEnemy);
		_BulletEnemy.hspeed = random_range(-1, 1);
		_BulletEnemy.vspeed = random_range(-1, 1);
	}
	
}