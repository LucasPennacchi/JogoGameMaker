draw_set_font(fnt_geral);
if (instance_exists(obj_personagem)){
	draw_text(100,150,string("Pontuacao atual: {0}",obj_personagem.dinheiro));
}
draw_text(100,100,string("Melhor pontuacao: {0}",melhor_score));
