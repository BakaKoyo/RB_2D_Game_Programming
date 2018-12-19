/// @description Variables
// You can write your code in this editor



#region [ Tweakable Values ]

int_WalkSpeed = 5;
int_JumpPower = 10;
int_MaxFallSpeed = 12;
int_BulletSpeed = 10;
flp_Gravity = 0.75;
gunMode = 1;
gunModeMax = 4;

#endregion


#region [ Non-Tweakable Values ]

int_RotSpeed = 10;
int_XBulletOffset = 10;
int_YBulletOffset = 5;
int_vSpeed = 0;
int_hSpeed = 0;
int_FaceDirection = 1;
bln_Grounded = false;

#endregion


#region [ KeyBindings (Tweakable) ]

key_Left = ord("A");
key_Right = ord("D");
key_Jump = ord("W");
key_Shoot = vk_space;

#endregion


#region [ Global Var. ]

global.GameOver = false;
global.HiScore = 0;
global.Score = 0;
global.int_Speed = int_BulletSpeed;
global.int_Direction = int_FaceDirection;

#endregion


#region [ Enums ]


enum Enum_GunModes 
{
	PISTOL=1, 
	DUAL_PISTOL=2, 
	TRI_PISTOL=3, 
	SAWED_OFF=4,
}

#endregion

#region [ Score ]

gml_pragma("global", "global.Score = 0;");

ini_open("savedata.ini");
{
	global.HiScore = ini_read_real("Stats", "HighScore", 0);
}
ini_close();


#endregion
