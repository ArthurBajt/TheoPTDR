extends TextureRect

var playing: bool = false setget setPlaying
export(AudioStreamOGGVorbis) var son

onready var player = $AudioStreamPlayer


func _ready():
	self.player.stream = self.son


func _gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			self.setPlaying( !self.playing )


func _on_AudioStreamPlayer_finished():
	self.setPlaying(false)


func setPlaying(val: bool):
	playing = val
	if playing:
		self.play()
	else:
		self.stop()


func play():
	print("on joue l'audio")
	pass


func stop():
	print("on stop l'audio")
	pass



