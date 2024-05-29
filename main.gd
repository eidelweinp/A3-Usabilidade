extends Node2D

func _ready():
	Utils.saveGame()
	Utils.loadGame()

func _on_button_quit_pressed():
	$ButtonClickSound.play()
	await get_tree().create_timer(0.6).timeout
	get_tree().quit()
	

func _on_button_play_pressed():
	$ButtonClickSound.play()
	await get_tree().create_timer(0.6).timeout
	get_tree().change_scene_to_file("res://world.tscn")
