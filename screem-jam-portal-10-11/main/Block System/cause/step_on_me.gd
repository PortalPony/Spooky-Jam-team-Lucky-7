extends Area2D

var switch = false

var amount = 1
func _process(delta: float) -> void:
	if switch:
		$"..".action(amount) 


func _on_body_entered(body: Node2D) -> void:
	switch = true


func _on_body_exited(body: Node2D) -> void:
	switch = false
 # Replace with function body.
