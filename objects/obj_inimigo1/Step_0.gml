if (!parado){
	if (instance_exists(alvo)){
		
		caminho(alvo, distance_to_object(alvo) > alcance_ataque && !atacando);

		if (distance_to_object(alvo) <= alcance_ataque) {
			if (!atacando && !em_recarga){
				parado = true;
				alarm[2] = room_speed * 0.5;
			}	
		}
	}
	
	
	if (velh != 0 && !atacando) {
		image_xscale = sign(velh);
	}

	if (atacando){
		sprite_index = spr_inimigo_atacando_1;
	} else {
		if (velh != 0 || velv != 0) {
			sprite_index = spr_inimigo_andando_1;
		} else {
			sprite_index = spr_inimigo_parado_1;
		}
	}
}

image_alpha = invulneravel? 0.7 : 1;

#region CONTROLE VIDA

if (vida > vida_maxima) {
	vida = vida_maxima;
}
if (vida < 0) {
	vida = 0;
}

if (vida == 0){
	instance_destroy();
}

#endregion