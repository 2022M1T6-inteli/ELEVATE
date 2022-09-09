extends Area2D

#Declaração de variáveis
var ControlPc= false
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#Define a variavel de controle como true. E mostra o popup na tela
func _on_AreaPC_Visao_body_entered(body):
	ControlPc= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[6]
	InfoPopup.set_global_position(Vector2(1000, 350))

#Define a variavel de controle como false. E remove o popup na tela
func _on_AreaPC_Visao_body_exited(body):
	ControlPc= false
	InfoPopup.visible= false
	 

func _physics_process(delta):
	if Global.Inventario_Itens[0] == true and ControlPc == true and Input.is_action_just_pressed("ui_e"):
		InfoPopup.visible= false
		return get_tree().change_scene("res://Visao.tscn")

