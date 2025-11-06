class_name FIGHTER
extends Node

signal turn_finished

@export var actor : PackedScene

@export var damage = 1 
@export var defense = 1

var active = false: set = set_active

func set_active(value):
	active = value
	set_process(value)
	set_process_input(value)

func attack(target):
	target.take_damage(damage)
	turn_finished.emit()

func defend():
	$Health.armor += defense
	turn_finished.emit()

func take_damage(damage_to_take):
	$Health.take_damage(damage_to_take)
