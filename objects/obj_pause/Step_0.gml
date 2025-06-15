var _pausa = keyboard_check_pressed(vk_escape);
if (_pausa) {
	global.pause = !global.pause;
	if (global.pause) {
		surface_set_target(surface_create(display_get_gui_width(),display_get_gui_height()));
		draw_surface(application_surface,0,0);
		surface_reset_target();
	}
}

if (global.pause){
	instance_deactivate_all(true);
} else {
	instance_activate_all();
}