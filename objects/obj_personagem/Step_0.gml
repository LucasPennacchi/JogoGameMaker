#region PLAYER INPUTS
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));
var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));

var _move_key = ((_key_down - _key_up != 0) || (_key_right - _key_left != 0));

var _key_atk = mouse_check_button(mb_left);
var _key_auto_atk = keyboard_check_pressed(ord("C"));
#endregion
if (_key_auto_atk) auto_ataque = !auto_ataque;

#region MOVEMENT
move_dir = point_direction(0,0,(_key_right - _key_left), (_key_down - _key_up));

var _velocidade = velc;
if (atacando) _velocidade = velc/1.2;
if (morrendo) _velocidade = 0;


velh = lengthdir_x(_velocidade * _move_key, move_dir);
velv = lengthdir_y(_velocidade * _move_key, move_dir);

colisao(obj_colisao);

x += velh;
y += velv;
#endregion

#region ANIMATION

if (!morrendo) image_alpha = invulneravel? 0.7 : 1;

if (velh != 0 && !atacando) {
	image_xscale = sign(velh) * size;
}
if (atacando){
	if (ataque.image_angle > 90 && ataque.image_angle < 270 ){
		image_xscale = -1 * size;
	} else {
		image_xscale = 1 * size;
	}
}

if (!morrendo){
	if (atacando) {
		if (combo) {
		    sprite_index = spr_personagem_combo;
		}
		else {
		    sprite_index = spr_personagem_atacando;
		}
	} else {
		if (_move_key) {
			sprite_index = spr_personagem_andando;
		} else {
			sprite_index = spr_personagem_parado;
		}
	}
}

#endregion

#region CONTROLE VIDA

if (vida > vida_maxima) {
	vida = vida_maxima;
}
if (vida < 0) {
	vida = 0;
}

if (vida == 0 && !morrendo){
	image_index = 0;
	sprite_index = spr_caveira;
	image_alpha = 1;
	morrendo = true;
}

#endregion

#region ATAQUE

if (!morrendo && !atacando && !em_recarga && (auto_ataque? true : _key_atk)){ //comeca atk
	if (combo) alarm[1] = -1;
	
	image_index = 0;
	atacando = true;
	
	ataque = instance_create_depth(x,y,20,obj_atk_hitbox1);
	if (auto_ataque){
		if (instance_exists(obj_inimigo1)){
			ataque.image_angle = point_direction(x,y,instance_nearest(x,y, obj_inimigo1).x,instance_nearest(x,y, obj_inimigo1).y)
		} else {
			ataque.image_angle = 0;
		}
	} else {
		ataque.image_angle = point_direction(x,y,mouse_x,mouse_y);
	}
	ataque.alvo = id;
	ataque.grupo = grupo;
	ataque.mod_y = 32;
}

if (combo && atacando){
	dano = 2;
} else {
	dano = 1;
}

#endregion

#region INTERACAO
var _key_interact = keyboard_check_pressed(ord("E"));
var _alvo_interacao = instance_nearest(x,y, obj_interacao);
if (distance_to_object(_alvo_interacao) <= 150 && _key_interact){
	if (instance_exists(_alvo_interacao.alvo)) {
		if (_alvo_interacao.dinheiro <= dinheiro) {
			dinheiro -= _alvo_interacao.dinheiro;
			instance_destroy(_alvo_interacao);
		}
	}
}


#endregion