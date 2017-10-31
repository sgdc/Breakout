/// @description Initialize values

spd = 7;

dir = random(90) + 45;

hsp = dcos(dir) * spd;
vsp = dsin(dir) * spd;

bounceCooldown = 0;
maxBounceCooldown = 2;

var image_scale = 32 / sprite_width;
image_xscale = image_scale;
image_yscale = image_scale;