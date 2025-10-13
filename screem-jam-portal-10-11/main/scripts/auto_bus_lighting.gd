extends DirectionalLight2D



var alphaLighting : float


func _process(delta: float) -> void:
	alphaLighting = Inventory.breakerBox/100

	self.color.a = alphaLighting
