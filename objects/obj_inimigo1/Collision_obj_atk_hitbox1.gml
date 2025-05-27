if (other.grupo == 0 && !invulneravel){
	invulneravel = true;
	vida -= other.alvo.dano;
	alarm[3] = room_speed * tempo_invulneravel;
}
