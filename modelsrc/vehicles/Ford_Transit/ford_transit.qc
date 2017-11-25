
$mostlyopaque

$ModelName "jessev92/dynrp/vehicles/ford_transit.mdl"

$BodyGroup "Body"
{
	studio "ford_transit_reference.smd"
}
$BodyGroup "misc"
{
	studio "ford_transit_miscparts.smd"
}
$BodyGroup "frontbumper"
{
	studio "ford_transit_bumperfa.smd"
	studio "ford_transit_bumperfb.smd"
}
$BodyGroup "rearbumper"
{
	studio "ford_transit_bumperra.smd"
	studio "ford_transit_bumperrb.smd"
}
$BodyGroup "skirt"
{
	studio "ford_transit_skirta.smd"
	studio "ford_transit_skirtb.smd"
}
$BodyGroup "wing"
{
	blank
	studio "ford_transit_wing.smd"
}
$BodyGroup "trim"
{
	blank
	studio "ford_transit_trim.smd"
}


$SurfaceProp "metal"

$Contents "solid"

$MaxEyeDeflection 90

$Opaque

$CDMaterials "models\jessev92/dynrp/vehicles/ford_transit"
$CDMaterials "models\jessev92/dynrp/vehicles/common"

$TextureGroup "skinfamilies"
{
	{ "skin"   }
	{ "skin1"  }
	{ "skin2"  }
	{ "skin3"  }
	{ "skin4"  }
	{ "skin5"  }
	{ "skin6"  }
	{ "skin7"  }
	{ "skin8"  }
	{ "skin9"  }
	{ "skin10" }
	{ "skin11" }
	{ "skin12" }
	{ "skin13" }
	{ "skin14" }
	{ "skin15" }
}

$Attachment "wheel_fl" "Wheel_FL" -12 0 0 rotate 0 0 0
$Attachment "wheel_fr" "Wheel_FR" -12 0 0 rotate 0 0 0
$Attachment "wheel_rl" "Wheel_RL" -12 0 0 rotate 0 0 0
$Attachment "wheel_rr" "Wheel_RR" -12 0 0 rotate 0 0 0
$Attachment "vehicle_driver_eyes" "Main" -20 -32 77 rotate 0 -90 0
$Attachment "exit1" "Main" 70 0 80 rotate 0 -90 0
$Attachment "exit2" "Main" -70 0 80 rotate 0 -90 0
$Attachment "vehicle_feet_passenger0" "Main" -20 -27 42 rotate -8 -90 0
$Attachment "vehicle_engine" "Main" 0 -100 40 rotate 0 -90 0
$Attachment "exhaust" "Main" 0 103 10 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -88 -118.885 -0.392 88 121.819 112.557

// $HBoxSet "default"
// $HBox 0 "Main" -46.5 -120 12.5 46.5 110 97.5 ""
// $HBox 0 "Main" -32.5 -50 42.5 -7.5 -20 87.5 ""
// $HBoxSet "entryboxes"
// $HBox 1 "Main" -88 -75 10 -38 -15 90 ""
// $HBox 2 "Main" 38 -75 10 88 -15 90 ""
// $SkipBoneInBBox


$PoseParameter "vehicle_steer" -1 1 0
$PoseParameter "vehicle_wheel_fl_height" 0 1 0
$PoseParameter "vehicle_wheel_fr_height" 0 1 0
$PoseParameter "vehicle_wheel_rl_height" 0 1 0
$PoseParameter "vehicle_wheel_rr_height" 0 1 0
$PoseParameter "vehicle_wheel_fl_spin" -180 180 360
$PoseParameter "vehicle_wheel_fr_spin" -180 180 360
$PoseParameter "vehicle_wheel_rl_spin" -180 180 360
$PoseParameter "vehicle_wheel_rr_spin" -180 180 360
$PoseParameter "vehicle_gauge" 0 1 0

$WeightList "weights_speedometer" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 1
	 "Speedo01" 1
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_turning" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 1
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 1
	 "Wheel_FR" 1
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 1
	 "Wheel_FL" 1
}

$WeightList "weights_wheel_fr_suspension" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 1
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_fr_spin" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 1
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_fl_suspension" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 1
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_fl_spin" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 1
}

$WeightList "weights_wheel_rr_suspension" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 1
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_rr_spin" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 1
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_rl_suspension" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 1
	 "Wheel_RL" 0
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$WeightList "weights_wheel_rl_spin" {
	 "Main" 0
	 "Steerwheel01" 0
	 "Steerwheel02" 0
	 "Speedo02" 0
	 "Speedo01" 0
	 "Axel_RR" 0
	 "Wheel_RR" 0
	 "Axel_FR" 0
	 "Turn_FR" 0
	 "Wheel_FR" 0
	 "Axel_RL" 0
	 "Wheel_RL" 1
	 "Axel_FL" 0
	 "Turn_FL" 0
	 "Wheel_FL" 0
}

$Animation "neutral" "ford_transit_anims\neutral.smd" {
	fps 30
}

