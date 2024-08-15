extends Node2D

@export var thisLevel = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	GLOBAL.currentLevel = thisLevel
	print(GLOBAL.currentLevel)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_player_one_click():
	print("one click")

func _on_player_one_tick():
	print("one tick")
