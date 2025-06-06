if (sprite_index == spr_inimigo_atacando_1){
	atacando = false;
	em_recarga = true;
	hitbox_ataque = false;
	
	if (instance_exists(ataque)) instance_destroy(ataque);
	
	
	alarm[0] = room_speed * tempo_recarga;
}