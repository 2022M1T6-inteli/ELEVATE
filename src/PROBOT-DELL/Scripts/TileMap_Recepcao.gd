extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


#Verifica se o index[0] da lista que está no script Global está com ovisible true,
#caso esteja. Mostra o item 1 no inventário
func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 
	if Global.Inventario_Itens[0] == false:
		$Inventario/Inventariopng/PenDrive.visible= false 
	if Global.Inventario_Itens[1] == true:
		$Inventario/Inventariopng/RAM.visible= true 
	if Global.Inventario_Itens[1] == false:
		$Inventario/Inventariopng/RAM.visible= false 
	Global.contador = 1


#	pass
