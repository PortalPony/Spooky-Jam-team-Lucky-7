extends Area2D





func _on_body_entered(body: Node2D) -> void:
	Inventory.batteries += 1
	queue_free()
