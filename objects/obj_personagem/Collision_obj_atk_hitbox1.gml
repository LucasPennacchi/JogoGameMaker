if (other.grupo == 1 && !invulneravel && instance_exists(other.alvo)){
	invulneravel = true;
	vida -= other.alvo.dano;
	alarm[3] = room_speed * tempo_invulneravel;
}
