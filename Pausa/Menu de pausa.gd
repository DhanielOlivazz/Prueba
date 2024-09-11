extends Node

onready var player = null

func _ready():
	# Obtén el primer nodo del grupo 'player'
	var players = get_tree().get_nodes_in_group("Player")
	if players.size() > 0:
		player = players[0]  # Asigna el primer jugador del grupo

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = not get_tree().paused
		$Popup.visible = not $Popup.visible

func _on_Button2_pressed():
	get_tree().reload_current_scene()

func _on_Button3_pressed():
	get_tree().change_scene("res://Calificaciones/Selector.tscn")

func _on_Button5_pressed():
	get_tree().paused = not get_tree().paused

func _on_Button4_pressed():
	get_tree().quit()

func _process(delta):
	if player:  # Asegúrate de que el jugador existe antes de seguir su posición
		# Actualiza la posición del Popup en el eje X para seguir al jugador
		var popup_position = $Popup.position
		popup_position.x = player.position.x
		$Popup.position = popup_position
