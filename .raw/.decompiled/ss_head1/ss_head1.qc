// Created by Crowbar 0.62

$modelname "bloocobalt\codmw2\ss_head1.mdl"

$model "CIA-dood" "ss_head1_reference_head1.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.357000 -3.738000 67.807003 "eyeball_r" 1 4 "iris_unused" 0.6
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.291000 -3.702000 67.779003 "eyeball_l" 1 -4 "iris_unused" 0.6


	flexfile "ss_head1_01.vta" 
	{
		defaultflex frame 0
		flex "right_lid_closer" frame 1
		flex "left_lid_closer" frame 2
		flex "blink" frame 3
		flex "right_inner_raiser" frame 4
		flex "left_inner_raiser" frame 5
		flex "right_outer_raiser" frame 6
		flex "left_outer_raiser" frame 7
		flex "right_lowerer" frame 8
		flex "left_lowerer" frame 9
		flex "right_corner_depressor" frame 10
		flex "left_corner_depressor" frame 11
		flex "jaw_drop" frame 12
		flex "smile" frame 13
	}

	flexcontroller phoneme range 0 1 "blank"
	flexcontroller phoneme range 0 1 "right_lid_closer"
	flexcontroller phoneme range 0 1 "left_lid_closer"
	flexcontroller phoneme range 0 1 "blink"
	flexcontroller phoneme range 0 1 "right_inner_raiser"
	flexcontroller phoneme range 0 1 "left_inner_raiser"
	flexcontroller phoneme range 0 1 "right_outer_raiser"
	flexcontroller phoneme range 0 1 "left_outer_raiser"
	flexcontroller phoneme range 0 1 "right_lowerer"
	flexcontroller phoneme range 0 1 "left_lowerer"
	flexcontroller phoneme range 0 1 "right_corner_depressor"
	flexcontroller phoneme range 0 1 "left_corner_depressor"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "smile"
	flexcontroller phoneme range 0 1 "blank"

	localvar blank
	%blank = blank
	%right_lid_closer = right_lid_closer
	%left_lid_closer = left_lid_closer
	%blink = blink
	%right_inner_raiser = right_inner_raiser
	%left_inner_raiser = left_inner_raiser
	%right_outer_raiser = right_outer_raiser
	%left_outer_raiser = left_outer_raiser
	%right_lowerer = right_lowerer
	%left_lowerer = left_lowerer
	%right_corner_depressor = right_corner_depressor
	%left_corner_depressor = left_corner_depressor
	%jaw_drop = jaw_drop
	%smile = smile
	%blank = blank
}
$bodygroup "gear"
{
	studio "ss_head1_gear_assault.smd"
	studio "ss_head1_gear_smg.smd"
	studio "ss_head1_gear_shotgun.smd"
	blank
}
$bodygroup "legs"
{
	studio "ss_head1_pants_1.smd"
	studio "ss_head1_pants_2.smd"
}
$bodygroup "badge"
{
	studio "ss_head1_badge.smd"
	blank
}
$bodygroup "torso"
{
	studio "ss_head1_torso.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.637 0 36.119

$eyeposition 0 0 70

$cdmaterials "models\bloocobalt\codmw2\secret_service\"
$cdmaterials "models\bloocobalt\citizens\facemaps\"

$texturegroup "skinfamilies"
{
	{ "secret_service_head_a_col" "eyeball_l"  "eyeball_r"  }
	{ "secret_service_head_b_col" "eyeball_l"  "eyeball_r"  }
	{ "secret_service_head_a_col" "eyeball2_l" "eyeball2_r" }
	{ "secret_service_head_b_col" "eyeball2_l" "eyeball2_r" }
}

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.79 -3.78 0.01 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -5.7 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -11.448 -26.364 -2.684 8.393 26.346 73.339

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31 ""
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25 ""
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62 ""
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5 ""
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75 ""
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45 ""
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5 ""
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72 ""
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16 ""
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18 ""
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72 ""
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5 ""
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7 ""
$skipboneinbbox


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"ss_head1_anim_@ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	ikrule "rhand" release
	ikrule "lhand" release
	ikrule "rfoot" release
	ikrule "lfoot" release
}

$includemodel "player/male_shared.mdl"
$includemodel "police_animations.mdl"
$includemodel "humans/male_shared.mdl"

$collisionjoints "ss_head1_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5


	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -55 90 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -110 120 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -90 55 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -110 125 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_R_Toe0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Toe0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Toe0" z limit -46 46 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -65 95 0

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -115 150 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -150 115 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -140 30 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -360 360 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -360 360 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -360 360 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -360 360 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -360 360 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -360 360 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -65 40 0

	$jointconstrain "ValveBiped.Bip01_L_Toe0" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Toe0" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Toe0" z limit -46 46 0
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.000000"
		"animfrictiontimehold" "0.300000"
	}
	editparams 
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "90.000000"
		"jointmerge" "ValveBiped.Bip01_Pelvis,ValveBiped.Bip01_Spine1"
	}
}
