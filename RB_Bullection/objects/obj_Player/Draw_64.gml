/// @description [ Player HUD ]


draw_set_font(fnt_HUD);

var _X = 5;
var _Y = 5;
var _X2 = 5;
var _Y2 = 20;
var _KeysGathered = "Keys Gathered: " + string(inst_Var_KeysGathered);
var _TotalAmountNeeded = "Keys Required to unlock Exit Door: " 
+ string(inst_Var_TotalKeysNeeded);

draw_set_color(c_black);
draw_text(_X, _Y+2, _KeysGathered);

draw_set_color(c_silver);
draw_text(_X, _Y, _KeysGathered);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_set_color(c_black);
draw_text(_X2, _Y2 +2, _TotalAmountNeeded);

draw_set_color(c_silver);
draw_text(_X2, _Y2, _TotalAmountNeeded);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (inst_Var_KeysGathered >= inst_Var_TotalKeysNeeded)
{
	inst_Var_TotalKeysNeeded = "Exit Door Unlocked!";	
	global.EnoughKeys = true;
}
