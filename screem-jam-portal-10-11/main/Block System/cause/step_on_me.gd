extends Area2D

var switch = false


var selfTimer = 0
var amount = 1
@export var oneshot = false
func _process(delta: float) -> void:
	if switch:

		
		selfTimer -= delta
		if selfTimer <= 0:
			
			if oneshot:
				$"..".action(amount)
				queue_free()
			
			selfTimer += 1
			$"..".action(amount) 
			

func _on_body_entered(body: Node2D) -> void:
	switch = true


func _on_body_exited(body: Node2D) -> void:
	
	switch = false
 # Replace with function body.
