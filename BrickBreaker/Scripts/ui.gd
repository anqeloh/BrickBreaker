extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer

@onready var game_over_sound = $GameOverSound
@onready var game_won_sound = $GameWonSound
@onready var background_music = $BackgroundMusic

func set_lifes(lifes: int):
	lifes_label.text = "Lifes: %d" % lifes

func game_over():
	game_lost_container.show()
	game_over_sound.play()
	background_music.stop()
	
func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()

func on_level_won():
	level_won_container.show()
	game_won_sound.play()
	background_music.stop()

func _on_level_won_button_pressed():
	LevelDefinitions.current_level = 2
	get_tree().reload_current_scene()

func new_game():
	background_music.play()
