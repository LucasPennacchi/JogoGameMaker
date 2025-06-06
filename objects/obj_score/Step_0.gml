var _player = obj_personagem
global.cronometro += 1;
if (instance_exists(_player) && _player.vida == 0){
	pontuacao += int64(_player.dinheiro * 0.5);
	_player.dinheiro = 0;
	atualiza_score();
	pontuacao = 0;
	global.cronometro = 0;
}
atualiza_score();