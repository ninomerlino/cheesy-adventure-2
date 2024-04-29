extends Label

var default_text = "Cheese Adventure 2"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func switch_case(letter: String) -> String:
	match letter:
		'C':
			return 'c'
		'h':
			return 'H'
		'e':
			return 'E'
		's':
			return 'D'
		'A':
			return 'a'
		'd':
			return 'D'
		'v':
			return 'V'
		'n':
			return 'N'
		't':
			return 'T'
		'r':
			return 'R'
		'u':
			return 'U'
		'2':
			return '2'
		' ':
			return ' '
		_:
			return '?'

func change_text():
	var new_text = default_text
	var i = randi_range(0,default_text.length()-1)
	var j = randi_range(0,default_text.length()-1)
	new_text[i] = switch_case(new_text[i])
	new_text[j] = switch_case(new_text[j])
	text = new_text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_timer_timeout():
	change_text()
