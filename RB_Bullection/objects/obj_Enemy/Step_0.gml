/// @description Insert description here
// You can write your code in this editor

hSpeed = 0;

if (faceDirection == 1)
{
	hSpeed = WalkSpeed;
	sprite_index = spr_PlayerWalkRight;
}
else
{
	hSpeed = -WalkSpeed;
	sprite_index = spr_PlayerWalkLeft;
}

var _Block = instance_place(x + hSpeed, y, obj_Block);
if (_Block != noone)
{
	faceDirection *= -1;
	
	if (hSpeed > 0)
	{
		x = round(x + _Block.bbox_left - bbox_right -1);		
	}
	else
	{
		x = round(x + _Block.bbox_right - bbox_left +1);	
	}
	
	hSpeed = 0;
}

vSpeed += fallGrav;
vSpeed = min(vSpeed, MaxFallSp);

var _Block = instance_place(x, y + vSpeed, obj_Block);
if (_Block != noone)
{
	y = round(y + _Block.bbox_top - bbox_bottom - 1);
	vSpeed = 0;
}

y += vSpeed;
x += hSpeed;


if (y > room_height)
{
	y = 0;
	image_blend = c_gray;
	isAngry = true;
	WalkSpeed = angrySp + 5;
}

