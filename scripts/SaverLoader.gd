extends Node

# global constants
const SAVE_PATH := "user://save_data"


# global saved variables
var edit_string: String = "Hello World!"

# Called when the node enters the scene tree for the first time.
func _ready():
	load_game()
	pass # Replace with function body.


func save_game():
	var save_file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	save_file.store_pascal_string(edit_string)


func load_game():
	if not FileAccess.file_exists(SAVE_PATH):
		print("no save file ", SAVE_PATH)
		return
	
	var load_file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	edit_string = load_file.get_pascal_string()
