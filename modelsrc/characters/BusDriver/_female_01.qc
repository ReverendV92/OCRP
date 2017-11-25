// Created by Crowbar 0.36.0.0

$ModelName "dynamicrp/characters/bus/female_01.mdl"

$model "Head" "female_01_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.130000 -3.678001 64.659014 "eyeball_r" 1 4 "iris_unused" 0.6
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.404000 -3.678001 64.659014 "eyeball_l" 1 -4 "iris_unused" 0.6

	flexfile "female_01.vta" 
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
	studio "female_01_busdriver.smd"
}
$BodyGroup "Body"
{
	studio "female_01_hair1.smd"
}

$CDMaterials models/dynamicrp/characters/common
$cdmaterials models/dynamicrp/characters/bus
$cdmaterials models/jessev92/characters/oc
$cdmaterials models/jessev92/characters/kl

$pushd "..\..\..\characters\common"
$include "..\..\..\characters\common/Humans\female\ragdoll.qci"
$include "..\..\..\characters\common/Humans\female\hitbox.qci"
$include "..\..\..\characters\common/Humans/standardhierarchy.qci"
$include "..\..\..\characters\common/humans/standardikchains.qci"
$include "..\..\..\characters\common/humans/female/commonbones.qci"
$proceduralbones "..\..\..\characters\common/humans/female.vrd"
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

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$eyeposition 0 0 70
$mostlyopaque
