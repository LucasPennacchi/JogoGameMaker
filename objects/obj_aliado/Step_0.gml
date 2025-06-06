if (instance_exists(loja) && loja.alvo.id == id){
	
} else {
	if (instance_exists(obj_inimigo1)) alvo2 = instance_nearest(x,y,obj_inimigo1);
	if (instance_exists(alvo)){
		caminho(alvo, distance_to_object(alvo) > alcance_seguir);
	}
	if (distance_to_object(alvo2) <= alcance_ataque) {
		if (!atacando && !em_recarga){
			if (instance_exists(alvo2)){
				image_index = 0;
				atacando = true;
				velc = 1;
				if (point_direction(x,y,alvo2.x,alvo2.y) > 90 && point_direction(x,y,alvo2.x,alvo2.y) < 270 ){
					image_xscale = -1;
				} else {
					image_xscale = 1;
				}
			}
		}	
	}
	
	if (velh != 0 && !atacando) {
		image_xscale = sign(velh);
	}
	
	if (velh != 0 || velv != 0) {
		sprite_index = spr_aliado_andando;
	} else {
		sprite_index = spr_aliado_parado;
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

if (vida == 0 || tempo_despawn == 0){
	instance_destroy();
}

#endregion