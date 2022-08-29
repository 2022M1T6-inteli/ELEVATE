extends Area2D

#declaração de variáveis
var LiberaPorta= false

#define variavel de controle como true ao entrar na area 2D
func _on_Area_elevador_body_entered(_body):
	LiberaPorta= true

#define variavel de controle como false ao sair da area 2D
func _on_Area_elevador_body_exited(_body):
	LiberaPorta= false

#funcao process delta que está fazendo a verificação da variavel de controle e de qual botão do teclado foi pressionado, para então trocar para a cena da recepção
func _physics_process(_delta):
	if LiberaPorta == true and Input.is_action_just_pressed("ui_accept"):
		return get_tree().change_scene("res://painelpreto.tscn")
