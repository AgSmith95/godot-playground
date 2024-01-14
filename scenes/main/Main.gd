extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_pressed():
	print("CLOSE button pressed")
	SaverLoader.save_game()
	get_tree().quit(0)
	pass # Replace with function body.


func _on_play_button_pressed():
	print("PLAY button pressed")
	get_tree().change_scene_to_file("res://scenes/play/play_scene.tscn")
	pass # Replace with function body.
