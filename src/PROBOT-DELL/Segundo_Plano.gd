extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if $NPC_rosa/Area2D2.visible == false:
		$NPC_Azul/Area2D.visible= true
	elif $NPC_rosa/Area2D2.visible == true:
		$NPC_Azul/Area2D.visible= false


