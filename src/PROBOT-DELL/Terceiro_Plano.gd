extends Node2D


onready var inventario= [get_node("Inventario/Inventariopng/PenDrive"), get_node("Inventario/Inventariopng/RAM"), get_node("Inventario/Inventariopng/Cd"), get_node("Inventario/Inventariopng/PlacaVideo")]
var RAM_visibility= false
var contSfx = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#if Global.NPCAzul_visible == false:
		#$NPC_Azul/Area2D.visible= true
	#elif Global.NPCAzul_visible == true:
		#$NPC_Azul/Area2D.visible= false
	if Global.terminou_jogo_nave == true:
		Global.contador = 9
	elif Global.Inventario_Itens[2] == true:
		Global.contador = 12
	else:
		Global.contador = 8
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
		

#Define a variavel de controle como true.
# warning-ignore:unused_argument
func _on_RAM_Cena_body_entered(body):
	RAM_visibility= true

#define variavel de controle como false. 
# warning-ignore:unused_argument
func _on_RAM_Cena_body_exited(body):
	RAM_visibility= false


func _physics_process(_delta):
	if Global.controlRAM == true and inventario[1].visible == false: 
		$RAM_Cena.visible= true
	
	if RAM_visibility == true and Input.is_action_just_pressed("ui_e") and $RAM_Cena.visible == true:
		$RAM_Cena.visible= false
		inventario[1].visible= true
		Global.Inventario_Itens[1]= inventario[1].visible
		#Global.contador = 6
		if contSfx == 0: 
			$itempegadosfx.play()
		contSfx = contSfx+1
	
	
	if Global.Inventario_Itens[1] == true:
		Global.controlRAM= false
		
		
	if Global.Inventario_Itens[1] == true:
		Global.contador = 10
