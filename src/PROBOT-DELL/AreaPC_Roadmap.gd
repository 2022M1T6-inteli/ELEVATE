extends Area2D

#Declaração de variáveis
var ControlPcRoadmap= false
onready var popup_E= $Popup_tecla_E
onready var inventory= get_node("../Inventario/Inventariopng/PenDrive")
onready var smokeanim= get_node("../Fumacasembg")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#Define a variavel de controle como true. E mostra o popup na tela
func _on_AreaPC_Roadmap_body_entered(body):
	ControlPcRoadmap= true
	if Global.Inventario_Itens[0] == true or Global.PCcontRoadmap == 1:
		popup_E.visible= true
		popup_E.set_global_position(Vector2(1060, 380))
	

#Define a variavel de controle como false. E remove o popup na tela
func _on_AreaPC_Roadmap_body_exited(body):
	ControlPcRoadmap= false
	if Global.Inventario_Itens[0] == true or Global.PCcontRoadmap == 1:
		popup_E.visible= false
	

func _physics_process(_delta):
	if Global.Inventario_Itens[1] == true and ControlPcRoadmap == true and Input.is_action_just_pressed("ui_e"):
		
		Global.PCcontRoadmap= 1
		inventory.visible= false 
		smokeanim.visible= false
	if Global.PCcontRoadmap == 1 and Input.is_action_just_pressed("ui_e") and Global.portaElevador == false:
		return get_tree().change_scene("res://Roadmap.tscn")
		Global.contador = 7
		
		

