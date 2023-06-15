extends DeltascriptTag

func _get_tag_identifier():
	return "char"

func _line_start():
	event_player.set_event_metadata("Speaker", arguments[0])
