extends Sprite2D
signal one_tick

# Called when the node enters the scene tree for the first time.
func _ready():

	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	rotation_degrees = rotation_degrees + 90
	if rotation_degrees >= 360:
		rotation_degrees = 0
		
	one_tick.emit()
	$Click.play()
