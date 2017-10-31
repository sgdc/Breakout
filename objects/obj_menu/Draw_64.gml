/// @description Draw menu

var width = display_get_gui_width();
var height = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(c_red);
draw_set_font(fnt_menu);

draw_text(width / 2, height / 3, "HOLLOWEEN BREAKOUT");
draw_text(width / 2, height / 2 - 32, "Press Start!");
draw_text(width / 2, height / 2 + 64, "Number of players\n(change with dpad)");
draw_text(width / 2, height / 2 + 146, global.numPlayers);