# Character State file ===========================
class_name CharacterState extends Node2D

# the constructor will take in what is passed in the class instantiation
# and assign it to a field inside CharacterState
# all it's child classes will inherit this field
var character
func _init(character_in):
	character = character_in

func update():
	pass

class Walk extends CharacterState:

	func update():
		walk()

		if(time_for_state_change()):
			character.state = Idle.new(character)

	func walk():
		pass
		
	func time_for_state_change():
		pass

class Idle extends CharacterState:

	func update():
		idle()

		if(time_for_state_change()):
			character.state = Walk.new(character)

	func idle():
		pass
		
	func time_for_state_change():
		pass
