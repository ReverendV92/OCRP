// Created by Crowbar 0.36.0.0

$mostlyopaque

$ModelName "jessev92/dynrp/vehicles/ford_f350_tow.mdl"

$BodyGroup "car"
{
	studio "f350_tow_ref.smd"
}
$BodyGroup "clamped1"
{
	studio "f350_tow_body1_model0.smd"
}


$SurfaceProp "metalvehicle"

$Contents "solid"

$MaxEyeDeflection 90

$CDMaterials "models\jessev92/dynrp/vehicles/f350_tow"
$CDMaterials "models\jessev92/dynrp/vehicles/f350_utili"
$CDMaterials "models\jessev92/dynrp/vehicles/common"
$CDMaterials "Debug\"

$TextureGroup "skinfamilies"
{
	{ "skin0" }
	{ "skin1" }
	{ "skin2" }
	{ "skin3" }
	{ "skin4" }
	{ "skin5" }
}

$Attachment "vehicle_driver_eyes" "Camera001" 2 5 0 rotate 0 0 -90
$Attachment "vehicle_feet_passenger0" "Camera001" -5 -34 0 rotate 0 5 -90
$Attachment "vehicle_engine" "Bone002" 180.5 30 -6 rotate 0 0 -90
$Attachment "wheel_fl" "fl_wheel" -6.66 0 0 rotate 0 0 0
$Attachment "wheel_fr" "fr_wheel" -6.66 0 0 rotate 0 0 0
$Attachment "wheel_rr" "br_wheel" -6.66 0 0 rotate 0 0 0
$Attachment "wheel_rl" "bl_wheel" -6.66 0 0 rotate 0 0 0
$Attachment "exit1" "Bone002" 115 5 -55 rotate 0 0 0
$Attachment "enter1" "Bone002" 115 5 -55 rotate 0 0 0

$CBox 0 0 0 0 0 0

$BBox -63.746 -118.226 3.715 63.746 143.237 116.249

// $HBoxSet "default"


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
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 1
	 "speedo" 1
	 "steeringwheel" 0
}

$WeightList "weights_turning" {
	 "Bone002" 0
	 "fr_axle" 1
	 "fr_wheel" 1
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 1
	 "fl_wheel" 1
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 1
}

$WeightList "weights_wheel_fl_suspension" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 1
	 "fl_wheel" 1
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_fl_spin" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 1
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_fr_suspension" {
	 "Bone002" 0
	 "fr_axle" 1
	 "fr_wheel" 1
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_fr_spin" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 1
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_rl_suspension" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 1
	 "bl_wheel" 1
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_rl_spin" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 0
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 1
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_rr_suspension" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 1
	 "br_wheel" 1
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$WeightList "weights_wheel_rr_spin" {
	 "Bone002" 0
	 "fr_axle" 0
	 "fr_wheel" 0
	 "br_axle" 0
	 "br_wheel" 1
	 "fl_axle" 0
	 "fl_wheel" 0
	 "bl_axle" 0
	 "bl_wheel" 0
	 "Camera001" 0
	 "tachometer" 0
	 "speedo" 0
	 "steeringwheel" 0
}

$Animation "neutral" "f350_tow_anims\neutral.smd" {
	fps 30
}

$Animation "1" "f350_tow_anims\1.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "2" "f350_tow_anims\2.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "3" "f350_tow_anims\3.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "4" "f350_tow_anims\4.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "5" "f350_tow_anims\5.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "6" "f350_tow_anims\6.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "7" "f350_tow_anims\7.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "8" "f350_tow_anims\8.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "9" "f350_tow_anims\9.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "10" "f350_tow_anims\10.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "11" "f350_tow_anims\11.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "12" "f350_tow_anims\12.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "13" "f350_tow_anims\13.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "14" "f350_tow_anims\14.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "15" "f350_tow_anims\15.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "16" "f350_tow_anims\16.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "17" "f350_tow_anims\17.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "18" "f350_tow_anims\18.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "19" "f350_tow_anims\19.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "20" "f350_tow_anims\20.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "21" "f350_tow_anims\21.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "22" "f350_tow_anims\22.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "23" "f350_tow_anims\23.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "24" "f350_tow_anims\24.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "25" "f350_tow_anims\25.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_speedometer"
}

$Animation "26" "f350_tow_anims\26.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
}

$Animation "turn_left" "f350_tow_anims\turn_left.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
}

$Animation "turn_right" "f350_tow_anims\turn_right.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
}

$Animation "wheel_fl_low" "f350_tow_anims\wheel_fl_low.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_suspension"
}

$Animation "wheel_fl_high" "f350_tow_anims\wheel_fl_high.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_suspension"
}

$Animation "wheel_fl_spin0" "f350_tow_anims\wheel_fl_spin0.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_fl_spin120" "f350_tow_anims\wheel_fl_spin120.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_fl_spin240" "f350_tow_anims\wheel_fl_spin240.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
}

$Animation "wheel_fr_low" "f350_tow_anims\wheel_fr_low.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_suspension"
}

$Animation "wheel_fr_high" "f350_tow_anims\wheel_fr_high.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_suspension"
}

$Animation "wheel_fr_spin0" "f350_tow_anims\wheel_fr_spin0.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fr_spin120" "f350_tow_anims\wheel_fr_spin120.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_fr_spin240" "f350_tow_anims\wheel_fr_spin240.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
}

$Animation "wheel_rl_low" "f350_tow_anims\wheel_rl_low.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_suspension"
}

$Animation "wheel_rl_high" "f350_tow_anims\wheel_rl_high.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_suspension"
}

$Animation "wheel_rl_spin0" "f350_tow_anims\wheel_rl_spin0.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_rl_spin120" "f350_tow_anims\wheel_rl_spin120.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_rl_spin240" "f350_tow_anims\wheel_rl_spin240.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
}

$Animation "wheel_rr_low" "f350_tow_anims\wheel_rr_low.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_suspension"
}

$Animation "wheel_rr_high" "f350_tow_anims\wheel_rr_high.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_suspension"
}

$Animation "wheel_rr_spin0" "f350_tow_anims\wheel_rr_spin0.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rr_spin120" "f350_tow_anims\wheel_rr_spin120.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Animation "wheel_rr_spin240" "f350_tow_anims\wheel_rr_spin240.smd" {
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$Sequence "idle" {
	"f350_tow_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "turn" {
	"f350_tow_anims\turn.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "suspension" {
	"f350_tow_anims\suspension.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "spin" {
	"f350_tow_anims\spin.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "enter1" {
	"f350_tow_anims\enter1.smd"
	fadein 0.2
	fadeout 0.2
	fps 20
}

$Sequence "exit1" {
	"f350_tow_anims\exit1.smd"
	fadein 0.2
	fadeout 0.2
	fps 20
}

$Sequence "speedometer" {
	"1"
	"2"
	"3"
	"4"
	"5"
	"6"
	"7"
	"8"
	"9"
	"10"
	"11"
	"12"
	"13"
	"14"
	"15"
	"16"
	"17"
	"18"
	"19"
	"20"
	"21"
	"22"
	"23"
	"24"
	"25"
	autoplay
	blend "vehicle_gauge" 0 1
	blendwidth 25
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_turning"
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fl_spin"
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_fr_spin"
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rl_spin"
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
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
	// This subtract line is a guess of the animation name and frame index. There is no way to determine which $animation and which frame were used, so Crowbar uses the name of the first $animation. Change as needed.
	subtract "neutral" 0
	weightlist "weights_wheel_rr_spin"
}

$CollisionModel "f350_tow_physics.smd"
{
	$mass 3631
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
