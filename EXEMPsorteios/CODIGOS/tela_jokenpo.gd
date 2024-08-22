extends Control

var sorteio

const nada = preload("res://imagens/NADAresult.png")
const papel = preload("res://imagens/PAPELresult.png")
const pedra = preload("res://imagens/PEDRAresult.png")
const tesoura = preload("res://imagens/TESOURAresult.png")

# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Barra_progresso.completo == true:
		$Barra_progresso.completo = false
		sorteio = randi_range(1,3)
		if sorteio == 1:
			$TextureRect_result.texture = pedra
		elif sorteio == 2:
			$TextureRect_result.texture = papel
		else:
			$TextureRect_result.texture = tesoura
			
	pass
	pass

func _on_button_jogar_pressed():
	$TextureRect_result.texture = nada
	$Barra_progresso.lancar_progresso()
	pass # Replace with function body.
