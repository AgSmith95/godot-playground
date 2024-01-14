extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_main_menu_button_pressed():
	print("MAIN MENU button pressed")
	get_tree().change_scene_to_file("res://scenes/main/main.tscn")
	pass # Replace with function body.



func _on_text_edit_ready():
	var te = $TextEdit
	te.text = SaverLoader.edit_string
	pass # Replace with function body.


func _on_text_edit_text_changed():
	SaverLoader.edit_string = $TextEdit.text
	pass # Replace with function body.
