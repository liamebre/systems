extends Node

signal dead
signal health_changed(life)

@export var life = 10
@export var max_life = 10
@export var base_armour = 0 
var armour = 0

func _ready():
	armour = base_armour
	
func take_damage(damage):
	life = life - (damage - armour)
	if life <= 0:
		dead.emit()
	else:
		health_changed.emit(life)
		
func heal(amount):
	life += amount
	life = clamp(life, life, max_life)
	health_changed.emit(life)


func get_health_ratio():
	return life / max_life
		
