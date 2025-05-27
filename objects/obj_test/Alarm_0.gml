
repeat(random(5)){
	var _range = 1000;
	var _spawnX = x + (random(_range) * (random(2)-1));
	var _spawnY = y + (random(_range) * (random(2)-1));
	while (place_meeting(_spawnX, _spawnY, obj_colisao) || point_distance(x,y,_spawnX,_spawnY) < 700){
		_spawnX = x + (random(_range) * (random(2)-1));
		_spawnY = y + (random(_range) * (random(2)-1));
	}	
	if (!place_meeting(_spawnX, _spawnY, obj_colisao) && !place_meeting(_spawnX - 5, _spawnY - 5, obj_colisao) && !place_meeting(_spawnX + 5, _spawnY + 5, obj_colisao)) instance_create_layer(_spawnX, _spawnY, "Instances", spawn );
}
alarm[0] = room_speed * 0.5;