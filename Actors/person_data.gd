extends Resource

class_name PersonData

@export var name : String
@export var description : String
@export var icon : Texture2D

func _init(p_name : String = "", p_description : String = "", p_icon : Texture2D = Texture2D.new()):
	name = p_name
	description = p_description
	icon = p_icon
