extends Control



var LinkedList = load("res://LinkedList.gd")
var list = LinkedList.new()
@onready var displayLabel = $Panel/HBoxContainer/Panel/Display

func _ready() -> void:
	var list = LinkedList.new()
	list.append(4)


func _on_button_pressed() -> void:
	print("Test:")
	list.print_list()
	list.print_label(displayLabel)


func _on_buttonAdd_pressed() -> void:
	var rand = randi() % 10
	list.append(rand)


func _on_button_clear_pressed() -> void:
	list.delete_all()
	displayLabel.text = ""
