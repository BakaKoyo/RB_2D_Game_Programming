/// @description Insert description here
// You can write your code in this editor

vSpeed += fallGravity;

/* Check for the floor */
var _Block = instance_place(x, y+vSpeed, obj_Block);

if (_Block != noone)
{
	y += _Block.bbox_top - bbox_bottom - 1;
	vSpeed = 0;
}

y +=  vSpeed;