var _alvo = obj_personagem;
if (instance_exists(_alvo) && distance_to_object(_alvo) <= 60){
	x = lerp(x,_alvo.x,0.15);
	y = lerp(y,_alvo.y,0.15);
}