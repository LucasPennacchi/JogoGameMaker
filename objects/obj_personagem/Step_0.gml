#region PLAYER INPUTS
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));
var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _move_key = ((_key_down - _key_up != 0) || (_key_right - _key_left != 0));

var _interact_key = keyboard_check_pressed(ord("E"));
var _attack_key = keyboard_check(vk_space);
#endregion

var _velocity = velc;
image_speed = 14*_velocity;
		
move_dir = point_direction(0,0,(_key_right - _key_left), (_key_down - _key_up));
velh = lengthdir_x(_velocity * _move_key, move_dir);
velv = lengthdir_y(_velocity * _move_key, move_dir);

if(colisao(obj_inimigo)){
	lifes--;
	if(lifes<=0){
		visible=false;
		game_restart();
	}
}
		
colisao(obj_parede);
x += velh;
y += velv;
