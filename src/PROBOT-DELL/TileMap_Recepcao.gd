extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
