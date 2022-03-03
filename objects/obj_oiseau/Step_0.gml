if (sprite_index != spr_ois_to_death) {
	
	if (keyboard_check(vk_right)) {
		x = x + 4;
		sprite_index = spr_ois_vol;
		image_angle = 0
	}
	if (keyboard_check(vk_left)) {
		x = x - 4;
		sprite_index = spr_ois_vol;
		image_angle = 180;
	}
	if (keyboard_check(vk_up)) {
		y = y - 4;
		sprite_index = spr_ois_vol;
		image_angle = 90;
	}
	if (keyboard_check(vk_down)) {
		y = y + 4;
		sprite_index = spr_ois_vol;
		image_angle = 270;
	}
	
	if (keyboard_check(vk_nokey)) {
		sprite_index = spr_ois_idle;
		image_angle = 0;
	}
}

if (sprite_index == spr_ois_to_death) {
	timer -= 1;
	if timer <= 0 {
		x = random_range(70,1300); 
		y = random_range(75,500);
		sprite_index = spr_ois_idle;
		timer = 125;
	}
	
}


