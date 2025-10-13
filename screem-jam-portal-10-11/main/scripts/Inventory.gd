
extends Node


var breakerBox = 10

var batteries = 0

func _process(delta: float) -> void:
	if breakerBox > 101:
	
		breakerBox = 101
	if breakerBox > 0:
		breakerBox -= delta
	elif breakerBox < 0:
		breakerBox = 0
