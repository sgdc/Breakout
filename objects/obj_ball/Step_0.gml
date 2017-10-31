/// @description Move ball

// Move horizontally
for (var i = 0; i < abs(hsp); i++) {
	x += sign(hsp);
	
	if (place_meeting(x, y, obj_wall) && bounceCooldown <= 0) {
		var brick = instance_place(x, y, obj_brick);
		if (brick != noone)
			instance_destroy(brick);
		
		hsp = -hsp;
		x += sign(hsp);
		bounceCooldown = maxBounceCooldown;
	}
}

// Move vertically
for (var i = 0; i < abs(vsp); i++) {
	y += sign(vsp);
	
	if (place_meeting(x, y, obj_wall) && bounceCooldown <= 0) {
		var brick = instance_place(x, y, obj_brick);
		if (brick != noone)
			instance_destroy(brick);
		
		vsp = -vsp;
		y += sign(vsp);
		bounceCooldown = maxBounceCooldown;
	}
}

bounceCooldown = max(bounceCooldown - 1, 0);