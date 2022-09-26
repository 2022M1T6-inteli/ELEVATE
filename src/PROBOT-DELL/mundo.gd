
extends Node2D

var is_paused
var laser =  preload("res://projetil/laserjogador.tscn")
onready var mundo = $"."

func _on_jogador_spawn_laser(local):
	var l = laser.instance()
	l.global_position = local
	add_child(l)
func _process(delta):
	$LabelVida.text = "vida: " + str(Global.vida_global)
	$LabelPontuacao.text = "pontuação:" + str(Global.pontuacao)
	if Global.pontuacao >= 500:
		
		$LabelPontuacao.text = "voce conseguiu!"
	print(Global.vida_global)
