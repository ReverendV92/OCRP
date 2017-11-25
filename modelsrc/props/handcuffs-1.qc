
$mostlyopaque

$ModelName dynamicrp/items/handcuffs

$model YouCantBreakThoseCuffs handcuffs-1_reference

$SurfaceProp metal

$Contents solid

$CDMaterials models/dynamicrp/items/handcuffs

$BBox -0.591 -2.451 -7.344 0.593 2.554 7.364

$Sequence "idle" {
	"handcuffs-1_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$CollisionModel "handcuffs-1_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
