extends  PAWN

@export var actor : PackedScene


var grid_size
@onready var parent = get_parent()

func _ready():
	grid_size = parent.tile_set.tile_size.x

func _process(_float):
	var input_direction = get_input_direction()
	
	var pos = parent.request_move(self, input_direction)
	if pos:
		move(pos)


func get_input_direction():
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)

func move(pos):
	var direction = (Vector2(pos) - position).normalized()
	var tween := create_tween()
	tween.set_ease(Tween.EASE_IN)
	var end = position + direction * grid_size
	tween.tween_property($".", "position", end, 1)
	
	await tween.finished
