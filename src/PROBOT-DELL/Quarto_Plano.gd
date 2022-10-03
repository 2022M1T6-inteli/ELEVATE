extends Node2D


onready var inventario= [get_node("Inventario/Inventariopng/PenDrive"), get_node("Inventario/Inventariopng/RAM"), get_node("Inventario/Inventariopng/Cd"), get_node("Inventario/Inventariopng/PlacaVideo")]
var PlacaVideo_visibility= false
var contSfx = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#if Global.NPCAzul_visible == false:
		#$NPC_Azul/Area2D.visible= true
	#elif Global.NPCAzul_visible == true:
		#$NPC_Azul/Area2D.visible= false
		
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


func _on_PlacaVideo_Cena_body_entered(body):
	PlacaVideo_visibility= true


func _on_PlacaVideo_Cena_body_exited(body):
	PlacaVideo_visibility= false


func _physics_process(_delta):
	if Global.controlPlacaVideo == true and inventario[3].visible == false: 
		$PlacaVideo_Cena.visible= true
	
	if PlacaVideo_visibility == true and Input.is_action_just_pressed("ui_e") and $PlacaVideo_Cena.visible == true:
		$PlacaVideo_Cena.visible= false
		inventario[3].visible= true
		Global.Inventario_Itens[3]= inventario[3].visible
		Global.contador = 6
		if contSfx == 0: 
			$itempegadosfx.play()
		contSfx = contSfx+1
	
	
	if Global.Inventario_Itens[3] == true:
		Global.controlPlacaVideo= false