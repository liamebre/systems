extends Node2D


@export var combat_screen: Node
@export var exploration_screen: Node


func start_combat(combat_actors):
	remove_child($map)
	add_child($fight)
	combat_screen.initialize(combat_actors)
	combat_screen.show()
