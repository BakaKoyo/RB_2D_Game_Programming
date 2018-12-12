/// @description [ Variables ]


#region [ Key Bindings (Tweakable) ]

/* 
|--------------------------------------------|
| Important!: Do not change Variable Name(s) |
|--------------------------------------------|
| Note: To change the keybinds do            |
|       vk_[Name] or ord("[stringName]")     |
|--------------------------------------------|
*/

Key_Left = vk_left;
Key_Right = vk_right;
Key_UP = vk_up;
Key_Down = vk_down;
Key_Run = vk_shift;
Key_Sneak = vk_space;
Key_TurnOffFlashlight = ord("V");
key_TurnFlashlightLeft = ord("Z");
key_TurnFlashlightRight = ord("X");

#endregion


#region [ Player ]

/*
|----------------------|
| Non-Tweakable Values |
|----------------------|
*/

global.str_PlayerMoveStatus = "Idle";
bln_IsFlashLightOn = false;

/*
|----------------------|
|   Tweakable Values   |
|----------------------|
*/

/* Player Movement Speed */
Player_WalkSpeed = 3;
Player_RunSpeed = 7;
Player_SneakSpeed = 1.5;

#endregion