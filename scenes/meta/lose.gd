extends Control


func _ready() -> void:
	Audio.play_music("res://music/fear.wav")
	UI.toggle_ui(false)

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/meta/title.tscn")
