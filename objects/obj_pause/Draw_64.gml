
if (global.pause) {
	var _largura = display_get_gui_width();
	var _altura = display_get_gui_height();
	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
    draw_rectangle(0,0,_largura,_altura,false);
	
	draw_set_alpha(1);
	draw_set_font(fnt_pause);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(_largura/2,_altura/2,"Pausado");
	
	draw_set_font(fnt_geral);
	
	for (var i = 0; i < op_max; i++){
	
		if (index == i){
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
		draw_text(_largura/2,_altura/2 + (80 * (i+1)), opcoes[i]);
	}

	draw_set_font(-1);
}


draw_set_color(c_white);





