if (instance_exists(alvo)){
	x = alvo.x + mod_x;
	y = alvo.y + mod_y;
	
	image_xscale = abs(alvo.image_xscale);
	image_yscale = abs(alvo.image_yscale);
} else {
	instance_destroy();
}