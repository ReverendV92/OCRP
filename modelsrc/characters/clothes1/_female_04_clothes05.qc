// Created by Crowbar 0.36.0.0

$ModelName "dynamicrp/characters/clothes5/female_04.mdl"

$model "Head" "female_04_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.130000 -3.678001 64.659014 "eyeball_r" 1 4 "iris_unused" 0.6
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.404000 -3.678001 64.659014 "eyeball_l" 1 -4 "iris_unused" 0.6

	flexfile "female_04.vta" 
	{
		defaultflex frame 0
		flex "jaw_drop" frame 1
	}

	flexcontroller phoneme range 0 1 jaw_drop
	flexcontroller phoneme range 0 1 blank

	localvar blank
	%jaw_drop = jaw_drop
	%blank = blank
}

$BodyGroup "Body"
{
	// studio "female_04_body_1.smd"
	// studio "female_04_body_2.smd"
	// studio "female_04_body_3.smd"
	// studio "female_04_body_4.smd"
	studio "female_04_body_5.smd"
	// studio "female_04_body_6.smd"
}
$BodyGroup "Body"
{
	studio "female_04_hair4.smd"
}

$CDMaterials models/dynamicrp/characters/common
$cdmaterials models/dynamicrp/characters/civilian
$cdmaterials models/jessev92/characters/oc
$cdmaterials models/jessev92/characters/kl

$pushd "..\..\..\characters\common"
$include "..\..\..\characters\common/Humans\female\ragdoll.qci"
$include "..\..\..\characters\common/Humans\female\hitbox.qci"
$include "..\..\..\characters\common/Humans/standardhierarchy.qci"
$include "..\..\..\characters\common/humans/standardikchains.qci"
$include "..\..\..\characters\common/humans/female/commonbones.qci"
$proceduralbones "..\..\..\characters/common/humans/female.vrd"
$popd

$include "optimization_female.qci"

$includemodel "f_anm.mdl"
//$includemodel "player/female_anims.mdl"
//$includemodel "player/female_gestures.mdl"
//$includemodel "player/female_postures.mdl"
//$includemodel "player/female_shared.mdl"
//$includemodel "player/female_ss.mdl"
//$includemodel "humans/female_shared.mdl"
//$includemodel "humans/female_ss.mdl"
//$includemodel "humans/female_gestures.mdl"
//$includemodel "humans/female_postures.mdl"
