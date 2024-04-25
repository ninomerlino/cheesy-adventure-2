extends Control

@export var volume_show_percentage: ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready():
	volume_show_percentage.value = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_volume_up_pressed():
	volume_show_percentage.value += 10
	GlobalFunctions.set_master_volume_to(volume_show_percentage.value)


func _on_volume_down_pressed():
	volume_show_percentage.value -= 10 
	GlobalFunctions.set_master_volume_to(volume_show_percentage.value)


func _on_main_menu_pressed():
	var level = GlobalFunctions.get_game_scene(GlobalFunctions.GameScene.MainMenu).instantiate()
	replace_by(level)
