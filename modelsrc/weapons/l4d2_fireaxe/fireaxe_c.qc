
$ambientboost
$mostlyopaque

$modelname valve/weapons/melee/fireaxe_c

$model axe v_fireaxe_reference

$surfaceprop metal

$contents solid

$maxeyedeflection 90

$cdmaterials models/valve/weapons/melee
$cdmaterials models/valve/weapons/melee/fireaxe
$cdmaterials models/weapons/melee
$cdmaterials models/weapons/melee/fireaxe

$attachment "attach_shell_eject" "valvebiped.attach_shell_eject" 0 0 0 rotate 0 0 0
$attachment "attach_muzzle" "valvebiped.attach_muzzle" 0 0 0 rotate 0 0 0
$attachment "attach_blur" "valvebiped.weapon_bone" 0.12 25.87 8.45 rotate 0 0 -90
$attachment "attach_camera" "valvebiped.attach_camera" 0 0 0 rotate 0 0 0
$attachment "attach_blade" "valvebiped.weapon_bone" 0 26 7 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -29.388 -51.147 -96.513 29.116 15.216 5.842

$definebone "valvebiped.valvebiped" "" 0 0 0 0 0 89.999976 0 0 0 0 0 0
$definebone "valvebiped.bip01" "valvebiped.valvebiped" 0 37.739231 -0.516773 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.camera" "valvebiped.valvebiped" 0 56.084805 0 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_bone" "valvebiped.bip01" 8.329032 7.655514 0 -89.99999 -89.745961 0 0 0 0 0 0 0
$definebone "valvebiped.attach_muzzle" "valvebiped.weapon_bone" 0 0.099715 8.360889 -89.99999 0 0 0 0 0 0 0 0
$definebone "valvebiped.attach_shell_eject" "valvebiped.weapon_bone" 0 3.003861 1.610714 0 90.00001 -90.00001 0 0 0 0 0 0
$definebone "valvebiped.attach_camera" "valvebiped.camera" 0 0 0 -89.99999 0.000003 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_spine" "valvebiped.bip01" 0 4.043964 -0.017929 4.766603 89.999983 89.999983 0 0 0 0 0 0
$definebone "valvebiped.bip01_spine1" "valvebiped.bip01_spine" 3.995838 0 0 0 -9.852983 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_spine2" "valvebiped.bip01_spine1" 3.698242 0 0 0 -0.906993 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_spine4" "valvebiped.bip01_spine2" 5.700882 0 0 0 28.371672 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_clavicle" "valvebiped.bip01_spine4" 4.065395 1.458945 1.5 -63.875288 -147.035792 50.277508 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_upperarm" "valvebiped.bip01_l_clavicle" 5.507359 0.000008 0.000001 -19.730427 -44.165479 -79.348296 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_forearm" "valvebiped.bip01_l_upperarm" 10.907391 0.000001 0 -0.000012 -7.202476 0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_hand" "valvebiped.bip01_l_forearm" 10.424316 -0.000006 -0.000031 6.507302 7.122672 78.669799 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger4" "valvebiped.bip01_l_hand" 2.997271 0.005411 -1.477472 8.213352 -12.990151 11.74242 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger41" "valvebiped.bip01_l_finger4" 1.51038 0 0 0.955239 -34.374604 0.653397 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger42" "valvebiped.bip01_l_finger41" 0.808647 0.000001 0 -10.048539 -17.354269 -3.121077 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger3" "valvebiped.bip01_l_hand" 3.305792 0.203112 -0.546729 5.954123 -16.778204 11.337855 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger31" "valvebiped.bip01_l_finger3" 1.807177 0.000002 0 -5.063458 -30.512982 -2.977607 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger32" "valvebiped.bip01_l_finger31" 0.966141 0 0 0.559035 -13.904481 0.138365 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger2" "valvebiped.bip01_l_hand" 3.571514 0.109303 0.40958 3.893594 -14.791067 10.730296 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger21" "valvebiped.bip01_l_finger2" 2.150654 0.000002 0 -3.092657 -37.967178 -2.410839 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger22" "valvebiped.bip01_l_finger21" 1.152748 0.000001 0 0.688636 -8.970355 0.108686 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger1" "valvebiped.bip01_l_hand" 3.684092 -0.158701 1.419181 1.961121 -11.693713 10.352714 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger11" "valvebiped.bip01_l_finger1" 1.70101 0 0 3.66905 -38.756249 2.940815 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger12" "valvebiped.bip01_l_finger11" 0.994705 0.000001 0 2.209324 -1.89655 0.07316 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger0" "valvebiped.bip01_l_hand" 1.068073 -1.287205 0.981903 -19.741834 -7.111199 97.051422 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger01" "valvebiped.bip01_l_finger0" 1.8363 0.000001 -0.000004 -10.778419 -10.615985 0.000005 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger02" "valvebiped.bip01_l_finger01" 1.223946 0 0 -2.328839 11.249058 0.000006 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_clavicle" "valvebiped.bip01_spine4" 4.065392 1.458947 -1.5 63.875294 -147.035778 -54.583283 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_upperarm" "valvebiped.bip01_r_clavicle" 5.507362 -0.000008 -0.000001 22.698471 -42.953708 82.694993 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_forearm" "valvebiped.bip01_r_upperarm" 10.907394 0 -0.000004 0.000015 -7.202481 -0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_hand" "valvebiped.bip01_r_forearm" 10.424301 -0.000005 0.000011 -6.507529 7.12261 -78.876985 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger4" "valvebiped.bip01_r_hand" 2.997293 0.000065 1.477481 -8.213405 -12.989923 -11.535193 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger41" "valvebiped.bip01_r_finger4" 1.510384 -0.000002 0 -0.955232 -34.374631 -0.6534 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger42" "valvebiped.bip01_r_finger41" 0.808651 0 0 10.048534 -17.354293 3.121073 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger3" "valvebiped.bip01_r_hand" 3.305807 0.201134 0.547461 -5.954233 -16.777981 -11.130627 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger31" "valvebiped.bip01_r_finger3" 1.807178 -0.000002 0 5.063459 -30.512986 2.977605 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger32" "valvebiped.bip01_r_finger31" 0.966137 0 0 -0.559034 -13.904486 -0.13837 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger2" "valvebiped.bip01_r_hand" 3.571524 0.110786 -0.409181 -3.893704 -14.790903 -10.523121 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger21" "valvebiped.bip01_r_finger2" 2.15066 0 0 3.092655 -37.967191 2.410835 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger22" "valvebiped.bip01_r_finger21" 1.152752 0.000001 0 -0.688636 -8.970365 -0.108692 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger1" "valvebiped.bip01_r_hand" 3.684114 -0.153564 -1.419746 -1.961175 -11.693489 -10.145486 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger11" "valvebiped.bip01_r_finger1" 1.701017 0.000002 0 -3.669047 -38.756252 -2.940821 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger12" "valvebiped.bip01_r_finger11" 0.994705 0.000001 0 -2.20932 -1.896554 -0.073165 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger0" "valvebiped.bip01_r_hand" 1.068094 -1.283653 -0.986552 19.767271 -7.037117 -96.832918 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger01" "valvebiped.bip01_r_finger0" 1.836308 -0.000002 0.000002 10.778425 -10.61599 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger02" "valvebiped.bip01_r_finger01" 1.223948 -0.000001 0 2.328845 11.249044 -0.000001 0 0 0 0 0 0
$definebone "valvebiped.weapon_charger_slide" "valvebiped.weapon_bone" 0 1.945634 -1.740829 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_stock_hammer" "valvebiped.weapon_bone" 0 1.092286 -2.833118 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_bolt" "valvebiped.weapon_bone" 0 1.945635 0 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_safety" "valvebiped.weapon_bone" 0 1.228824 1.706703 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_trigger" "valvebiped.weapon_bone" 0 0.375472 1.570164 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_clip_realease" "valvebiped.weapon_bone" 0 -0.000002 3.037922 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_clip" "valvebiped.weapon_bone" 0 -0.000002 3.857136 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.weapon_clip_bullets" "valvebiped.weapon_clip" 0 -0.876005 0 0 0 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_forearm_driven" "valvebiped.bip01_r_forearm" 3.201996 0 -0.000004 -5.999995 7.000001 -78.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_driven_ulna" "valvebiped.bip01_r_forearm" 6.694 0 -0.000004 -6.014995 7.006003 -78.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_thumbroot" "valvebiped.bip01_r_hand" 0.109995 -0.820999 -0.907 20.664999 -17.515996 -104.524011 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_forearm_driven" "valvebiped.bip01_l_forearm" 3.257999 -0.031 0.000004 5.999997 7.000004 78.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_driven_ulna" "valvebiped.bip01_l_forearm" 6.867996 0 0.000004 5.999997 7.000004 78.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_thumbroot" "valvebiped.bip01_l_hand" 0.084997 -0.691999 1.011 26.039005 111.969997 -76.421 0 0 0 0 0 0
$definebone "valvebiped.hlp_wrist01_l" "valvebiped.bip01_l_hand" 0 0 0 0.000006 -0.000003 0.000006 0 0 0 0 0 0
$definebone "valvebiped.hlp_ulna02_l" "valvebiped.bip01_l_forearm" 9.179493 0 0.000004 0.000002 0.000005 -0.000003 0 0 0 0 0 0
$definebone "valvebiped.hlp_ulna01_l" "valvebiped.bip01_l_forearm" 6.694326 0.000001 0 0.000002 0.000005 -0.000003 0 0 0 0 0 0
$definebone "valvebiped.hlp_wrist01_r" "valvebiped.bip01_r_hand" -0.000002 0 0 0.000001 -0.000002 -31.408837 0 0 0 0 0 0
$definebone "valvebiped.hlp_ulna01_r" "valvebiped.bip01_r_forearm" 6.694324 0 0 -0.000005 0.000007 31.408837 0 0 0 0 0 0

