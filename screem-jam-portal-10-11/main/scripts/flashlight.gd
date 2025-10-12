extends Node2D

var on := true

var battery = 100.0

@onready var point_light_2d: PointLight2D = $PointLight2D

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("flash"):
		on = not on
		if on:
			point_light_2d.show()
		else:
			point_light_2d.hide()

func _physics_process(delta: float) -> void:
	if on and battery >= 0 and point_light_2d.energy > 0:
		battery -= 0.03
		point_light_2d.energy = battery * 6 * 0.01
	else:
			if point_light_2d.energy <= 0:
				battery = 0
				point_light_2d.energy = 0
