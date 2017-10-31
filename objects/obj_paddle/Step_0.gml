/// @description Control paddle

dir = gamepad_axis_value(playerNum, gp_axislh);

if (dir == 0) {
	if (gamepad_button_check(playerNum, gp_padl))
		dir += -1;
	if (gamepad_button_check(playerNum, gp_padr))
		dir += 1;
}

if (dir == 0 and playerNum == global.numPlayers - 1) {
	if (keyboard_check(vk_left))
		dir += -1;
	if (keyboard_check(vk_right))
		dir += 1;
}

for (var i = 0; i < spd; i++) {
	if (!place_meeting(x + dir, y, obj_wall))
		x += dir;
}

// Restart game if no balls
if (!instance_exists(obj_ball))
	room_restart();