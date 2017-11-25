// Created by Crowbar 0.29.0.0

$ModelName "Suits\Male_03_Shirt.mdl"

$Model "male_02" "male_03_shirt_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.165000 -3.859996 67.661007 "dark_eyeball_r" 1 4 "iris_unused" 0.68
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.444000 -3.859996 67.668003 "dark_eyeball_l" 1 -4 "iris_unused" 0.68

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	$Include "male_03_shirt_flex.qci"
}

$BodyGroup "body"
{
	studio "male_03_shirt_closedcollar_black.smd"
	studio "male_03_shirt_closedcollar_short_black.smd"
	studio "male_03_shirt_closedcollar_rolled_black.smd"
	studio "male_03_shirt_opencollar_black.smd"
	studio "male_03_shirt_opencollar_short_black.smd"
	studio "male_03_shirt_opencollar_rolled_black.smd"
}

$Include "male_03_shirt_lod.qci"

$SurfaceProp "flesh"

$Contents "solid"

$EyePosition 0 0 70

$MaxEyeDeflection 90

$CDMaterials "models\Humans\suits\"
$CDMaterials "models\Humans\Male\"
$CDMaterials "models\humans\male\"

$TextureGroup "skinfamilies"
{
	{
		"Suit_Shirt.vmt"
	}
	{
		"suit_shirt2.vmt"
	}
	{
		"suit_shirt3.vmt"
	}
	{
		"suit_shirt4.vmt"
	}
	{
		"suit_shirt5.vmt"
	}
	{
		"suit_shirt6.vmt"
	}
	{
		"suit_shirt7.vmt"
	}
	{
		"suit_shirt8.vmt"
	}
	{
		"suit_shirt9.vmt"
	}
	{
		"suit_shirt10.vmt"
	}
	{
		"suit_shirt11.vmt"
	}
	{
		"suit_shirt12.vmt"
	}
	{
		"suit_shirt13.vmt"
	}
	{
		"suit_shirt14.vmt"
	}
	{
		"suit_shirt15.vmt"
	}
	{
		"suit_shirt16.vmt"
	}
}

$Attachment "eyes" "ValveBiped.Bip01_Head1" 3.67 -4.32 0 rotate 0 -80.1 -90
$Attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.5 0 rotate 0 -80 -90
$Attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$Attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$Attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

// $Include "male_03_shirt_box.qci"

$Include "male_03_shirt_bone.qci"

$Include "male_03_shirt_animation.qci"

$Include "male_03_shirt_collision.qci"
