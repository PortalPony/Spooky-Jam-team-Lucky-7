extends Node2D


@export var thing := "breakerBox"

func action(amount: int):
	# Get the current value of Inventory[thing] and add amount
	Inventory.set(thing, Inventory.get(thing) + amount)
	print_debug(Inventory.get(thing))
