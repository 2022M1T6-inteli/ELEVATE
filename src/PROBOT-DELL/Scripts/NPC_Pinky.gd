extends Area2D

var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_Pinky')
onready var InfoPopup= $Info_Popup
onready var LabelPopup= $Info_Popup/Label_InfoPopup
onready var popup_E= $Popup_tecla_E

# Called when the node enters the scene tree for the first time.
func _ready():
	NewDialog.connect("timeline_end", self, 'pendriveap')

func pendriveap(_argument):
	Global.controlPenDrive= true

#Define a variavel de controle como true. E mostra o popup na tela
func _on_NPC_Pinky_body_entered(_body):
	print(DialogControl)
	DialogControl= true
	popup_E.visible= true
	popup_E.set_global_position(Vector2(718, 430))
	

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_NPC_Pinky_body_exited(_body):
	print(DialogControl)
	DialogControl= false
	popup_E.visible= false
	
	
	
func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		Global.contador = 5
