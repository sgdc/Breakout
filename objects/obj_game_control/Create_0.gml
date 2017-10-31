/// @description Make players
for (var i = 0; i < global.numPlayers; i++) {
	gamepad_set_axis_deadzone(i, .35);
	
	player = instance_create_depth((i + 1) * room_width / (global.numPlayers + 1), room_height - 32, 0, obj_paddle);
	player.playerNum = i;
}