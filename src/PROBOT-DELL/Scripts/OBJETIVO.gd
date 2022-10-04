extends ColorRect



var vet_objetivos = ["Entre no prédio","Fale com a Ellen","Vá ao primeiro andar","Fale com Marcos","Fale com a Pinky no segundo andar","Pegue o Pen Drive","Conecte o Pen drive no computador do primeiro andar","Vá ao terceiro andar", "Fale com Hawking", "Pegue a RAM", "Conserte o computador no segundo andar", "Fale com Norman no quarto andar", "Pegue a placa de vídeo","Conserte o computador no terceiro andar"]
	
	
func _physics_process(_delta):
	$Label.text = vet_objetivos[Global.contador]

		
