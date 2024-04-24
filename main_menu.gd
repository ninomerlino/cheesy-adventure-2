extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$"ColorRect/AnimatedSprite2D".play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_play_pressed():
	pass # Replace with function body.


func _on_options_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	GlobalFunctions.exit_game()
