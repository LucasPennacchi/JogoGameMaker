#region PLAYER INPUTS
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));
var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _move_key = ((_key_down - _key_up != 0) || (_key_right - _key_left != 0));

var _attack_key = mouse_check_button(mb_left);
#endregion

#region MOVEMENT
move_dir = point_direction(0,0,(_key_right - _key_left), (_key_down - _key_up));

if (atacando == 1) {
	velh = 0;
	velv = 0;
} else {
	velh = lengthdir_x(velc * _move_key, move_dir);
	velv = lengthdir_y(velc * _move_key, move_dir);
}
colisao(obj_parede);

x += velh;
y += velv;
#endregion

#region ANIMATION

if (velh != 0) {
	image_xscale = sign(velh);
}

if (atacando == 1) {
	sprite_index = spr_personagem_atacando;
} else {
	if (_move_key) {
		sprite_index = spr_personagem_andando;
	} else {
		sprite_index = spr_personagem;
	}
}

#endregion

#region ATTACK

if (atacando == 0 && _attack_key && ataque_recarga == 0) {
	image_index = 0;
	atacando = 1;
	instance_create_depth(x,y+32,0,ataque);
}

#endregion