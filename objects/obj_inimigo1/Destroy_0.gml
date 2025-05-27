if (!tempo_despawn == 0){
	var _drop = instance_create_depth(x,y,0,obj_dinheiro);
	_drop.dinheiro = int64(random(10)) + 1;
	if (round(random_range(1,10)) == 1){
		instance_create_depth(x,y,0,obj_carne);
	}
}