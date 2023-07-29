
$ambientboost
$mostlyopaque

$ModelName jessev92/characters/secretservice/male_02_player
$model "Secret Service" bms/head_male3 {
$include "bms/flexes.qci"

$bodygroup Shirt 
{

	studio body/torso_black
	studio body/torso_black_proxy

}

$bodygroup Pants
{
	studio body/pants_black
	studio body/pants_blue
}

$bodygroup Gear
{
	blank
	studio gear/assault
	studio gear/shotgun
	studio gear/smg
}
$bodygroup Badge
{
	studio gear/badge
	blank
}

$bodygroup Glasses
{
	blank
	studio bms/glasses
	studio bms/glasses_02
	studio bms/glasses_emo
	studio bms/glasses_halfrims
	studio bms/glasses_round
}

$bodygroup Pencil
{
	blank
	studio bms/ear_pencil
}

$bodygroup Cigar
{
	blank
	studio bms/cigar
}

$include "humans/male/ragdoll.qci"
$include "humans/male/hitbox.qci"
$include "humans/standardhierarchy.qci"
$include "humans/standardikchains.qci"
$include "humans/male/commonbones.qci"
$proceduralbones "humans/male.vrd"

$include "optimization_ss.qci"

$surfaceprop "flesh"

$cdmaterials models/jessev92/characters/secretservice
$cdmaterials models/jessev92/characters/bm
$cdmaterials models/weapons/c_arms_citizen

$texturegroup skinfamilies
{

	//	WHITES!
	// { "base_m_d" , "body_upper_white" },
 	// { "base_m_d2" , "body_upper_white"  },
 	// { "base_m_05_d" , "body_upper_white"  },
 	// { "base_m_06_d" , "body_upper_white"  },
 	// { "base_m_07_d" , "body_upper_white"  },
 	// { "base_m_08_d" , "body_upper_white"  },
 	// { "base_m_09_d" , "body_upper_white"  },
 	// { "base_m_10_d" , "body_upper_white"  },
 	// { "base_m_11_d" , "body_upper_white"  },	//geezer1
 	// { "base_m_12_d" , "body_upper_white"  },
 	// { "base_m_13_d" , "body_upper_white"  },	//geezer2
 	// { "base_m_14_d" , "body_upper_white"  },	//asianmofo
 	// { "base_m_15_d" , "body_upper_white"  },
 	// { "base_m_17_d" , "body_upper_white"  },
 	// { "base_m_19_d" , "body_upper_white"  },
	
	// BLACKS!
 	{	"base_m_03_d.vmt" , "body_upper_black" }
 	{	"base_m_04_d.vmt" , "body_upper_black" }
 	{	"base_m_16_d.vmt" , "body_upper_black" }
	{	"base_m_18_d.vmt" , "body_upper_black" }
 	{	"base_m_20_d.vmt" , "body_upper_black" }
 	{	"base_m_21_d.vmt" , "body_upper_black" }
 	{	"base_m_22_d.vmt" , "body_upper_black" }
	
}

$includemodel "m_anm.mdl"
