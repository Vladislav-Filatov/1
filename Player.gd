extends KinematicBody2D

var speed = 50
var jumpforce = 100
var gravity = 500

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x -= speed
	elif Input.is_action_pressed("player_right"):
		vel.x += speed
	move_and_slide(vel, Vector2.UP)
	
	vel.y = gravity*delta
	
	if Input.is_action_pressed("player_jump"):
		vel.y -= jumpforce
		
		
