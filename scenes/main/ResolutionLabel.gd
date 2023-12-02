extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	var window_size = DisplayServer.window_get_size(0)
	self.text = str(window_size.x) + " X " + str(window_size.y)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
