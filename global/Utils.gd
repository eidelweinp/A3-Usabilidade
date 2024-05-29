extends Node

const SAVE_PATH = "res://savegame.bin" #put users instead of res if you are releasing the game

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	#create a dictionary
	var data: Dictionary = {
		"playerHP": Game.playerHP,
		"gold": Game.gold,
	}
	#save as a JSON file
	var jstr = JSON.stringify(data)
	file.store_line(jstr)


func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				Game.playerHP = current_line["playerHP"]
				Game.gold = current_line["gold"]
	
