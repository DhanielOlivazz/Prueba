extends Area2D

# Variables para el movimiento
var direction = Vector2(0, 1)  # Movimiento vertical
var speed = 80
var top_limit = -70
var bottom_limit = 42

# Referencia al jugador
#onready var player = get_parent().get_node("Player")
onready var animation_player = $AnimationPlayer
onready var Spritee = $Sprite
onready var Spritee2 = $Sprite2
onready var audio = $AudioStreamPlayer2D

func _ready():
	connect("body_entered", self, "_on_NPC_body_entered")

func _process(delta):
	position.y += direction.y * speed * delta
	if position.y > bottom_limit:
		direction = Vector2(0, -1)
		audio.play()  # Reproducir el sonido al alcanzar el límite inferior
	elif position.y < top_limit:
		direction = Vector2(0, 1)

func _on_NPC_body_entered(body):
	if body.name == "Player":
		print("Nos han aplastado :C")
		get_tree().reload_current_scene()  # Reinicia el nivel
