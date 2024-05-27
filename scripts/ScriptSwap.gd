extends Button

var is_gd = false

@export var gd_mesh: MeshInstance3D
@export var cs_mesh: MeshInstance3D
@export var title: Label

func _on_button_down():
	if is_gd:
		gd_mesh.enabled = false
		gd_mesh.hide()
		cs_mesh.enabled = true
		cs_mesh.show()
		title.text = "Marching Cubes Generator (C#)"
		text = "Switch to GDScript"
		is_gd = false
	else:
		gd_mesh.enabled = true
		gd_mesh.show()
		cs_mesh.enabled = false
		cs_mesh.hide()
		title.text = "Marching Cubes Generator (GD)"
		text = "Switch to C#"
		is_gd = true
	pass
