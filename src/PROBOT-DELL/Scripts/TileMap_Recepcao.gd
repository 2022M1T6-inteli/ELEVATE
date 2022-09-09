extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


#Verifica se o index[0] da lista que está no script Global está com ovisible true,
#caso esteja. Mostra o item 1 no inventário
func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
