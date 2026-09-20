extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		if body.velocity.y > 0 and body.global_position.y < global_position.y:
			win_game()

func win_game():
	get_node("../CanvasLayer/WinLabel").visible = true
	get_tree().paused = true
