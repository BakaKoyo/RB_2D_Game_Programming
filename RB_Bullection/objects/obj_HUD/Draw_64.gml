/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_HUD);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _X = display_get_gui_width() /2;
var _Y = 25;
var _strScore = string(global.Score);

draw_set_color(c_black);
draw_text(_X, _Y+4, _strScore);

draw_set_color(c_aqua);
draw_text(_X, _Y, _strScore);


if (global.GameOver)
{
	
	var _strHiScore = "High Sore: " + string(global.HiScore);
	
    var _x1 = 0;
    var _x2 = display_get_gui_width();
    var _y1 = display_get_gui_height()/2 - 100;
    var _y2 = display_get_gui_height()/2 + 100;
    
    draw_set_colour(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(_x1, _y1, _x2, _y2, false);
    draw_set_alpha(1.0);
    
    var _x = display_get_gui_width()/2;
    var _y = display_get_gui_height()/2;
    
    draw_set_valign(fa_middle);
    draw_set_colour(c_white);
    draw_text(_x, _y, "Game Over!\n" + _strHiScore + "\nPress [Enter] to Restart...");
	
	if (gamepad_button_check(0, gp_face3))
	{
	room_restart();	
	}
	
}