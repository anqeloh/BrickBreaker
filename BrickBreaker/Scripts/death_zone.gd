extends Area2D

class_name DeathZone

signal life_lost

@onready var death_sound = $DeathSound

func _on_body_entered(body):
	life_lost.emit()
	death_sound.play()
