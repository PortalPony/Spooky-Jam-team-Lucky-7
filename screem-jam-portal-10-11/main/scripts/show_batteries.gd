extends Label

func _process(delta: float) -> void:
	text = str(Inventory.batteries) + " batteries"
	print_debug(Inventory.batteries)
