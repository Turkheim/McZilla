extends Area2D
@export var blockType = 1


func _ready():
	#this randomizes the tile type
	blockType = randi_range(1,4)
	
	if blockType == 1:
		$Tile.region_rect = Rect2(0,0,128,128)
	elif blockType == 2:
		$Tile.region_rect = Rect2(128,0,128,128)
	elif blockType == 3:
		$Tile.region_rect = Rect2(128,128,128,128)
	elif blockType == 4:
		$Tile.region_rect = Rect2(0,128,128,128)
		
func _on_area_entered(area):
	#this gets the player countdown, 
	%Player.countdown = %Player.countdown - 1 
	print(%Player.countdown)
	if  %Player.countdown == 0:
		get_tree().change_scene_to_file("res://Levels/WinMenu.tscn")
	queue_free()
