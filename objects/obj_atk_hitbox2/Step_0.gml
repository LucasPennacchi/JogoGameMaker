move_dir = image_angle;

var _velocidade = velc;

velh = lengthdir_x(_velocidade, move_dir);
velv = lengthdir_y(_velocidade, move_dir);

x += velh;
y += velv;

if (perfurar <= 0 || tempo_despawn <= 0) instance_destroy();