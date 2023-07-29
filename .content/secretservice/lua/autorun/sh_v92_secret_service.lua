
AddCSLuaFile( )

player_manager.AddValidModel( "Secret Service Male 1" , "models/jessev92/characters/secretservice/male_01_player.mdl" )
player_manager.AddValidHands( "Secret Service Male 1" , "models/jessev92/characters/secretservice/arms.mdl" , 0 , 0 )
list.Set( "PlayerOptionsAnimations" , "Secret Service Male 1" , { "menu_gman" , "menu_combine" , "pose_standing_01" , "pose_standing_02" } )

player_manager.AddValidModel( "Secret Service Male 2" , "models/jessev92/characters/secretservice/male_02_player.mdl" )
player_manager.AddValidHands( "Secret Service Male 2" , "models/jessev92/characters/secretservice/arms.mdl" , 1 , 0 )
list.Set( "PlayerOptionsAnimations" , "Secret Service Male 2" , { "menu_gman" , "menu_combine" , "pose_standing_01" , "pose_standing_02" } )

player_manager.AddValidModel( "Secret Service Male 3" , "models/jessev92/characters/secretservice/male_03_player.mdl" )
player_manager.AddValidHands( "Secret Service Male 3" , "models/jessev92/characters/secretservice/arms.mdl" , 0 , 0 )
list.Set( "PlayerOptionsAnimations" , "Secret Service Male 3" , { "menu_gman" , "menu_combine" , "pose_standing_01" , "pose_standing_02" } )

if SERVER then

	-- resource.AddWorkshop( "" ) --
	resource.AddWorkshop( "851168781" ) -- V92 Character Core

end

local Category = "NPCG: Other"
list.Set( "NPC" , "npcg_secretservice" , { ["Name"] = "USSS Team" , ["Class"] = "npcg_secretservice" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcg_secretservice_spawn" , { ["Name"] = "USSS Team Spawner" , ["Class"] = "npcg_secretservice_spawn" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcg_secretservice_hostile" , { ["Name"] = "Hostile USSS Team" , ["Class"] = "npcg_secretservice_hostile" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcg_secretservice_hostile_spawn" , { ["Name"] = "Hostile USSS Team Spawner" , ["Class"] = "npcg_secretservice_hostile_spawn" , ["Category"] = Category } ) 

list.Set( "NPC" , "npcgs_secretservice" , { ["Name"] = "USSS" , ["Class"] = "npcgs_secretservice" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcgs_secretservice_spawn" , { ["Name"] = "USSS Spawner" , ["Class"] = "npcgs_secretservice_spawn" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcgs_secretservice_hostile" , { ["Name"] = "Hostile USSS" , ["Class"] = "npcgs_secretservice_hostile" , ["Category"] = Category } ) 
list.Set( "NPC" , "npcgs_secretservice_hostile_spawn" , { ["Name"] = "Hostile USSS Spawner" , ["Class"] = "npcgs_secretservice_hostile_spawn" , ["Category"] = Category } ) 
