size = random(2 - 0.7) + 0.7;

image_xscale = size;
image_yscale = size;

alvo = obj_personagem;

vida_maxima = 1 + size;
vida = vida_maxima;

velc = 2;
velh = 0;
velv = 0;

alcance_ataque = 30;

grupo = 1;

path = path_add();

parado = false;

invulneravel = false;
tempo_invulneravel = 0.5;

tempo_despawn = 20;
alarm[3] = room_speed * 1;

hitbox_ataque = false;

dano = 10 + 5 * (size/2);
atacando = false;
em_recarga = false;
tempo_recarga = 2;
ataque = obj_atk_hitbox1;
depth = 4;
