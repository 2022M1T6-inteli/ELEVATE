extends Area2D

#criação de variáveis
var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_recepcionista')
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup

func _ready():
	pass

#Define a variavel de controle como true. E mostra o popup na tela
func _on_Area_Recepcionista_body_entered(_body):
	print("Oi")
	DialogControl= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[3]
	InfoPopup.set_global_position(Vector2(620, 370))
	
	
#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_Area_Recepcionista_body_exited(_body):
	DialogControl= false
	InfoPopup.visible= false

#funçao que verifica se a variavel é verdadeira e botao foi pressionado para habilitar o dialogo
func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		Global.contador += 1
		
		
