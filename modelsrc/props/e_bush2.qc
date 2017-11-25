// Created by Crowbar 0.42.0.0

$ModelName "msc/e_bush2.mdl"

$StaticProp

$BodyGroup "studio"
{
	studio "e_bush2_reference.smd"
}

$LOD 180
{
	replacemodel "e_bush2_reference.smd" "e_bush2_body0_model0_lod1.smd"
}

$SurfaceProp "default"

$Contents "solid"

$CDMaterials "models\msc\"

$TextureGroup "skinfamilies"
{
	{ "e_bigbush"  }
	{ "e_bigbush2" }
	{ "e_bigbush3" }
}

$CBox 0 0 0 0 0 0

$BBox -108.48 -40.567 -0.331 77.501 49.997 120


$Sequence "idle" {
	"e_bush2_anim_@idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}
