if (sprite_index == spr_arma_aliado_atacando){
	if (instance_exists(alvo))
	with(alvo){
		atacando = false;
		em_recarga = true;
		alarm[0] = room_speed * tempo_recarga;
		
		
		ataque = instance_create_depth(x,y,0,obj_atk_hitbox2);
		if (instance_exists(alvo2)){
			ataque.image_angle = point_direction(x,y,alvo2.x,alvo2.y);
		} else {
			ataque.image_angle = 0;
		}
		ataque.alvo = id;
		ataque.grupo = grupo;
		
		velc = 3;
	}
}