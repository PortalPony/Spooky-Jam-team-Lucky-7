extends Node2D


@export var spawn : String = "res://main/scenes/battery.tscn"



var instance
#var amountSpawned = 5
var scene 

func _ready() -> void:
	scene = load(spawn)


func _process(_delta: float) -> void:
	
	if get_child_count() >= 2:
		$Timer.paused = true
		
	else:
		$Timer.paused = false
		
func _on_timer_timeout() -> void:
	instance = scene.instantiate()

	#spawn where you are
	#instance.position.x += self.global_position.x
	#instance.position.y += self.global_position.y
	#spawn next to node
	add_child(instance)
