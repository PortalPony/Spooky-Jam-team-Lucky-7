extends Sprite2D



func _process(delta: float) -> void:
	look_at(get_parent().velocity +global_position)
