extends Node

export var SceneToGo= ""

var pontos_jogador_1 = 0
var pontos_jogador_2 = 0

var maximo_de_pontos = 5

func _ready():
	$Tutorial.visible= true
	get_tree().paused= true
	Global.contador = 12
	Global.pingas_terminado = true
func _on_Campo_gol_esquerda():
	pontos_jogador_2 += 1
	comeca_round_novo()
	

func _on_Campo_gol_direita():
	pontos_jogador_1 += 1
	comeca_round_novo()
	
func _process(delta):
	$Label.text = str(pontos_jogador_1)
	$Label2.text = str(pontos_jogador_2)
	
	if pontos_jogador_1 == 1:
		$Label3.text = "VITORIA"
		Global.DialogoPlacaVideo= true
		Transicao.FadeInto(SceneToGo)
	elif pontos_jogador_2 == 5:
		$Label3.text = "DERROTA"
		get_tree().reload_current_scene()


func comeca_round_novo():
	$Bola.reset()
	$Bola.set_direcao_inicial()
	$Raquete.resetar_raquete()
	$Raquete2.resetar_raquete2()
	
	

func _on_Timer_timeout():
	acabou_jogo()
	
	
func acabou_jogo():
	$Raquete.visible = false
	$Bola.visible = false
	$Raquete2.visible = false
	$Label.visible = false
	$Label2.visible = false
	$Label3.visible = false


func _on_Button_Play_pressed():
	$Tutorial.visible= false
	get_tree().paused= false
