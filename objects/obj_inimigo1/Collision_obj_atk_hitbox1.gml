if (instance_exists(obj_personagem)){
	if (other.alvo == obj_personagem.id && !invulneravel){
		invulneravel = true;
		vida -= other.alvo.dano;
		alarm[3] = room_speed * tempo_invulneravel;
	}
}