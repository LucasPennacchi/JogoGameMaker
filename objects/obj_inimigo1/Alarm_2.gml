/// @description Atacando

image_index = 0;
atacando = true;
parado = false;
		
ataque = instance_create_depth(x,y,0,obj_atk_hitbox1);
ataque.image_angle = point_direction(x,y,alvo.x,alvo.y);
ataque.alvo = id;
ataque.mod_y = 32;

if (atacando){
	if (ataque.image_angle > 90 && ataque.image_angle < 270 ){
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}