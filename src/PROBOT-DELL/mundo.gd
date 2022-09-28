
extends Node2D

export var SceneToGo= ""
var is_paused
var laser =  preload("res://projetil/laserjogador.tscn")
onready var mundo = $"."

func _on_jogador_spawn_laser(local):
	var l = laser.instance()
	l.global_position = local
	add_child(l)
func _process(_delta):
	$LabelVida.text = "vida: " + str(Global.vida_global)
	$LabelPontuacao.text = "pontuação:" + str(Global.pontuacao)
	if Global.pontuacao >= 40:
		$LabelPontuacao.text = "Você conseguiu!"
		Global.DialogoRAM= true
		print("Dialogo 2 True")
		yield(get_tree().create_timer(1.0), "timeout")
		Transicao.FadeInto(SceneToGo)
		#get_tree().change_scene("res://Terceiro_Plano.tscn")
		
		
	#print(Global.vida_global)
