extends Area2D


var ControlPc= false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_AreaPC_Visao_body_entered(body):
	 ControlPc= true


func _on_AreaPC_Visao_body_exited(body):
	ControlPc= false
	 

func _physics_process(delta):
	if Global.Inventario_Itens[0] == true and ControlPc == true and Input.is_action_just_pressed("ui_e"):
		return get_tree().change_scene("res://Visao.tscn")

