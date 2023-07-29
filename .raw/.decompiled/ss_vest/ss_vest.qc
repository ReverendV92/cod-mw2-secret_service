// Created by Crowbar 0.62

$modelname "bloocobalt\codmw2\ss_vest.mdl"

$bodygroup "protection"
{
	studio "ss_vest_vest.smd"
}
$bodygroup "gear"
{
	blank
	studio "ss_vest_gear_assault.smd"
	studio "ss_vest_gear_smg.smd"
	studio "ss_vest_gear_shotgun.smd"
}
$bodygroup "badge"
{
	blank
	studio "ss_vest_badge.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.637 0 36.119

$eyeposition 0 0 70

$cdmaterials "models\bloocobalt\codmw2\secret_service\"
$cdmaterials "models\bloocobalt\citizens\facemaps\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.79 -3.78 0.01 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1 -5.7 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -11.448 -23.431 4.279 8.393 23.426 66.065

$hboxset "default"
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5 ""
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7 ""


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$sequence "ragdoll" {
	"ss_vest_anim_@ragdoll.smd"
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

$collisionjoints "ss_vest_physics.smd"
{
	$mass 30
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"


	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -65 95 0
}
