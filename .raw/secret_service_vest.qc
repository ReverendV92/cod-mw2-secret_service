
$ambientboost
$mostlyopaque

$origin 0 0 45
$illumposition 0 0 45

$ModelName jessev92/items/mw2/secretservice_vest

$pushd body

$sequence idle vest

$bodygroup Vest
{
	studio vest
	studio torso_white
	studio torso_white_proxy
	studio torso_black
	studio torso_black_proxy
	blank
}

$bodygroup Pants
{
	blank
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

$surfaceprop carpet

$contents solid

$cdmaterials models/jessev92/characters/secretservice

$hboxset default