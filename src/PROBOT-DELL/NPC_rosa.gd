extends Node2D

var AppearControl= true


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_Area2D2_body_entered(body):
	print("oi")
	AppearControl= true

func _on_Area2D2_body_exited(body):
	AppearControl= false

func _process(delta):
	if Input.is_action_just_pressed("ui_e") and AppearControl == true:
		$Area2D2.visible= false
		Global.NPCAzul_visible= false
		
