
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
	if Global.pontuacao >= 40:
		$LabelPontuacao.text = "Você conseguiu!"
		Global.DialogoRAM= true
		yield(get_tree().create_timer(1.0), "timeout")
		get_tree().change_scene("res://Terceiro_Plano.tscn")
		
	#print(Global.vida_global)
