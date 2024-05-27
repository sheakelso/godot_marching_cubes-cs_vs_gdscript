extends TextEdit

func _on_text_changed():
	var split = text.split("")
	var new_text = ""
	for char in split:
		if char.is_valid_int():
			new_text += char
	text = new_text
	pass # Replace with function body.
