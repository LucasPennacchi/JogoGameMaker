
repeat(spawn_per_batch){
	var _spawnX = x + (random(range_max) * (random(2)-1));
	var _spawnY = y + (random(range_max) * (random(2)-1));
	while (point_distance(x,y,_spawnX,_spawnY) < range_min){
		_spawnX = x + (random(range_max) * (random(2)-1));
		_spawnY = y + (random(range_max) * (random(2)-1));
	}
	if (instance_number(spawn) < max_count){
		instance_create_layer(_spawnX, _spawnY, "Instances", spawn );
	}
}
alarm[0] = room_speed * spawn_speed;