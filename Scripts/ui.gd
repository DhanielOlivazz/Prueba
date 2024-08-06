extends CanvasLayer

var coins = 0

func _ready():
	$score.text = String(coins)
	

func handleCoinCollected():
	print("Coin collected")
	coins += 1
	$score.text = String(coins)
	
	if coins == 11:
		get_tree().change_scene("res://Calificaciones/Calificacion S.tscn")
