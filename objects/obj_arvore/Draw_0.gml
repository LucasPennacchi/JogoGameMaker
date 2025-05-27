image_alpha = 1;
draw_sprite(spr_tronco,0,x,y);

if (instance_exists(obj_personagem) && distance_to_object(obj_personagem) <= 10){
	image_alpha = obj_personagem.y < y ? 0.5 : 1;
} else {
	image_alpha = 1;
}

draw_self();