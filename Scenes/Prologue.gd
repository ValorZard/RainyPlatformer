extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Deltascript.play_event(load("res://Dialogue/Events/prologue_event_C.res"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
