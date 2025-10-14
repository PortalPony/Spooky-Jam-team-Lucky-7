extends CharacterBody2D

@export var speed = 200

var input_direction = Vector2(0,0)

func _input(event: InputEvent) -> void:
	input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	
	move_and_slide()
	look_at(get_global_mouse_position())
	rotation += deg_to_rad(-90)
