

if (!parado) {
	if (instance_exists(alvo)){
		
		caminho(alvo, distance_to_object(alvo) > alcance_ataque && !atacando);

		if (distance_to_object(alvo) <= alcance_ataque) {
			if (!atacando && !em_recarga){
				parado = true;
				alarm[1] = room_speed * 0.5;
			}	
		}
	}
}

if (atacando && instance_exists(ataque)){
	if (ataque.image_angle > 90 && ataque.image_angle < 270 ){
		image_xscale = -size;
	} else {
		image_xscale = size;
	}
}

if (velh != 0 && !atacando) {
	image_xscale = sign(velh)*size;
}
if (atacando) {
	sprite_index = spr_inimigo_atacando_1;
} else {
	if (velh != 0 || velv != 0) {
		sprite_index = spr_inimigo_andando_1;
	} else {
		sprite_index = spr_inimigo_parado_1;
	}
}

#region CONTROLE VIDA

if (vida > vida_maxima) {
	vida = vida_maxima;
}
if (vida < 0) {
	vida = 0;
}

if (instance_exists(obj_personagem) && distance_to_object(obj_personagem) > 2000) tempo_despawn = 0;

if (vida == 0 || tempo_despawn == 0){
	instance_destroy();
}

#endregion

image_alpha = invulneravel? 0.7 : 1;

if (sprite_index == spr_inimigo_atacando_1 && image_index >= 3 && !hitbox_ataque && atacando) {
	hitbox_ataque = true;
	ataque = instance_create_depth(x,y,20,obj_atk_hitbox1);
	ataque.image_angle = point_direction(x,y,alvo.x,alvo.y);
	ataque.alvo = id;
	ataque.grupo = grupo;
	ataque.mod_y = 32;
}





