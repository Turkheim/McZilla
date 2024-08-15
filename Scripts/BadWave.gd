extends Area2D

var margin = Vector2 (1,1)
var playerPos 
var canKill = false

func _ready():
	#this avoids this tile to kill the player when they instanciate this tile
	$TimerBadWave.start
func _on_timer_bad_wave_timeout():
	canKill = true


func _on_area_entered(area):
	if canKill == true:
		get_tree().change_scene_to_file("res://Levels/LoseMenu.tscn")
