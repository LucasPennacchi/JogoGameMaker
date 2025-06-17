draw_set_font(fnt_geral);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

var _largura = display_get_gui_width();
var _altura = display_get_gui_height();

for (var i = 0; i < op_max; i++){
	
	draw_text(_largura/2,_altura/2 + (80 * i), opcoes[i]);
	
}


draw_set_font(-1);