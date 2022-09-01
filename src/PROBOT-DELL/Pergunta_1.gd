extends Node2D

onready var visibility_card_front= $FlashCard_Design_Frente
onready var visibility_card_back= $FlashCard_Design2_Tras

var quest= ["Você gosta de pipoca", "Você é legal?"]
var answer= ["Gosto", "Sou"]

func _ready():
	pass # Replace with function body.

func _on_Button_Flashcard_Front_pressed():
	visibility_card_front.visible= false
	visibility_card_back.visible= true
