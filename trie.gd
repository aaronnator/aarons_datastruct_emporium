#todo: trie

extends Node

class_name Trie

# Trie Node definition
class TrieNode:
	var children := {}
	var is_end_of_word := false

	func _init():
		children = {}
		is_end_of_word = false

# Trie main class
var root := TrieNode.new()

# Inserts a word into the trie.
func insert(word: String) -> void:
	var node = root
	for i in word.length():
		var char = word[i]
		if not node.children.has(char):
			node.children[char] = TrieNode.new()
		node = node.children[char]
	node.is_end_of_word = true

# Returns true if the word is in the trie.
func search(word: String) -> bool:
	var node = root
	for i in word.length():
		var char = word[i]
		if not node.children.has(char):
			return false
		node = node.children[char]
	return node.is_end_of_word

# Returns true if there is any word in the trie that starts with the given prefix.
func starts_with(prefix: String) -> bool:
	var node = root
	for i in prefix.length():
		var char = prefix[i]
		if not node.children.has(char):
			return false
		node = node.children[char]
	return true
