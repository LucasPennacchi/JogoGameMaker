if (instance_exists(obj_inimigo1)){
	if (other.alvo == obj_inimigo1.id && !invulneravel){
		invulneravel = true;
		vida -= other.alvo.dano;
		alarm[3] = room_speed * tempo_invulneravel;
	}
}