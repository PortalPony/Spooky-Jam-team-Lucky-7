extends Node2D

func _process(delta: float) -> void:
	if Inventory.breakerBox > 0 and !$audios/lights_on.playing:
		$audios/lights_on.play()
		$audios/lights_off.playing = false
	elif Inventory.breakerBox <= 0 and !$audios/lights_off.playing:
		$audios/lights_on.playing = false
		$audios/lights_off.play()
