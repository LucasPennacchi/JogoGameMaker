
if (instance_exists(obj_personagem))
{
	
	if (distance_to_object(obj_personagem) < 150) draw_set_color(c_red);
	draw_text(x,y-60,dinheiro);
	draw_set_color(c_white)
}