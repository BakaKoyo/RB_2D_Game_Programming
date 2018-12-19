/// @description Insert description here
// You can write your code in this editor

/* Default Horizontal Speed to 0 */
int_hSpeed = 0;

/* Gravity */
int_vSpeed += flp_Gravity;

#region [ Key-Presses ]

/* =================================== */
/*          Player Movement            */
/* =================================== */
if (keyboard_check(key_Right) || gamepad_button_check(0, gp_padr))
{
	int_FaceDirection = 1;
	int_hSpeed = int_WalkSpeed;
}


if (keyboard_check(key_Left) || gamepad_button_check(0, gp_padl))
{
	int_FaceDirection = -1;
	int_hSpeed = -int_WalkSpeed;
}


/* ================================= */
/*           Player Jump             */
/* ================================= */
if (keyboard_check_pressed(key_Jump) || gamepad_button_check_released(0, gp_face1))
{
	bln_Grounded = true;
	if (bln_Grounded)
	{
		int_vSpeed = -int_JumpPower;
	}
	
}

bln_Grounded = false;

if (keyboard_check_released(key_Jump) || gamepad_button_check_released(0, gp_face1))
{
	if (int_vSpeed < 0)
	{
		int_vSpeed /= 2;
	}
}

/* ================================= */
/*           Player Shoot            */
/* ================================= */
if (keyboard_check_pressed(key_Shoot) || gamepad_button_check_pressed(0, gp_face3))
{
	
	switch(gunMode)
	{
		
		case Enum_GunModes.PISTOL:
		
			var _X = x + 20*int_FaceDirection;
			var _Y = y;
			var _Bullet = instance_create_layer(_X, _Y, "Instances", obj_Bullet);
			
			if (int_FaceDirection == 1)
			{
				_Bullet.speed = int_BulletSpeed;
			}
			else
			{
				_Bullet.speed = -int_BulletSpeed;	
			}

		break;
		
		case Enum_GunModes.DUAL_PISTOL:
			var _X = x + 20*int_FaceDirection;
			var _Y = y;
			var _Bullet = instance_create_layer(_X, _Y, "Instances", obj_Bullet);
			var _Bullet2 = instance_create_layer(_X, _Y + int_YBulletOffset, "Instances", obj_Bullet);
			
			if (int_FaceDirection == 1)
			{
				_Bullet.speed = int_BulletSpeed;
				_Bullet2.speed = int_BulletSpeed;
			}
			else
			{
				_Bullet.speed = -int_BulletSpeed;	
				_Bullet2.speed = -int_BulletSpeed;
			}

		break;
		
		case Enum_GunModes.TRI_PISTOL:
			var _X = x + 20*int_FaceDirection;
			var _Y = y;
			var _Bullet = instance_create_layer(_X, _Y, "Instances", obj_Bullet);
			var _Bullet2 = instance_create_layer(_X, _Y + int_YBulletOffset *2, "Instances", obj_Bullet);
			var _Bullet3 = instance_create_layer(_X, _Y - int_YBulletOffset , "Instances", obj_Bullet);
			
			if (int_FaceDirection == 1)
			{
				_Bullet.speed = int_BulletSpeed;
				_Bullet2.speed = int_BulletSpeed;
				_Bullet3.speed = -int_BulletSpeed;
			}
			else
			{
				_Bullet.speed = -int_BulletSpeed;	
				_Bullet2.speed = -int_BulletSpeed;
				_Bullet3.speed = int_BulletSpeed;
			}

		break;
		
		case Enum_GunModes.SAWED_OFF:
			var _X = x + 20*int_FaceDirection;
			var _Y = y;
			var _Bullet = instance_create_layer(_X, _Y, "Instances", obj_Bullet);
			var _Bullet2 = instance_create_layer(_X, _Y + int_YBulletOffset *2, "Instances", obj_Bullet); 
			var _Bullet3 = instance_create_layer(_X, _Y - int_YBulletOffset, "Instances", obj_Bullet);
			var _Bullet4 = instance_create_layer(_X, _Y + int_YBulletOffset, "Instances", obj_Bullet);
			
			if (int_FaceDirection == 1)
			{
				_Bullet.speed = int_BulletSpeed;
				_Bullet2.speed = int_BulletSpeed;
				_Bullet3.speed = -int_BulletSpeed;
				_Bullet4.speed = -int_BulletSpeed;
			}
			else
			{
				_Bullet.speed = -int_BulletSpeed;	
				_Bullet2.speed = -int_BulletSpeed;
				_Bullet3.speed = int_BulletSpeed;
				_Bullet4.speed = int_BulletSpeed;
			}

		break;
		
		default: 
			show_error("Invalid Gun mode!", false);
			gunMode = 1;
		
		
	}
	
}


#endregion


#region [ Collision ]


#region [ Horizontal Wall Collision ]

var _H_Block = instance_place(x + int_hSpeed, y, obj_Block);

/* If theres Collision */
if (_H_Block != noone)
{

	/* Right Wall */
	if (int_hSpeed > 0)
	{
		x += (_H_Block.bbox_left - bbox_right) - 1;
	}
	else /* Left Wall */
	{
		x += (_H_Block.bbox_right - bbox_left) + 1;
	}
	
	int_hSpeed = 0;
	
}
#endregion
/* ======================================================== */
#region [ Vertical Wall Collision ]

var _V_Block = instance_place(x, y + int_vSpeed, obj_Block);

/* If theres Collision */
if (_V_Block != noone)
{

	/* Right Wall */
	if (int_vSpeed > 0)
	{
		y += (_V_Block.bbox_top - bbox_bottom) - 1;
		bln_Grounded = true;
	}
	else /* Left Wall */
	{
		y += (_V_Block.bbox_bottom - bbox_top) + 1;
	}
	
	int_vSpeed = 0;
	
}

#endregion


#endregion


#region [ Position Update ]

/* Update Postion */
x += int_hSpeed;
y += int_vSpeed;

#endregion


#region [ Sprite Animation ]

/* Ground */
if (bln_Grounded)
{
	/* Standing */
	if (int_hSpeed == 0)
	{
		if (int_FaceDirection == 1) 
			sprite_index = spr_PlayerStandRight;
		else
			sprite_index = spr_PlayerStandLeft;	
	}
	/* Moving */
	else
	{
		if (int_FaceDirection == 1)
		{
			sprite_index = spr_PlayerWalkRight;
		}
		else
		{
			sprite_index = spr_PlayerWalkLeft;
		}
	}	
		
}
/* Jumping */
else
{
	if (int_FaceDirection == 1)
		sprite_index = spr_PlayerJumpRight;
	else
		sprite_index = spr_PlayerJumpLeft;
}

#endregion
