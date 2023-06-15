extends Control

class_name DialogueBox

var name_label : String
var word_text : String
# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/VBoxContainer/Name.text = name_label
	$Panel/VBoxContainer/Dialogue.text = word_text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
