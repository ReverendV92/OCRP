
$mostlyopaque

$ModelName dynamicrp/items/kevlar_vest

$model Kevlar kevlarvest_reference

$SurfaceProp rubber

$Contents solid

$CDMaterials models/dynamicrp/items/kevlarvest

$BBox -8.452 -8.661 43.208 8.967 8.661 69.684

$Sequence "ragdoll" {
	"kevlarvest_anim_@ragdoll.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$CollisionJoints kevlarvest_physics
{
	$mass 100
	$inertia 10
	$damping 0.05
	$rotdamping 5
	$rootbone "valvebiped.bip01_spine"

	$jointmassbias "ValveBiped.Bip01_Spine1" 8

	$jointmassbias "ValveBiped.Bip01_Spine2" 9
	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -60 60 0
}
