
$mostlyopaque

$ModelName dynamicrp/items/shroom

$model Shroom sta_skyboxshroom1_reference

$SurfaceProp wood

$Contents solid

$CDMaterials models/dynamicrp/items/fungi

$TextureGroup skinfamilies
{
	{ "msh_tex_shroom1"  }
	{ "msh_tex_shroom1b" }
	{ "msh_tex_shroom1c" }
	{ "msh_tex_shroom1d" }
}

$Sequence "idle" {
	"sta_skyboxshroom1_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$CollisionModel "sta_skyboxshroom1_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}

$KeyValues
{
	prop_data 
	{
		"base" "Wooden.Small"
		"dmg.bullets" "0"
		"explosive_damage" "100"
		"explosive_radius" "100"
	}
}
