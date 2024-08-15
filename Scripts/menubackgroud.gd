extends Sprite2D

var tickNumber = 0

@export var selectColor = Color(1,1,1)
@export var deselectColor = Color(0.3,0.3,0.3)


# Called when the node enters the scene tree for the first time.
func _ready():
	tickNumber = tickNumber + 1
	$Play.self_modulate = selectColor 
	$Help.self_modulate = deselectColor
	$Like.self_modulate = deselectColor
	$Exit.self_modulate = deselectColor
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
			
func _on_dial_one_tick():
	tickNumber = tickNumber + 1
	if tickNumber > 4:
		tickNumber = 1
	print(tickNumber)
	
	if tickNumber == 1:
	
		$Play.self_modulate = selectColor 
	else:
		$Play.self_modulate = deselectColor
	
	if tickNumber == 2:
	
		$Help.self_modulate = selectColor 
	else:
		$Help.self_modulate = deselectColor

	if tickNumber == 3:
	
		$Like.self_modulate = selectColor 
	else:
		$Like.self_modulate = deselectColor
		
	if tickNumber == 4:
	
		$Exit.self_modulate = selectColor
	else:
		$Exit.self_modulate = deselectColor

func _input(event):
	if Input.is_action_just_pressed("oneClick"):
		
		if tickNumber == 1:
			print("Go to level 1")
			get_tree().change_scene_to_file("res://Levels/level01.tscn")
		elif tickNumber == 2:
			print("Go to tutorial")
			get_tree().change_scene_to_file("res://Levels/level0.tscn")
		elif tickNumber == 3:
			print("Go to Fanpage")
			OS.shell_open("http://godotengine.org")
			get_tree().quit()
		elif tickNumber == 4:
			print("Exit")
			get_tree().quit()
