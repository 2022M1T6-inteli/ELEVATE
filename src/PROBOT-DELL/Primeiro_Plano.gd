extends Node2D

func _ready():
	$Area2D2.visible = false
	

func _on_Area2D_body_entered(_body):
	if $Area2D.visible == true:
		$Area2D2.visible = true
		
