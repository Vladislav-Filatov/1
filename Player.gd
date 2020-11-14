extends KinematicBody2D

var speed = 30
var jumpforce = 500
var gravity = 500
onready var sprite = get_node("player")
var vel = Vector2()


func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		vel.x -= speed
	elif Input.is_action_pressed("player_right"):
		vel.x += speed
	if Input.is_action_pressed("player_jump") and is_on_floor():
		vel.y -= jumpforce
	vel.y += gravity*delta
	vel = move_and_slide(vel, Vector2.UP)
	if vel.x<0:
		sprite.flip_h = true
	if vel.x>0:
		sprite.flip_h = false
	
	
	
	
		
		
