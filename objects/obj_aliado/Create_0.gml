depth = 4;

loja = instance_create_depth(x,y,0,obj_interacao);
loja.alvo = id;

alvo = -1;
alvo2 = -1;

arma = instance_create_depth(x,y,3,obj_aliado_arma);
arma.alvo = id;

vida_maxima = 2;
vida = vida_maxima;

dano = 1;
atacando = false;
em_recarga = false;
tempo_recarga = 0.3;
ataque = obj_atk_hitbox1;

velc = 3;
velh = 0;
velv = 0;

alcance_ataque = 300;
alcance_seguir = 50;

grupo = 0;

path = path_add();

invulneravel = false;
tempo_invulneravel = 1;

tempo_despawn = 100;
tempo_despawn_total = tempo_despawn;
