extends VBoxContainer

func _on_Reiniciar_pressed():
	get_tree().reload_current_scene()


func _on_siguiente_pressed():
	get_tree().change_scene("res://Calificaciones/Menu inicial.tscn")


func _on_quitar_pressed():
	get_tree().quit()
