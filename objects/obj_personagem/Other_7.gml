if (sprite_index == spr_personagem_atacando){
	atacando = false;
	em_recarga = true;
	
	if (instance_exists(ataque)) instance_destroy(ataque);
	
	alarm[0] = room_speed * tempo_recarga;
	
	combo = true;
	alarm[1] = room_speed * combo_timer;
}

if (sprite_index == spr_personagem_combo){
	atacando = false;
	em_recarga = true;
	
	if (instance_exists(ataque)) instance_destroy(ataque);
	
	alarm[0] = room_speed * tempo_recarga;
	
	combo = false;
}

if (sprite_index == spr_caveira){
	room_restart();
}
