extends Control

#todo: standardize button_pressed method names
var Trie = load("res://trie.gd")
var trieObj = Trie.new()
var LinkedList = load("res://LinkedList.gd")
var list = LinkedList.new()
@onready var displayLabel = $Panel/HBoxContainer/LinkedList_Panel/Display
@onready var text_box_submit = $Panel/HBoxContainer/Trie_Panel/TextEditTrieSubmit
@onready var text_box_verify = $Panel/HBoxContainer/Trie_Panel/TextEditTrieVerify

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


func _on_button_submit_pressed() -> void:
	var text = text_box_submit.text
	print(text)
	trieObj.insert(text)
	
	
	


func _on_button_verify_pressed() -> void:
	var text = text_box_verify.text
	if (trieObj.search(text)):
		print("Trie confirmation.")
		pass
