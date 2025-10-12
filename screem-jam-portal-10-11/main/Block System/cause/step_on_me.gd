extends Area2D

var switch = false

func _process(delta: float) -> void:
	if switch:
		$"..".action(1*delta) 


func _on_body_entered(body: Node2D) -> void:
	switch = true


func _on_body_exited(body: Node2D) -> void:
	switch = false
 # Replace with function body.
