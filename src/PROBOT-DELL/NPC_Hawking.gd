extends Area2D

#Declaração de variáveis
var DialogControl= false
var NewDialog= Dialogic.start('Dialogo_Hawking')
var DialogRAM= Dialogic.start('Dialogo_Hawking_RAM')
onready var popup_E= $Popup_tecla_E


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.DialogoRAM == true:
		add_child(DialogRAM)
		Global.controlRAM= true
		
	NewDialog.connect("timeline_end", self, 'playship')

#define variavel de controle como false ao sair da area 2D. E Deleta o popup da tela
func _on_NPC_Hawking_body_entered(body):
	DialogControl= true
	popup_E.visible= true
	popup_E.set_global_position(Vector2(715, 440))

#Define a variavel de controle como true. E mostra o popup na tela
func _on_NPC_Hawking_body_exited(body):
	DialogControl= false
	popup_E.visible= false
	
func _physics_process(_delta):
	if DialogControl == true and Input.is_action_just_pressed("ui_e"):
		add_child(NewDialog)
		Global.contador = 4

func playship(_argument):
	get_tree().change_scene("res://mundo.tscn")
