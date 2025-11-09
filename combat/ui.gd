extends Control

@export var fighters_node: Node
@export var info_scene: PackedScene

func initialize():
	for fighter in fighters_node.get_children():
		var health = fighter.get_node("health")
		var info = info_scene.instantiate()
		var health_info = info.get_node("VBoxContainer/VBoxContainer/ProgressBar")
		health_info.value = health.life
		health_info.max_value = health.max_life
		info.get_node("VBoxContainer/CenterContainer/Label").text = fighter.name
		health.health_changed.connect(health_info.set_value)
		$fighters.add_child(info)

func _on_attack_button_down() -> void:
	pass # Replace with function body.

func _on_defend_button_down() -> void:
	pass # Replace with function body.

func _on_run_button_down() -> void:
	pass # Replace with function body.
