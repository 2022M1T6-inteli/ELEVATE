extends Node2D

onready var inventario= [get_node("Inventario/Inventariopng/PenDrive"), get_node("Inventario/Inventariopng/RAM"), get_node("Inventario/Inventariopng/Cd"), get_node("Inventario/Inventariopng/PlacaVideo")]
var PenDrive_visibility= false
onready var smokebg= get_node("Fumacasembg")
var contSfx = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	
	if Global.NPCAzul_visible == false:
		$NPC_Azul/Area2D.visible= true
	elif Global.NPCAzul_visible == true:
		$NPC_Azul/Area2D.visible= false
		
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true 
	elif Global.Inventario_Itens[0] == false:
		$Inventario/Inventariopng/PenDrive.visible= false 	
		
	if Global.Inventario_Itens[1] == true:
		$Inventario/Inventariopng/RAM.visible= true 
	elif Global.Inventario_Itens[1] == false:
		$Inventario/Inventariopng/RAM.visible= false 
		
	if Global.Inventario_Itens[2] == true:
		$Inventario/Inventariopng/PlacaVideo.visible= true 
	elif Global.Inventario_Itens[2] == false:
		$Inventario/Inventariopng/PlacaVideo.visible= false 
		
		
	

#Define a variavel de controle como true.
func _on_PenDrive_Cena_body_entered(_body):
	PenDrive_visibility= true

#define variavel de controle como false. 
func _on_PenDrive_Cena_body_exited(_body):
	PenDrive_visibility= false


func _physics_process(_delta):
	if Global.controlPenDrive == true and inventario[0].visible == false:
		$PenDrive_Cena.visible = true
	
	if PenDrive_visibility == true and Input.is_action_just_pressed("ui_e") and $PenDrive_Cena.visible == true:
		$PenDrive_Cena.visible = false
		inventario[0].visible= true
		Global.Inventario_Itens[0]= inventario[0].visible
		Global.contador = 6
		
		if contSfx == 0: 
			$itempegadosfx.play()
		contSfx = contSfx+1

	
	if Global.Inventario_Itens[0] == true:
		Global.controlPenDrive= false


