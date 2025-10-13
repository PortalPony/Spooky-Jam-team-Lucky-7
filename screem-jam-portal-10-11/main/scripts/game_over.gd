extends Control

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("resart"):
		get_tree().change_scene_to_file("res://main/main_scene.tscn")
