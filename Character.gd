class_name Character extends Node2D

# we use the self keyword to pass in the caller class, in this case the class: Character
var state = CharacterState.new(self)

func _update():
	state.update()
