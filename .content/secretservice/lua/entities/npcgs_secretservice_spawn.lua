
AddCSLuaFile( )

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Secret Service Spawner"
ENT.Author = "V92"
ENT.Information = ""
ENT.Category = "NPCGroups"
ENT.Spawnable = false
ENT.AdminOnly = false

local WeaponTbl = { "weapon_pistol" , "weapon_357" , "weapon_smg1" , "weapon_ar2" , "weapon_shotgun" }
local ModelTbl = { "models/jessev92/characters/secretservice/male_01_npccit.mdl", "models/jessev92/characters/secretservice/male_02_npccit.mdl" }

if SERVER then

	function ENT:Initialize( )

		self:SetModel( "models/props_c17/oildrum001.mdl" )
		self:DrawShadow( false )
		self:SetNoDraw( true )
		self:SetNotSolid( true )

		local medicDiceRoll = math.random( 1 , GetConVarNumber( "npcg_medicchance" ) )
		if medicDiceRoll == 1 then self.medicChance = 131072 else self.medicChance = 0 end

		local rebSupplyDiceRoll = math.random( 1 , GetConVarNumber( "npcg_rebelresupplychance" ) )
		if rebSupplyDiceRoll == 1 then self.resupplyChance = 524288 else self.resupplyChance = 0 end

		if ConVarExists( "npcg_weapondrop" ) and GetConVarNumber( "npcg_weapondrop" ) != 0 then self.weaponNum = 8192 else self.weaponNum = 0 end
		if ConVarExists( "npcg_ignorepushing" ) and GetConVarNumber( "npcg_ignorepushing" ) != 0 then self.pushNum = 16384 else self.pushNum = 0 end
		if ConVarExists( "npcg_fade_corpse" ) and GetConVarNumber( "npcg_fade_corpse" ) != 0 then self.fadeNum = 512 else self.fadeNum = 0 end
		if ConVarExists( "npcg_longvision" ) and GetConVarNumber( "npcg_longvision" ) != 0 then self.longNum = 256 else self.longNum = 0 end

		self.kvNum = 0

		self.SecretService1 = ents.Create( "npc_citizen" )
		self.SecretService1:SetPos( self:GetPos( ) )
		self.SecretService1:SetKeyValue( "citizentype" , 4 )
		self.SecretService1:SetModel( table.Random( ModelTbl ) )
		self.SecretService1:SetSkin( math.random( 0 , 14 ) )
		self.SecretService1:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService1:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService1:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService1:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService1:SetKeyValue( "DontPickupWeapons" , GetConVarNumber( "npcg_pickupguns" ) )
		self.SecretService1:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService1:SetKeyValue( "Expression Type" , "Random" )
		self.SecretService1:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.resupplyChance + self.medicChance ) )
		self.SecretService1:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_human" ) )
		self.SecretService1:Spawn( )
		self.SecretService1:Activate( )
		self.SecretService1:SetSchedule( SCHED_IDLE_WANDER )

		if GetConVarNumber( "npcg_squad_human" ) != 0 then

			self.SecretService1:SetKeyValue( "SquadName" , "Human" )

		end

		if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then

			self.SecretService1:SetKeyValue( "wakesquad" , 1 )

		end

		if GetConVarNumber( "npcg_accuracy_rebel" ) >= 4 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )

		elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 3 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 2 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 1 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )

		else

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )

		end

		if ConVarExists( "npcg_randomyaw" ) and GetConVarNumber( "npcg_randomyaw" ) == 0 then

			self.SecretService1:SetAngles( Angle( 0 , 0 , 0 ) )

		else

			self.SecretService1:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )

		end

		timer.Simple( 0 , function( )

			undo.Create( self.PrintName )

			undo.AddEntity( self )

			if self.SecretService1:IsValid( ) then undo.AddEntity( self.SecretService1 ) end

			undo.SetCustomUndoText( "Undone " .. self.PrintName )
			undo.SetPlayer( self.Owner )

			undo.Finish( )

		end )

	end

	function ENT:Think( )

		if !self.SecretService1:IsValid( ) then 	

			self.SecretService1 = ents.Create( "npc_citizen" )
			self.SecretService1:SetPos( self:GetPos( ) )
			self.SecretService1:SetKeyValue( "citizentype" , 4 )
			self.SecretService1:SetModel( table.Random( ModelTbl ) )
			self.SecretService1:SetSkin( math.random( 0 , 14 ) )
			self.SecretService1:SetBodygroup( 2 , math.random( 0 , 1 ) )
			self.SecretService1:SetBodygroup( 3 , math.random( 1 , 3 ) )
			self.SecretService1:SetBodygroup( 5 , math.random( 0 , 5 ) )
			self.SecretService1:SetBodygroup( 6 , math.random( 0 , 1 ) )
			self.SecretService1:SetKeyValue( "DontPickupWeapons" , GetConVarNumber( "npcg_pickupguns" ) )
			self.SecretService1:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
			self.SecretService1:SetKeyValue( "Expression Type" , "Random" )
			self.SecretService1:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.resupplyChance + self.medicChance ) )
			self.SecretService1:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_human" ) )
			self.SecretService1:Spawn( )
			self.SecretService1:Activate( )
			self.SecretService1:SetSchedule( SCHED_IDLE_WANDER )

			if GetConVarNumber( "npcg_squad_human" ) != 0 then

				self.SecretService1:SetKeyValue( "SquadName" , "Human" )

			end

			if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then

				self.SecretService1:SetKeyValue( "wakesquad" , 1 )

			end

			if GetConVarNumber( "npcg_accuracy_rebel" ) >= 4 then

				self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )

			elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 3 then

				self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )

			elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 2 then

				self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )

			elseif GetConVarNumber( "npcg_accuracy_rebel" ) == 1 then

				self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )

			else

				self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )

			end

			if ConVarExists( "npcg_randomyaw" ) and GetConVarNumber( "npcg_randomyaw" ) == 0 then

				self.SecretService1:SetAngles( Angle( 0 , 0 , 0 ) )

			else

				self.SecretService1:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )

			end

		end

	end

end