$Animation "slow" "ford_transit_anims\slow.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow1" "ford_transit_anims\slow1.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow2" "ford_transit_anims\slow2.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow3" "ford_transit_anims\slow3.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow4" "ford_transit_anims\slow4.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow5" "ford_transit_anims\slow5.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow6" "ford_transit_anims\slow6.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow7" "ford_transit_anims\slow7.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow8" "ford_transit_anims\slow8.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow9" "ford_transit_anims\slow9.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "slow10" "ford_transit_anims\slow10.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid" "ford_transit_anims\mid.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid1" "ford_transit_anims\mid1.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid2" "ford_transit_anims\mid2.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid3" "ford_transit_anims\mid3.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid4" "ford_transit_anims\mid4.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid5" "ford_transit_anims\mid5.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid6" "ford_transit_anims\mid6.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid7" "ford_transit_anims\mid7.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "mid8" "ford_transit_anims\mid8.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "fast" "ford_transit_anims\fast.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "turn_left" "ford_transit_anims\turn_left.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
}

$Animation "turn_right" "ford_transit_anims\turn_right.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
}

$Animation "wheel_fr_low" "ford_transit_anims\wheel_fr_low.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_suspension"
}

$Animation "wheel_fr_high" "ford_transit_anims\wheel_fr_high.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_suspension"
}

$Animation "wheel_fr_spin0" "ford_transit_anims\wheel_fr_spin0.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fr_spin120" "ford_transit_anims\wheel_fr_spin120.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fr_spin240" "ford_transit_anims\wheel_fr_spin240.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fl_low" "ford_transit_anims\wheel_fl_low.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_suspension"
}

$Animation "wheel_fl_high" "ford_transit_anims\wheel_fl_high.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_suspension"
}

$Animation "wheel_fl_spin0" "ford_transit_anims\wheel_fl_spin0.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_fl_spin120" "ford_transit_anims\wheel_fl_spin120.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_fl_spin240" "ford_transit_anims\wheel_fl_spin240.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_rr_low" "ford_transit_anims\wheel_rr_low.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_suspension"
}

$Animation "wheel_rr_high" "ford_transit_anims\wheel_rr_high.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_suspension"
}

$Animation "wheel_rr_spin0" "ford_transit_anims\wheel_rr_spin0.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rr_spin120" "ford_transit_anims\wheel_rr_spin120.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rr_spin240" "ford_transit_anims\wheel_rr_spin240.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rl_low" "ford_transit_anims\wheel_rl_low.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_suspension"
}

$Animation "wheel_rl_high" "ford_transit_anims\wheel_rl_high.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_suspension"
}

$Animation "wheel_rl_spin0" "ford_transit_anims\wheel_rl_spin0.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_rl_spin120" "ford_transit_anims\wheel_rl_spin120.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_rl_spin240" "ford_transit_anims\wheel_rl_spin240.smd" {
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Sequence "idle" {
	"ford_transit_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "turn" {
	"ford_transit_anims\turn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "suspension" {
	"ford_transit_anims\suspension.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "spin" {
	"ford_transit_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "speedo" {
	"ford_transit_anims\speedo.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "speedometer" {
	"slow"
	"slow1"
	"slow2"
	"slow3"
	"slow4"
	"slow5"
	"slow6"
	"slow7"
	"slow8"
	"slow9"
	"slow10"
	"mid"
	"mid1"
	"mid2"
	"mid3"
	"mid4"
	"mid5"
	"mid6"
	"mid7"
	"mid8"
	"fast"
	autoplay
	blend "vehicle_gauge" 0 1
	blendwidth 21
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Sequence "turning" {
	"turn_left"
	"turn_right"
	autoplay
	blend "vehicle_steer" -1 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
}

$Sequence "wheel_fr_suspension" {
	"wheel_fr_low"
	"wheel_fr_high"
	autoplay
	blend "vehicle_wheel_fr_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_suspension"
}

$Sequence "wheel_fr_spin" {
	"wheel_fr_spin0"
	"wheel_fr_spin120"
	"wheel_fr_spin240"
	"wheel_fr_spin0"
	autoplay
	blend "vehicle_wheel_fr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Sequence "wheel_fl_suspension" {
	"wheel_fl_low"
	"wheel_fl_high"
	autoplay
	blend "vehicle_wheel_fl_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_suspension"
}

$Sequence "wheel_fl_spin" {
	"wheel_fl_spin0"
	"wheel_fl_spin120"
	"wheel_fl_spin240"
	"wheel_fl_spin0"
	autoplay
	blend "vehicle_wheel_fl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Sequence "wheel_rr_suspension" {
	"wheel_rr_low"
	"wheel_rr_high"
	autoplay
	blend "vehicle_wheel_rr_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_suspension"
}

$Sequence "wheel_rr_spin" {
	"wheel_rr_spin0"
	"wheel_rr_spin120"
	"wheel_rr_spin240"
	"wheel_rr_spin0"
	autoplay
	blend "vehicle_wheel_rr_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Sequence "wheel_rl_suspension" {
	"wheel_rl_low"
	"wheel_rl_high"
	autoplay
	blend "vehicle_wheel_rl_height" 0 1
	blendwidth 2
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_suspension"
}

$Sequence "wheel_rl_spin" {
	"wheel_rl_spin0"
	"wheel_rl_spin120"
	"wheel_rl_spin240"
	"wheel_rl_spin0"
	autoplay
	blend "vehicle_wheel_rl_spin" -180 180
	blendwidth 4
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line guesses the animation name and frame index. There is no way to determine which $animation and which frame was used. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$CollisionModel "ford_transit_physics.smd"
{
	$mass 1500
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}

$KeyValues
{
	vehicle_entry 
	{
		"idle" "1"
		"idle" "2"
	}
}
