balle_cooldown = obj_chasseur.balle_cooldown;
selec = obj_chasseur.selec;

if selec != 1 {
	image_alpha = 0.3;
}

else {
	image_alpha = 1;
}

if (balle_cooldown <= 0) sprite_index = spr_selec_balle
else sprite_index = spr_reload_balle