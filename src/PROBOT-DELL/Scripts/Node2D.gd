extends Node2D

#variavel que inicia o dialogo criado no Dialogic
var NewDialog= Dialogic.start('Dialogo_inicial')

#função que implementa o diálogo assim que o jogador entrar na cena
func _ready():
	if Global.Dialogoutcontrol == false:
		add_child(NewDialog)
		Global.Dialogoutcontrol= true
	if Global.Inventario_Itens[0] == true:
		$Inventario/Inventariopng/PenDrive.visible= true
	if Global.Inventario_Itens[0] == false:
		$Inventario/Inventariopng/PenDrive.visible= false
	if Global.Inventario_Itens[1] == true:
		$Inventario/Inventariopng/RAM.visible= true
	if Global.Inventario_Itens[1] == false:
		$Inventario/Inventariopng/RAM.visible= false

