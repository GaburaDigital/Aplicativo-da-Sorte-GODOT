extends Control

var numero = 6
var resultado

# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Barra_progresso.completo:
		$Barra_progresso.completo = false
		resultado = randi_range(1,numero)
		$Label_result.text = str(resultado)
	
	pass


func _on_button_menos_pressed():
	if numero > 2:
		numero -= 1
		$Label_config.text = str(numero)
		
	pass # Replace with function body.


func _on_button_mais_pressed():
	if numero < 99:
		numero += 1
		$Label_config.text = str(numero)
	pass # Replace with function body.


func _on_button_jogar_pressed():
	$Barra_progresso.lancar_progresso()
	$Label_result.text = "..."
	pass # Replace with function body.
