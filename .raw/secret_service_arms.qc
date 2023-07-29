
$ambientboost
$opaque

$ModelName jessev92/characters/secretservice/arms

$pushd arms

$model Arms arms_secretservice

$bodygroup Hands
{
	studio c_hands_white
	studio c_hands_gloves
}

$surfaceprop flesh

$contents solid

$maxeyedeflection 90

$cdmaterials models/jessev92/characters/secretservice
$cdmaterials models/jessev92/characters/bm
$cdmaterials models/weapons/c_arms_citizen

$texturegroup skinfamilies
{
	{
		c_arms_citizen_hands
	}
	{
		c_arms_citizen_hands_black
	}
	{
		c_arms_citizen_infected_hands
	}
}

$cbox 0 0 0 0 0 0

$bbox -2.278 -26.966 -24.178 5.173 26.953 2.589

$definebone "valvebiped.bip01_spine4" "" 0.000006 0 0 -79.749938 -89.999873 -90.000099 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_clavicle" "valvebiped.bip01_spine4" 2.033348 1.000767 1.93766 -73.71188 168.619299 91.480563 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_upperarm" "valvebiped.bip01_l_clavicle" 6.028143 0.000004 0 2.738853 -33.527937 -90.505157 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_forearm" "valvebiped.bip01_l_upperarm" 11.692554 0 0 -0.000007 -3.459062 0.000001 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_hand" "valvebiped.bip01_l_forearm" 11.481676 0 -0.000033 -6.108484 2.532071 90.136744 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger4" "valvebiped.bip01_l_hand" 3.859703 -0.142403 -1.191974 8.682204 -50.431559 -26.822049 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger41" "valvebiped.bip01_l_finger4" 1.312563 -0.000004 -0.000001 -0.000003 -25.194096 0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger42" "valvebiped.bip01_l_finger41" 0.729366 -0.000002 0 -0.000002 -13.9973 0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger3" "valvebiped.bip01_l_hand" 3.942326 0.046769 -0.431443 4.194393 -46.466016 -8.696352 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger31" "valvebiped.bip01_l_finger3" 1.539093 0.000002 0 0 -14.197718 0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger32" "valvebiped.bip01_l_finger31" 1.196322 0 0 0 -24.683141 0.000001 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger2" "valvebiped.bip01_l_hand" 3.88369 -0.046767 0.431443 1.250766 -33.682282 4.921822 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger21" "valvebiped.bip01_l_finger2" 1.719578 -0.000002 0 0.316044 -20.997629 0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger22" "valvebiped.bip01_l_finger21" 1.209183 -0.000002 0 0.176703 -12.398796 0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger1" "valvebiped.bip01_l_hand" 3.859856 -0.137946 1.332466 -2.449396 -30.465178 20.308434 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger11" "valvebiped.bip01_l_finger1" 1.719431 -0.000002 -0.000001 0.233428 -20.798874 0.000003 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger12" "valvebiped.bip01_l_finger11" 1.099672 0 0 0.148743 -13.999131 -0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger0" "valvebiped.bip01_l_hand" 0.806046 -0.348923 1.321258 -38.916045 -45.19599 -70.054232 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger01" "valvebiped.bip01_l_finger0" 1.789782 -0.000002 0 -0.00001 13.0934 0.000007 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_finger02" "valvebiped.bip01_l_finger01" 1.207001 0 0.000002 -0.000012 20.790346 0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_clavicle" "valvebiped.bip01_spine4" 2.033356 1.000772 -1.93761 73.712051 168.618794 -95.596517 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_upperarm" "valvebiped.bip01_r_clavicle" 6.028142 0.000004 0 -0.46209 -33.623806 93.935244 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_forearm" "valvebiped.bip01_r_upperarm" 11.692551 0 -0.000003 -0.000017 -3.45906 0 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_hand" "valvebiped.bip01_r_forearm" 11.481697 0 -0.000002 6.108061 2.532073 -89.664286 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger4" "valvebiped.bip01_r_hand" 3.859674 -0.132568 1.193108 -9.056516 -50.352978 26.713357 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger41" "valvebiped.bip01_r_finger4" 1.312561 0 0.000001 0.000004 -25.191343 0.000017 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger42" "valvebiped.bip01_r_finger41" 0.729367 0 0 0.000007 -13.99569 0.000017 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger3" "valvebiped.bip01_r_hand" 3.942293 0.050322 0.431043 -4.53731 -46.421333 8.598839 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger31" "valvebiped.bip01_r_finger3" 1.539099 -0.000002 0 0.000001 -14.196226 0.000008 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger32" "valvebiped.bip01_r_finger31" 1.196323 0 0 0.000004 -24.680774 0.000005 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger2" "valvebiped.bip01_r_hand" 3.883657 -0.050331 -0.431043 -1.512839 -33.672457 -4.921993 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger21" "valvebiped.bip01_r_finger2" 1.719582 0 0 -0.456877 -20.99524 -0.000002 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger22" "valvebiped.bip01_r_finger21" 1.209185 -0.000002 0 -0.255599 -12.39743 -0.000001 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger1" "valvebiped.bip01_r_hand" 3.859827 -0.148943 -1.331282 2.209727 -30.48142 -20.306714 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger11" "valvebiped.bip01_r_finger1" 1.719427 -0.000002 0.000001 -0.3789 -20.796652 -0.000009 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger12" "valvebiped.bip01_r_finger11" 1.099663 -0.000002 0 -0.241278 -13.998051 -0.000012 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger0" "valvebiped.bip01_r_hand" 0.806017 -0.359836 -1.318334 38.596443 -45.467528 69.981641 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger01" "valvebiped.bip01_r_finger0" 1.789783 0.000002 -0.000002 -0.000006 13.095232 0.000015 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_finger02" "valvebiped.bip01_r_finger01" 1.207001 0 -0.000002 -0.000011 20.792923 0.000009 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_ulna" "valvebiped.bip01_l_forearm" 5.74085 0 -0.000001 -0.000007 -0.000002 0.03942 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_ulna" "valvebiped.bip01_r_forearm" 5.740849 0 0 -0.000019 -0.000001 0.004641 0 0 0 0 0 0
$definebone "valvebiped.bip01_r_wrist" "valvebiped.bip01_r_forearm" 11.481697 0 -0.000002 -0.000019 -0.000001 0.008595 0 0 0 0 0 0
$definebone "valvebiped.bip01_l_wrist" "valvebiped.bip01_l_forearm" 11.481703 0 -0.000001 -0.000007 -0.000002 0.072881 0 0 0 0 0 0

$proceduralbones "c_arms_bones.vrd"

$sequence "idle" {
	arms_secretservice
	fadein 0.2
	fadeout 0.2
	fps 30
}

$popd

$includemodel "weapons/c_arms_animations.mdl"
