if (!instance_exists(alvo)){
	instance_destroy();
} else {
	x = alvo.x;
	y = alvo.y;
	
	image_xscale = alvo.image_xscale;
	image_yscale = alvo.image_yscale;
	
	if (alvo.atacando){
		sprite_index = spr_arma_aliado_atacando;
	} else {
		sprite_index = spr_arma_aliado_idle;
	}
}