# LinkedList.gd
class_name LinkedList
extends Node


# Rename from 'Node' to 'ListNode'
class ListNode:
	var value
	var next = null

	func _init(val):
		value = val

var head = null

func append(value):
	var new_node = ListNode.new(value)
	if head == null:
		head = new_node
	else:
		var current = head
		while current.next != null:
			current = current.next
		current.next = new_node

func prepend(value):
	var new_node = ListNode.new(value)
	new_node.next = head
	head = new_node

func delete(value):
	if head == null:
		return
	if head.value == value:
		head = head.next
		return
	var current = head
	while current.next != null:
		if current.next.value == value:
			current.next = current.next.next
			return
		current = current.next

func delete_all():
	head = null

func print_list():
	var current = head
	while current != null:
		print(current.value)
		current = current.next
