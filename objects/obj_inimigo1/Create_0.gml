depth = 4;

alvo = obj_personagem;

vida_maxima = 2;
vida = vida_maxima;

dano = 1;
atacando = false;
em_recarga = false;
tempo_recarga = 1;
ataque = obj_atk_hitbox1;

velc = 2;
velh = 0;
velv = 0;

alcance_ataque = 10;

grupo = 1;

path = path_add();

parado = false;

invulneravel = false;
tempo_invulneravel = 1;

tempo_despawn = 60;
alarm[4] = room_speed * 1;