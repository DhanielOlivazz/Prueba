extends Area2D

# Variables para el movimiento
var direction = Vector2(1, 0)  # Movimiento vertical
var speed = 75
var left_limit = 6900
var right_limit = 7100

# Referencia al jugador
#onready var player = get_parent().get_node("Player")
onready var animation_player = $AnimationPlayer
onready var Spritee = $Sprite
#onready var audio = $AudioStreamPlayer2D

func _ready():
	connect("body_entered", self, "_on_NPC_body_entered")

func _process(delta):
	position.x += direction.x * speed * delta
	if position.x > right_limit:
		direction = Vector2(-1, 0)
		Spritee.flip_h = false
	elif position.x < left_limit:
		direction = Vector2(1, 0)
		Spritee.flip_h = true

func _on_NPC_body_entered(body):
	if body.name == "Player":
		print("nOS HAN PICOTEADO:D")
		get_tree().reload_current_scene() 
