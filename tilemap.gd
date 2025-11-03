extends TileMapLayer

enum CellType { ACTOR, OBSTACLE, OBJECT }

func _ready():
	pass
		
		
func request_move(pawn, direction:Vector2i):
	var cell_start = local_to_map(pawn.position)
	var cell_target = cell_start + direction
