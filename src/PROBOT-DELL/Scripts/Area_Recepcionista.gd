extends Area2D

#criação de variáveis
var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_recepcionista')
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup

func _ready():
	InfoPopup.visible= false

#funcao que seta a variavel de controle do diálogo para true quando o player entrar no área 2D
func _on_Area_Recepcionista_body_entered(_body):
	DialogControl= true
	InfoPopup.visible= true
	LabelPopup.text= Popups.InfoPopupList[3]
	InfoPopup.set_global_position(Vector2(595, 370))
	
#funcao que seta a variavel de controle do diálogo para false quando o player sair da área 2D
func _on_Area_Recepcionista_body_exited(_body):
	DialogControl= false
	InfoPopup.visible= false

#funçao que verifica se a variavel é verdadeira e botao foi prssionado para habilitar o dialogo
func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		
