extends Node2D


func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 

	
func _physics_process(delta):
	pass
