extends PointLight2D



var alphaLighting : float


func _process(delta: float) -> void:
	alphaLighting = Inventory.batteriesLife/100

	self.color.a = alphaLighting
