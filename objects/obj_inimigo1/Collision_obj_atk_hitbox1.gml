if (other.grupo == 0 && !invulneravel && instance_exists(other.alvo)){
	invulneravel = true;
	vida -= other.alvo.dano;
	alarm[2] = room_speed * tempo_invulneravel;
}
