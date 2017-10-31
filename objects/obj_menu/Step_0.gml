/// @description Menu functions

var menuMove = gamepad_button_check_pressed(0, gp_padr) - gamepad_button_check_pressed(0, gp_padl);

global.numPlayers = clamp(global.numPlayers + menuMove, 1, 4);

if (gamepad_button_check_pressed(0, gp_start))
	room_goto_next();