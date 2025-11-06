extends Node2D

signal fightFinished(winner, loser)

func initialize(fights_fighters):
	for fighter in fights_fighters:
		fighter = fighter.instantiate()
		if fighter == FIGHTER:
			fighter.add_fighter()
		else:
			fighter.queue_free()

func finish_combat(winner,loser):
	fightFinished.emit(winner, loser)
		
