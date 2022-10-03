extends Node2D

onready var smokeanim= $Fumacasembg

#Verifica se o index[0] da lista que está no script Global está com ovisible true,
#caso esteja. Mostra o item 1 no inventário
func _ready():
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 
	elif Global.Inventario_Itens[0] == false:
		$Inventario/Inventariopng/PenDrive.visible= false 
	
	if Global.Inventario_Itens[1] == true:
		$Inventario/Inventariopng/RAM.visible= true 
	elif Global.Inventario_Itens[1] == false:
		$Inventario/Inventariopng/RAM.visible= false 
		
	if Global.Inventario_Itens[3] == true:
		$Inventario/Inventariopng/PlacaVideo.visible= true 
	elif Global.Inventario_Itens[3] == false:
		$Inventario/Inventariopng/PlacaVideo.visible= false 
	
	
	if Global.PCcont == 1:
		smokeanim.visible= false
	
	if Global.Inventario_Itens[0] == true:
		Global.contador = 6
	else:
		Global.contador = 3

	
func _physics_process(_delta):
	#print(Global.contador)
	pass
