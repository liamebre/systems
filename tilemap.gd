extends TileMapLayer

enum CellType { ACTOR, OBSTACLE, OBJECT }

func _ready():
	pass
		
		
func request_move(pawn, direction:Vector2i):
	var cell_start = local_to_map(pawn.position)
	var cell_target = cell_start + direction
	return map_to_local(cell_target)
	
	#var cell_tile_id = get_cell_source_id(cell_target)
	#match cell_tile_id:
	#	-1:
	#		set_cell( cell_target, CellType.ACTOR, Vector2i.ZERO)
	#		set_cell( cell_start, -1, Vector2i.ZERO)
	#		
