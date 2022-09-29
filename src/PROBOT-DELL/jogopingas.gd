extends Node

var pontos_jogador_1 = 0
var pontos_jogador_2 = 0

var maximo_de_pontos = 1

func _ready():
	pass


func _on_Campo_gol_esquerda():
	pontos_jogador_1 += 1
	if pontos_jogador_1 < maximo_de_pontos:
		#comeca_round_novo()
		print("oi")

func _on_Campo_gol_direita():
	pontos_jogador_2 += 1
	if pontos_jogador_2 < maximo_de_pontos:
		#comeca_round_novo()
		print("oi")
		
		
func comeca_round_novo():
	$Bola.reset()
