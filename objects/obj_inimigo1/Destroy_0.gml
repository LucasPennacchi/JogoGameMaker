if (!tempo_despawn == 0){
	var _drop = instance_create_depth(x,y,0,obj_dinheiro);
	_drop.dinheiro = int64(random(5)) + 1;
	if (round(random_range(1,100)) <= 10){
		instance_create_depth(x,y,0,obj_carne);
	}
	if (instance_exists(obj_score)){
		obj_score.pontuacao += 1;
	}
}