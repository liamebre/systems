extends Node2D


@export var combat_screen: Node
@export var exploration_screen: Node


func start_combat():
	remove_child($map)
	add_child($fight)
	combat_screen.show()
