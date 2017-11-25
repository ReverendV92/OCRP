
$ambientboost
$mostlyopaque

$modelname valve/weapons/melee/fireaxe_w

$model axe w_fireaxe_reference

$surfaceprop metal

$contents solid

$maxeyedeflection 90

$cdmaterials models/valve/weapons/melee
$cdmaterials models/valve/weapons/melee/fireaxe
$cdmaterials models/weapons/melee
$cdmaterials models/weapons/melee/fireaxe

$attachment "attach_blade" "valvebiped.l_weapon_bone" 0 28.5 6 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -8.262 -1.104 -12.124 8.445 1.269 31.033

$definebone "valvebiped.valvebiped" "" 0 0 0 0 0 90.000003 0 0 0 0 0 0
$definebone "valvebiped.l_weapon_bone" "valvebiped.valvebiped" 0 -2.670034 -0.064505 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.valvebiped_polysurface1" "valvebiped.l_weapon_bone" 0 2.670034 0.064505 0 0 0 0 0 0 0 0 0

$bonemerge "valvebiped.valvebiped"
$bonemerge "valvebiped.l_weapon_bone"


$sequence "idle" {
	"w_fireaxe_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "w_fireaxe_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 3
	$rootbone " "

}
