extends Destructible
class_name Chest
# Called when the node enters the scene tree for the first time.
func _init():
	super._init("chest",2)
func death():
	self.sprites.play("open")
	self.sprites.play("opened")
func _ready():
	self.sprites.play("closed")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	
