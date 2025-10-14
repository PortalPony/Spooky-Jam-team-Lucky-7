extends Node2D


var spawn  = preload("res://main/scenes/breaker_box.tscn")


 

func _ready() -> void:
	$Timer.start(0.01)


func _process(_delta: float) -> void:
	if get_child_count() < 2:
		$Timer.start(0)
func _on_timer_timeout() -> void:
	var scenin = spawn.instantiate()
	add_child(scenin)
