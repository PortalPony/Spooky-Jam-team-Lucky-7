extends CharacterBody2D
@export var target = Node2D


func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	if target:
		look_at(target.global_position)
		position += Vector2.RIGHT.rotated(rotation) * 100 * delta
		move_and_slide()
		pass
