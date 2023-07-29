
$ambientboost
$mostlyopaque

$ModelName jessev92/characters/secretservice/male_03_player

$pushd head

$model "Secret Service" cia_head {
	$include "head/flexes.qci"
}

$popd

$pushd body

$bodygroup Shirt 
{

	studio torso_white
	studio torso_white_proxy

}

$bodygroup Pants
{
	studio pants_black
	studio pants_blue
}

$popd

$pushd gear

$bodygroup Gear
{
	blank
	studio assault
	studio shotgun
	studio smg
}
$bodygroup Badge
{
	studio badge
	blank
}

$popd

$include "humans/male/ragdoll.qci"
$include "humans/male/hitbox.qci"
$include "humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"

$include "optimization_ss_male03.qci"

$surfaceprop flesh

$eyeposition 0 0 70

$cdmaterials models/jessev92/characters/secretservice
$cdmaterials models/jessev92/characters/eyes
$cdmaterials models/weapons/c_arms_citizen

$texturegroup skinfamilies
{

	{ "secretservice_facemap1" , "eyeball_l" , "eyeball_r" }
	{ "secretservice_facemap1" , "eyeball_l_blue" , "eyeball_r_blue" }
	{ "secretservice_facemap1" , "eyeball_l_green" , "eyeball_r_green" }
	{ "secretservice_facemap2" , "eyeball_l" , "eyeball_r" }
	{ "secretservice_facemap2" , "eyeball_l_blue" , "eyeball_r_blue" }
	{ "secretservice_facemap2" , "eyeball_l_green" , "eyeball_r_green" } 
	// { "secretservice_facemap3" }
	
}

$includemodel "m_anm.mdl"
