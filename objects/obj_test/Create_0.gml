spawn = obj_dinheiro;

repeat(random(7)){
	instance_create_layer( x + (random(500) * (random(2)-1)), y + (random(500) * (random(2)-1)), "Instances", spawn );
}