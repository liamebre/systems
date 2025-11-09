extends Node2D

signal fightFinished(winner, loser)

func initialize(fights_fighters):
	for fighter in fights_fighters:
		fighter = fighter.instantiate()
		if fighter == FIGHTER:
			fighter.add_fighter()
		else:
			fighter.queue_free()
	$UI.initialize()
	$turnOrder.initialize()

func finish_combat(winner,loser):
	fightFinished.emit(winner, loser)

func _on_combatant_death(combatant):
	var winner
	if not combatant.name == "Player":
		winner = $Combatants/Player
	else:
		for n in $Combatants.get_children():
			if not n.name == "Player":
				winner = n
				break
	finish_combat(winner, combatant)
		
