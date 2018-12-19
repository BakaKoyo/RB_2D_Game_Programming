/// @description Insert description here
// You can write your code in this editor

bln_Opened = false;
sprite_index = spr_ChestClosed;

var newBlock = instance_find(obj_FloorBlock, irandom(instance_number(obj_FloorBlock) - 1));

x = newBlock.x
y = newBlock.y - 50;