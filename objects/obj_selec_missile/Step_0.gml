missile_cooldown = obj_chasseur.missile_cooldown;
selec = obj_chasseur.selec;

if selec != 2 {
	image_alpha = 0.3;
}

else {
	image_alpha = 1;
}

if (missile_cooldown <= 0) sprite_index = spr_selec_missile
else sprite_index = spr_reload_missile