extends Label



func _process(delta: float) -> void:
	text =str("%", int(Inventory.batteriesLife), "   Battery Life")
	
