extends Area2D
@onready var game_manager: Node2D = $"../../../game_manager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print('монета' ) 

func _on_coin_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("getcoin_animation")
