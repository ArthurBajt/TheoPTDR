extends TextureRect

var playing: bool = false


func _gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			print("click")
