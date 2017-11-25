
$mostlyopaque

$ModelName dynamicrp/items/weed_seed

$model WeedSeed zak_wiet_reference

$SurfaceProp plastic

$Contents solid

$CDMaterials models/dynamicrp/items/weed

$BBox -1.897 -2.382 -0.783 4.563 2.407 0.829


$Sequence "idle" {
	"zak_wiet_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$CollisionModel "zak_wiet_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
