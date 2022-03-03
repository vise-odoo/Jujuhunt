if (keyboard_check(vk_space) && obj_chasseur.selec == 2 && obj_chasseur.missile_cooldown < 160 ) {
	instance_destroy();
	instance_create_layer(x,y,"cal_inst",obj_missileb);
	instance_create_layer(x,y,"cal_inst",obj_missileh);
	instance_create_layer(x,y,"cal_inst",obj_missiled);
	instance_create_layer(x,y,"cal_inst",obj_missileg);
}