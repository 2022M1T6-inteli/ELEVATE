extends Node2D

onready var inventario= [get_node("Inventario/Inventariopng/PenDrive"), get_node("Inventario/Inventariopng/RAM"), get_node("Inventario/Inventariopng/Cd"), get_node("Inventario/Inventariopng/PapelSenha")]
var PenDrive_visibility= false

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.NPCAzul_visible == false:
		$NPC_Azul/Area2D.visible= true
	elif Global.NPCAzul_visible == true:
		$NPC_Azul/Area2D.visible= false
	

func _on_Area2D_body_entered(body):
	PenDrive_visibility= true


func _on_Area2D_body_exited(body):
	PenDrive_visibility= false

func _physics_process(delta):
	if PenDrive_visibility ==true and Input.is_action_just_pressed("ui_e"):
		$PenDrive_Cena/PenDrive.visible= false
		inventario[0].visible= true
		Global.Inventario_Itens[0]= inventario[0].visible