$bonemerge "valvebiped.valvebiped"
$bonemerge "valvebiped.bip01"
$bonemerge "valvebiped.camera"
$bonemerge "valvebiped.weapon_bone"
$bonemerge "valvebiped.attach_muzzle"
$bonemerge "valvebiped.attach_shell_eject"
$bonemerge "valvebiped.attach_camera"
$bonemerge "valvebiped.bip01_spine"
$bonemerge "valvebiped.bip01_spine1"
$bonemerge "valvebiped.bip01_spine2"
$bonemerge "valvebiped.bip01_spine4"
$bonemerge "valvebiped.bip01_l_clavicle"
$bonemerge "valvebiped.bip01_l_upperarm"
$bonemerge "valvebiped.bip01_l_forearm"
$bonemerge "valvebiped.bip01_l_hand"
$bonemerge "valvebiped.bip01_l_finger4"
$bonemerge "valvebiped.bip01_l_finger41"
$bonemerge "valvebiped.bip01_l_finger42"
$bonemerge "valvebiped.bip01_l_finger3"
$bonemerge "valvebiped.bip01_l_finger31"
$bonemerge "valvebiped.bip01_l_finger32"
$bonemerge "valvebiped.bip01_l_finger2"
$bonemerge "valvebiped.bip01_l_finger21"
$bonemerge "valvebiped.bip01_l_finger22"
$bonemerge "valvebiped.bip01_l_finger1"
$bonemerge "valvebiped.bip01_l_finger11"
$bonemerge "valvebiped.bip01_l_finger12"
$bonemerge "valvebiped.bip01_l_finger0"
$bonemerge "valvebiped.bip01_l_finger01"
$bonemerge "valvebiped.bip01_l_finger02"
$bonemerge "valvebiped.bip01_r_clavicle"
$bonemerge "valvebiped.bip01_r_upperarm"
$bonemerge "valvebiped.bip01_r_forearm"
$bonemerge "valvebiped.bip01_r_hand"
$bonemerge "valvebiped.bip01_r_finger4"
$bonemerge "valvebiped.bip01_r_finger41"
$bonemerge "valvebiped.bip01_r_finger42"
$bonemerge "valvebiped.bip01_r_finger3"
$bonemerge "valvebiped.bip01_r_finger31"
$bonemerge "valvebiped.bip01_r_finger32"
$bonemerge "valvebiped.bip01_r_finger2"
$bonemerge "valvebiped.bip01_r_finger21"
$bonemerge "valvebiped.bip01_r_finger22"
$bonemerge "valvebiped.bip01_r_finger1"
$bonemerge "valvebiped.bip01_r_finger11"
$bonemerge "valvebiped.bip01_r_finger12"
$bonemerge "valvebiped.bip01_r_finger0"
$bonemerge "valvebiped.bip01_r_finger01"
$bonemerge "valvebiped.bip01_r_finger02"
$bonemerge "valvebiped.bip01_r_forearm_driven"
$bonemerge "valvebiped.bip01_r_driven_ulna"
$bonemerge "valvebiped.bip01_r_thumbroot"
$bonemerge "valvebiped.bip01_l_forearm_driven"
$bonemerge "valvebiped.bip01_l_driven_ulna"
$bonemerge "valvebiped.bip01_l_thumbroot"
$bonemerge "valvebiped.hlp_wrist01_l"
$bonemerge "valvebiped.hlp_ulna02_l"
$bonemerge "valvebiped.hlp_ulna01_l"
$bonemerge "valvebiped.hlp_wrist01_r"
$bonemerge "valvebiped.hlp_ulna01_r"


