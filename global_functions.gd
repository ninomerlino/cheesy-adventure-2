extends Node

enum GameScene {
	MainMenu,
	Options,
}

var master_audio_bus_index: int

func log10(value: float) -> float:
	return log(value)/log(10.0)
	
func get_game_scene(scene: GameScene) -> PackedScene:
	match scene:
		GameScene.MainMenu:
			return load("res://main_menu.tscn")
		GameScene.Options:
			return load("res://options.tscn")
		_:
			push_error("Scene %s not found" % scene)
			return load("res://main_menu.tscn")

#Set master volume to x% where x is an float between 0.0 and 100.0
func set_master_volume_to(percentage: float):
	percentage = clampf(percentage, 0.0, 100.0)
	var decibel = 20 * log10(percentage/100.0)
	if percentage == 0.0:
		AudioServer.set_bus_mute(master_audio_bus_index, true)
	else:
		if AudioServer.is_bus_mute(master_audio_bus_index):
			AudioServer.set_bus_mute(master_audio_bus_index, false)
		AudioServer.set_bus_volume_db(master_audio_bus_index, decibel)
	

#Exit the game
func exit_game():
	get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready():
	master_audio_bus_index = AudioServer.get_bus_index("Master")

