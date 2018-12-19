///@description [ Player Loop ]

#region [ Player Movement ] 

switch(enum_PlayerMoveState)
{
	
	#region [ Idle ]
	/* 
	Idle State: Checks for user input
	              if user press any movement button then switch state
				  else reset movement speed values to 0
	*/
	case Player_Move.Idle:
	
	if (keyboard_check(Key_Forward) || keyboard_check(Key_Backward)
	|| keyboard_check(Key_Left) || keyboard_check(Key_Right))
	{
		enum_PlayerMoveState = Player_Move.Move;	
	}
	else 
	{
		speed = 0;
	}
	
	break;
	
	#endregion
	
	#region [ Move ]
	/*
	Move State: Checks if user presses any movement button
	               if true then move the obj
				   else return back to idle state
	*/
	case Player_Move.Move:
	
	if (keyboard_check(Key_Forward)) y -= inst_Var_PlayerMoveSpeed;
	
	if (keyboard_check(Key_Backward)) y += inst_Var_PlayerMoveSpeed;
	
	if (keyboard_check(Key_Left)) x -= inst_Var_PlayerMoveSpeed;
	
	if (keyboard_check(Key_Right)) x += inst_Var_PlayerMoveSpeed;
	
	enum_PlayerMoveState = Player_Move.Idle;
	
	break;
	
	#endregion
	
}

/* Rotates image angle based on mouse position */
image_angle = point_direction(x, y, mouse_x, mouse_y);

#endregion 


#region [ Wall Collision ]

if (place_meeting(x, y, obj_Block))
{
	x = xprevious;
	y = yprevious;
}

#endregion


#region [ Player Mouse Shooting ]

if (keyboard_check(Key_Shoot))
{
	var _Bullet = instance_create_layer(x, y, "Instances", obj_PlayerBullet);
	_Bullet.direction = image_angle;
	_Bullet.image_angle = image_angle;
	_Bullet.speed = inst_Var_PlayerBulletSpeed;
}
#endregion