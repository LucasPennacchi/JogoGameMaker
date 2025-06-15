size = random(2 - 0.7) + 0.7 + 0.0001 * global.cronometro;
depth = 4;
alvo = obj_personagem;
vida_maxima = 1 + size;
vida = vida_maxima;
velc = 2;
alcance_ataque = 30;
grupo = 1;
dano = 10 + 5 * (size/2);
ataque = obj_atk_hitbox1;
tempo_recarga = 2;
tempo_despawn = 20;
alarm[3] = room_speed * 1;
tempo_invulneravel = 0.5;



image_xscale = size;
image_yscale = size;
velh = 0;
velv = 0;
path = path_add();
parado = false;
invulneravel = false;
hitbox_ataque = false;
atacando = false;
em_recarga = false;