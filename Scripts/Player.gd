extends Area2D

var badWave: PackedScene = preload("res://Tscns/bad_wave.tscn")
var resolutionTile = 128
@export var countdown = 14

signal one_click

signal one_tick

func _ready():
	#this starts the rotation timer
	$Timer.start()
	countdown = $"../CityBlocks".get_child_count()
	
func _on_timer_timeout():

	rotation_degrees = rotation_degrees + 90
	if rotation_degrees >= 360:
		rotation_degrees = 0
		
	one_tick.emit()
	$Click.play()
#this moves the character every click
func _unhandled_input(event):
	if Input.is_action_just_pressed("oneClick"):
		
		one_click.emit()
		
		#this instantiate a badwave tile
		var newTile = badWave.instantiate()
		add_sibling(newTile)
		newTile.position = position

#		this moves the player
		move_local_y(-resolutionTile)

		$Stomp.play()
