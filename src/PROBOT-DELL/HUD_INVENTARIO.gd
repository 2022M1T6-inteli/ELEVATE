extends Node2D


func _ready():

	if Global.medalha_1 == 1:
		$Platina/Sprite.visible = true
		$Ouro/Sprite.visible = false
		$Prata/Sprite.visible = false
		$Bronze/Sprite.visible = false
	elif Global.medalha_1 == 2:
		$Platina/Sprite.visible = false
		$Ouro/Sprite.visible = true
		$Prata/Sprite.visible = false
		$Bronze/Sprite.visible = false
	elif Global.medalha_1 == 3:
		$Platina/Sprite.visible = false
		$Ouro/Sprite.visible = false
		$Prata/Sprite.visible = true
		$Bronze/Sprite.visible = false
	elif Global.medalha_1 == 4:
		$Platina/Sprite.visible = false
		$Ouro/Sprite.visible = false
		$Prata/Sprite.visible = false
		$Bronze/Sprite.visible = true
	else:
		$Platina/Sprite.visible = false
		$Ouro/Sprite.visible = false
		$Prata/Sprite.visible = false
		$Bronze/Sprite.visible = false
