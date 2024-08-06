extends Area2D

func _on_Spikes_body_entered(body):
	if body.get_name() == "Player":
		print("Nos hemos pinchado")
		get_tree().reload_current_scene()
	pass
