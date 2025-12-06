extends Area2D


@export var speed = 2.5
<<<<<<< HEAD
@onready var explosion_boom = preload("res://explosions.tscn")
=======

>>>>>>> 1e72abb5368f6de688d6d8c3b70eaec9342a8ff5

func _process(_delta):
	position.x -= 2.5


func _on_area_entered(area):
	if area is laser_class:
<<<<<<< HEAD
		var explosion = explosion_boom.instantiate()
		explosion.position = position
		get_parent().add_child(explosion)
		queue_free()
		area.queue_free()
=======
		queue_free()
>>>>>>> 1e72abb5368f6de688d6d8c3b70eaec9342a8ff5
	
