if (sprite_index == spr_personagem_atacando) {
	atacando = 0;
	ataque_recarga = 1;
	if(instance_exists(ataque)) {
		instance_destroy(ataque);
	}
	alarm[0] = room_speed * 1;
}