extends Area2D

#Declaração de variáveis
var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_Marcos')
onready var popup_E= $Popup_tecla_E


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#Define a variavel de controle como true. E mostra o popup na tela
func _on_NPC_Marcos_body_entered(_body):
	DialogControl= true
	popup_E.visible= true
	popup_E.set_global_position(Vector2(595, 420))

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_NPC_Marcos_body_exited(_body):
	DialogControl= false
	popup_E.visible= false

func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		Global.contador = 4
