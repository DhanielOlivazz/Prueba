extends Node2D

signal coinCollected

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		$CoinSound.playing = true
		body.add_coin()
		queue_free()
		pass
