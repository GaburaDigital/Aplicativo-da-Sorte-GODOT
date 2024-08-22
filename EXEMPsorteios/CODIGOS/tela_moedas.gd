extends Control

var sorteio

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Barra_progresso.completo == true:
		$Barra_progresso.completo = false
		sorteio = randi_range(1,2)
		if sorteio == 1:
			$Label_resultado.text = "CARA"
		else:
			$Label_resultado.text = "COROA"
	pass

func _on_button_iniciar_pressed():
	$Label_resultado.text = "..."
	$Barra_progresso.lancar_progresso()
	pass # Replace with function body.
