laser_cooldown = obj_chasseur.laser_cooldown;
selec = obj_chasseur.selec;

if selec != 3 {
	image_alpha = 0.3;
}

else {
	image_alpha = 1;
}

if (laser_cooldown <= 0) {
	sprite_index = spr_selec_laser;
	obj_laser.x = -60;
}
else sprite_index = spr_reload_laser