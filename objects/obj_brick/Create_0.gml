/// @description Choose color

rand = random(3);

if (rand < 1)
	sprite_index = spr_block1;
else if (rand < 2)
	sprite_index = spr_block2;
else
	sprite_index = spr_block3;