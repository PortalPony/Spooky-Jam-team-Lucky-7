extends Node2D


@export var thing: String = "res://main/main_scene.tscn"

func action(amount: int) -> void:
	call_deferred("_do_scene_change")

func _do_scene_change() -> void:
	print_debug(get_tree())
	get_tree().change_scene_to_file(thing)
	
