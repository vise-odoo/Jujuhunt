if (keyboard_check_pressed(ord("D"))) {
sprite_index = spr_chasseur_marche_g;
image_xscale = 0.2;
}

if (keyboard_check_pressed(ord("Q"))) {
sprite_index = spr_chasseur_marche_d;
image_xscale = -0.2;
}

if (keyboard_check(ord("D"))) {
	x = x + 4;
}
if (keyboard_check(ord("Q"))) {
	x = x - 4;
}

if (keyboard_check(ord("1"))) selec = 1;
if (keyboard_check(ord("2"))) selec = 2;
if (keyboard_check(ord("3"))) selec = 3;

if ( keyboard_check(vk_space) && balle_cooldown <= 0 && selec == 1 ) {
		instance_create_layer(x,y,"cal_inst",obj_balle);
		balle_cooldown = 25;
}

if ( keyboard_check(vk_space) && missile_cooldown <= 0 && selec == 2 ) {
		instance_create_layer(x,y,"cal_inst",obj_missile);
		missile_cooldown = 170;
}

if ( keyboard_check(vk_space) && laser_cooldown <= 0 && selec == 3) {
		obj_laser.x = x;
		laser_cooldown = 340;
}

if oeuf_cooldown <= 0 {
	instance_create_layer(random_range(70,1300),random_range(75,500),"cal_inst",obj_oeuf)
	oeuf_cooldown = random_range(150,300);
}

if plume_cooldown <= 0 {
	instance_create_layer(random_range(70,1300),random_range(75,500),"cal_inst",obj_plume)
	plume_cooldown = random_range(500,750);
}

plume_cooldown -= 1 ;
oeuf_cooldown -= 1 ;
balle_cooldown -= 1 ;
laser_cooldown -= 1;
missile_cooldown -= 1;

if keyboard_check(vk_nokey) sprite_index = spr_chasseur_idle;