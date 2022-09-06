extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.NPCAzul_visible == false:
		$NPC_Azul/Area2D.visible= true
	elif Global.NPCAzul_visible == true:
		$NPC_Azul/Area2D.visible= false
	
func _process(delta):
	pass
	


