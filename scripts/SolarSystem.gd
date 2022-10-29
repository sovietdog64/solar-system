extends Node

var planets = Array()

func _ready():
	planets = get_tree().get_nodes_in_group("planets")

func _process(delta):
	for a in planets:
		print(a.translation)
