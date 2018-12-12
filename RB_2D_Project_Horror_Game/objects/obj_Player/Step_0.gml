/// @description [ Loop ]

#region [ Player Movement ]

/* 
Check for the variable in the switch statement and
checks with of the following cases matches the variable 
set in the switch statement 
*/
switch (global.str_PlayerMoveStatus)
{

	#region [ Idle ]
	
	/* 
	If the player presses a key that moves character 
	then switch the status 
	*/
	case("Idle"):
	
		/* Check if player is pressing keyboard input to walking */
		if (keyboard_check(Key_Left)) or (keyboard_check(Key_Right)) 
		or (keyboard_check(Key_UP)) or (keyboard_check(Key_Down))
		{
			global.str_PlayerMoveStatus = "Walking";	
		}
		
		/* Check if player is pressing keyboard input to running */
		if (keyboard_check(Key_Left)) and (keyboard_check(Key_Run))
		or (keyboard_check(Key_Right)) and (keyboard_check(Key_Run))
		or (keyboard_check(Key_UP)) and (keyboard_check(Key_Run))
		or (keyboard_check(Key_Down)) and (keyboard_check(Key_Run))
		{
			global.str_PlayerMoveStatus = "Running";
		}
		
		/* Check if player is pressing keyboard input to sneaking */
		if (keyboard_check(Key_Left)) and (keyboard_check(Key_Sneak))
		or (keyboard_check(Key_Right)) and (keyboard_check(Key_Sneak))
		or (keyboard_check(Key_UP)) and (keyboard_check(Key_Sneak))
		or (keyboard_check(Key_Down)) and (keyboard_check(Key_Sneak))
		{
			global.str_PlayerMoveStatus = "Sneaking";	
		}
	
	break;
	
	#endregion
	
	/*-------------------------------------------------------------*/
	
	#region [ Walking ] 
	
	case("Walking"):
	
	/* Walk Movement (Left or Right) */
	if (keyboard_check(Key_Left))
	{
		x-= Player_WalkSpeed;
	}
	if (keyboard_check(Key_Right))
	{
		x+= Player_WalkSpeed;	
	}
	
	/* Walk Movement (Up or Down) */
	if (keyboard_check(Key_UP))
	{
		y-= Player_WalkSpeed;
	}
	if (keyboard_check(Key_Down))
	{
		y+= Player_WalkSpeed;
	}
	
	
	/* Check if player is pressing keyboard input to running */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_Right)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_UP)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_Down)) and (keyboard_check(Key_Run))
	{
		global.str_PlayerMoveStatus = "Running";
	}
		
	/* Check if player is pressing keyboard input to sneaking */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_Right)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_UP)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_Down)) and (keyboard_check(Key_Sneak))
	{
		global.str_PlayerMoveStatus = "Sneaking";	
	}
	
	break;
	
	#endregion

	/*-------------------------------------------------------------*/
	
	#region [ Running ]
	
	case("Running"):
	
	/* Running Movement (Left or Right) */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Run))
	{
		x-= Player_RunSpeed;
	}
	if (keyboard_check(Key_Right)) and (keyboard_check(Key_Run))
	{
		x+= Player_RunSpeed;	
	}
	
	/* Running Movement (Up or Down) */
	if (keyboard_check(Key_UP)) and (keyboard_check(Key_Run))
	{
		y-= Player_RunSpeed;
	}
	if (keyboard_check(Key_Down)) and (keyboard_check(Key_Run))
	{
		y+= Player_RunSpeed;
	}
	
	
	/* Check if player is pressing keyboard input to walking */
	if (keyboard_check(Key_Left)) or (keyboard_check(Key_Right)) 
	or (keyboard_check(Key_UP)) or (keyboard_check(Key_Down))
	{
		global.str_PlayerMoveStatus = "Walking";	
	}
	
	/* Check if player is pressing keyboard input to sneaking */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_Right)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_UP)) and (keyboard_check(Key_Sneak))
	or (keyboard_check(Key_Down)) and (keyboard_check(Key_Sneak))
	{
		global.str_PlayerMoveStatus = "Sneaking";	
	}
	
	break;
	
	#endregion

	/*-------------------------------------------------------------*/

	#region [ Sneaking ] 
	
	case("Sneaking"):
	
	/* Running Movement (Left or Right) */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Sneak))
	{
		x-= Player_SneakSpeed;
	}
	if (keyboard_check(Key_Right)) and (keyboard_check(Key_Sneak))
	{
		x+= Player_SneakSpeed;	
	}
	
	/* Running Movement (Up or Down) */
	if (keyboard_check(Key_UP)) and (keyboard_check(Key_Sneak))
	{
		y-= Player_SneakSpeed;
	}
	if (keyboard_check(Key_Down)) and (keyboard_check(Key_Sneak))
	{
		y+= Player_SneakSpeed;
	}
	
	
	/* Check if player is pressing keyboard input to walking */
	if (keyboard_check(Key_Left)) or (keyboard_check(Key_Right)) 
	or (keyboard_check(Key_UP)) or (keyboard_check(Key_Down))
	{
		global.str_PlayerMoveStatus = "Walking";	
	}
	
	/* Check if player is pressing keyboard input to running */
	if (keyboard_check(Key_Left)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_Right)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_UP)) and (keyboard_check(Key_Run))
	or (keyboard_check(Key_Down)) and (keyboard_check(Key_Run))
	{
		global.str_PlayerMoveStatus = "Running";
	}
	
	break;
	
	#endregion

}


#endregion

