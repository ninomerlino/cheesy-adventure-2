extends Control

@export var volume_show_percentage: ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_volume_up_pressed():
	volume_show_percentage.value += 10 


func _on_volume_down_pressed():
	volume_show_percentage.value -= 10 