$poseparameter "ver_aims" -1 1 0
$poseparameter "move_x" -1 1 0

$animation "a_run" "v_fireaxe_anim_a_run.smd" {
	fps 30
	loop
}

$animation "a_idle_01" "v_fireaxe_anim_a_idle_01.smd" {
	fps 30
	loop
}

$animation "a_look_up" "v_fireaxe_anim_a_look_up.smd" {
	fps 30
	// this subtract line is a guess of the animation name and frame index. there is no way to determine which $animation and which frame were used, so crowbar uses the name of the first $animation. change as needed.
	subtract "a_run" 0
}

$animation "a_look_mid" "v_fireaxe_anim_a_look_mid.smd" {
	fps 30
	// this subtract line is a guess of the animation name and frame index. there is no way to determine which $animation and which frame were used, so crowbar uses the name of the first $animation. change as needed.
	subtract "a_run" 0
}

$animation "a_look_down" "v_fireaxe_anim_a_look_down.smd" {
	fps 30
	// this subtract line is a guess of the animation name and frame index. there is no way to determine which $animation and which frame were used, so crowbar uses the name of the first $animation. change as needed.
	subtract "a_run" 0
}

$sequence "aims" {
	"a_look_up"
	"a_look_mid"
	"a_look_down"
	blend "ver_aims" -1 1
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// this subtract line is a guess of the animation name and frame index. there is no way to determine which $animation and which frame were used, so crowbar uses the name of the first $animation. change as needed.
	subtract "a_run" 0
}

