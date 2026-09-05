extends Area2D
func _on_body_entered(body: Node2D) -> void: 
	Engine.time_scale = 0.5
	queue_free()
