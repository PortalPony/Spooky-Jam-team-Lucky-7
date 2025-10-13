extends Label

@export var kill_parent: Node2D



func _process(delta: float) -> void:
	text = str(kill_parent.hp) + " hp"
