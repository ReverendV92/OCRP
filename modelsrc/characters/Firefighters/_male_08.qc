// Created by Crowbar 0.36.0.0

$ModelName "dynamicrp/characters/fire/male_08.mdl"

$model "Head" "male_08_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.300000 -3.790002 66.383007 "eyeball_r" 1 4 "iris_unused" 0.59
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.300000 -3.790003 66.383007 "eyeball_l" 1 -4 "iris_unused" 0.59

	flexfile "male_08.vta" 
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
	studio "male_08_firefighter.smd"
}

$CDMaterials models/dynamicrp/characters/common
$cdmaterials models/dynamicrp/characters/fire
$cdmaterials models/jessev92/characters/oc
$cdmaterials models/jessev92/characters/kl

$pushd "..\..\..\characters\common"
$include "..\..\..\characters\common/Humans\male\ragdoll.qci"
$include "..\..\..\characters\common/Humans\male\hitbox.qci"
$include "..\..\..\characters\common/Humans/standardhierarchy.qci"
$include "..\..\..\characters\common/humans/standardikchains.qci"
$include "..\..\..\characters\common/humans/male/commonbones.qci"
$proceduralbones "..\..\..\characters\common/humans/male.vrd"
$popd

$include "optimization.qci"

$includemodel "m_anm.mdl"
//$includemodel "player/male_anims.mdl"
//$includemodel "player/male_gestures.mdl"
//$includemodel "player/male_postures.mdl"
//$includemodel "player/male_shared.mdl"
//$includemodel "player/male_ss.mdl"
//$includemodel "humans/male_shared.mdl"
//$includemodel "humans/male_ss.mdl"
//$includemodel "humans/male_gestures.mdl"
//$includemodel "humans/male_postures.mdl"
