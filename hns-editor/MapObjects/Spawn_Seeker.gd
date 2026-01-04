extends MapObject


func _init() -> void:
	cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	
	var _mesh = SphereMesh.new()
	mesh = _mesh
	
	var pointer_mesh_instance := MeshInstance3D.new()
	pointer_mesh_instance.mesh = CylinderMesh.new()
	pointer_mesh_instance.mesh.height = 0.5
	pointer_mesh_instance.mesh.top_radius = 0.0
	pointer_mesh_instance.mesh.bottom_radius = 0.1
	pointer_mesh_instance.rotate_x(-PI/2)
	pointer_mesh_instance.position.z = -0.5
	add_child(pointer_mesh_instance)
	
	var material := StandardMaterial3D.new()
	material.albedo_color = Color(1.0, 0.0, 0.0)
	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	set_surface_override_material(0, material)
	pointer_mesh_instance.set_surface_override_material(0, material)
