extends Camera2D

var is_dragging = false
var drag_start = Vector2()

var zoom_speed = 0.1
var min_zoom = 0.5
var max_zoom = 2.0

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if !is_dragging:
			is_dragging = true
			drag_start = get_local_mouse_position()
		else:
			var drag_end = get_local_mouse_position()
			var drag_vector = drag_start - drag_end
			offset += drag_vector
	else:
		is_dragging = false
