/// @description [ Variables ]


#region [ Tweakable Variables ]

#region [ Player Movement ]

#region [ Keybindings ] 

Key_Left = ord("A");
Key_Right = ord("D");
Key_Forward = ord("W");
Key_Backward = ord("S");
Mouse_LeftButton = mb_left;

#endregion

#endregion

#region [ Player Mouse Shooting ]

Key_Shoot = vk_space;

#endregion

#endregion 



#region [ Non-Tweakable Variables ]

#region [ Player Movement ]

bln_CanMove = true;
inst_Var_PlayerMoveSpeed = 6;

enum Player_Move
{
	Idle,
	Move
}

enum_PlayerMoveState = Player_Move.Idle;


#endregion

#region [ Key Collection & Door Exit ]

inst_Var_KeysGathered = 0;
inst_Var_TotalKeysNeeded = 5;

#endregion

#region [ Player Mouse Shooting ]

inst_Var_PlayerBulletSpeed = 10;
bln_CanShoot = true;
inst_Var_PlayerShootCD = 5;

#endregion

#endregion


