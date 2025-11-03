class_name PAWN
extends Node2D

enum pawnType {CHARACTER, ITEM, HAZZARD}

@export var type : pawnType = pawnType.CHARACTER

var active = true: set = set_active

func set_active(value):
	active = value
	set_process(value)
	set_process_input(value)
