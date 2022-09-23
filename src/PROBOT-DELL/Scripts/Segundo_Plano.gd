extends Node2D

onready var inventario= [get_node("Inventario/Inventariopng/PenDrive"), get_node("Inventario/Inventariopng/RAM"), get_node("Inventario/Inventariopng/Cd"), get_node("Inventario/Inventariopng/PapelSenha")]
var PenDrive_visibility= false
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
		
	
#Define a variavel de controle como true.
func _on_Area2D_body_entered(_body):
	PenDrive_visibility= true

#define variavel de controle como false. 
func _on_Area2D_body_exited(_body):
	PenDrive_visibility= false

func _physics_process(_delta):
	if PenDrive_visibility == true and Input.is_action_just_pressed("ui_e") and $PenDrive_Cena.visible == true:
		$PenDrive_Cena/PenDrive.visible= false
		inventario[0].visible= true
		Global.Inventario_Itens[0]= inventario[0].visible
		Global.contador = 6
		if contSfx == 0: 
			$itempegadosfx.play()
		contSfx = contSfx+1
	if Global.controlPenDrive == true:
		$PenDrive_Cena.visible= true
	
	if Global.Inventario_Itens[0] == true:
		Global.controlPenDrive= false