$sequence "idle" {
	"a_run"
	"a_idle_01"
	"a_run"
	activity "act_vm_idle" 1
	blend "move_x" -1 1
	blendwidth 3
	fadein 0.2
	fadeout 0.2
	addlayer "aims"
	fps 30
	loop
}

$sequence "deploy" {
	"v_fireaxe_anim_@deploy.smd"
	activity "act_vm_draw" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swing_e_w" {
	"v_fireaxe_anim_@swing_e_w.smd"
	activity "act_vm_primaryattack" 2
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_e_w_layer" {
	"v_fireaxe_anim_@swing_e_w_layer.smd"
	activity "act_vm_shoot_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_ne_w" {
	"v_fireaxe_anim_@swing_ne_w.smd"
	activity "act_vm_primaryattack" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_ne_w_layer" {
	"v_fireaxe_anim_@swing_ne_w_layer.smd"
	activity "act_vm_shoot_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_se_w" {
	"v_fireaxe_anim_@swing_se_w.smd"
	activity "act_vm_primaryattack" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_se_w_layer" {
	"v_fireaxe_anim_@swing_se_w_layer.smd"
	activity "act_vm_shoot_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_w_e" {
	"v_fireaxe_anim_@swing_w_e.smd"
	activity "act_vm_hitleft" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_w_e_layer" {
	"v_fireaxe_anim_@swing_w_e_layer.smd"
	activity "act_vm_hitleft_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_sw_e" {
	"v_fireaxe_anim_@swing_sw_e.smd"
	activity "act_vm_hitleft" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swing_sw_e_layer" {
	"v_fireaxe_anim_@swing_sw_e_layer.smd"
	activity "act_vm_hitleft_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "swinghard_n_s" {
	"v_fireaxe_anim_@swinghard_n_s.smd"
	activity "act_vm_swinghard" 1
	{ event ae_cl_create_particle_effect 16 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "swinghard_n_s_layer" {
	"v_fireaxe_anim_@swinghard_n_s_layer.smd"
	activity "act_vm_swinghard_layer" 1
	{ event ae_cl_create_particle_effect 6 "weapon_melee_blur follow_attachment attach_blur" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "secondary_swing" {
	"v_fireaxe_anim_@secondary_swing.smd"
	activity "act_vm_secondaryattack" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "secondary_swing_layer_01" {
	"v_fireaxe_anim_@secondary_swing_layer_01.smd"
	activity "act_vm_secondaryattack_layer" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	// this subtract line is a guess of the animation name and frame index. there is no way to determine which $animation and which frame were used, so crowbar uses the name of the first $animation. change as needed.
	subtract "a_run" 0
}

$ikchain "rhand" "valvebiped.bip01_r_hand" knee 0.707 0.707 0
$ikchain "lhand" "valvebiped.bip01_l_hand" knee 0.707 0.707 0
