repeat(spawn_per_batch){
	var _spawnX = x + random(rangex_max);
	var _spawnY = y + random(rangey_max);
	
	if (instance_number(spawn) < max_count){
		instance_create_layer(_spawnX, _spawnY, "Instances", spawn );
	} 
}
alarm[0] = room_speed * spawn_speed;