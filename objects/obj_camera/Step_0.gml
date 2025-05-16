if (instance_exists(alvo)){
	x = lerp(x, alvo.x - cam_largura/2, velc);
	y = lerp(y, alvo.y - cam_altura/2, velc);
	
	x = clamp(x, 0, room_width - cam_largura);
	y = clamp(y, 0, room_height - cam_altura);
	
	camera_set_view_pos(view_camera[0],x,y);
	
} else {
	alvo = -1;
}
