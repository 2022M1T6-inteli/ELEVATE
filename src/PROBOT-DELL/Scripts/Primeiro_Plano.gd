extends Node2D

#Verifica se o index[0] da lista que está no script Global está com ovisible true,
#caso esteja. Mostra o item 1 no inventário
func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 
	elif Global.Inventario_Itens[0] == false:
		$Inventario/Inventariopng/PenDrive.visible= false 
	Global.contador += 1

	
func _physics_process(_delta):
	print(Global.contador)
