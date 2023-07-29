
AddCSLuaFile( )

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Hostile Secret Service"
ENT.Author = "V92"
ENT.Information = ""
ENT.Category = "NPCGroups"
ENT.Spawnable = false
ENT.AdminOnly = false

local WeaponTbl = { "weapon_smg1" , "weapon_ar2" , "weapon_shotgun" }
local ModelTbl = { "models/jessev92/characters/secretservice/male_01_npccmb.mdl", "models/jessev92/characters/secretservice/male_02_npccmb.mdl" }

if SERVER then

	function ENT:Initialize( )

		if ConVarExists( "npcg_cmbelite_ar2altdrop" ) and GetConVarNumber( "npcg_cmbelite_ar2altdrop" ) != 0 then self.ar2AltDrop = 393732 else self.ar2AltDrop = 0 end
		if ConVarExists( "npcg_weapondrop" ) and GetConVarNumber( "npcg_weapondrop" ) != 0 then self.weaponNum = 8192 else self.weaponNum = 0 end
		if ConVarExists( "npcg_ignorepushing" ) and GetConVarNumber( "npcg_ignorepushing" ) != 0 then self.pushNum = 16384 else self.pushNum = 0 end
		if ConVarExists( "npcg_fade_corpse" ) and GetConVarNumber( "npcg_fade_corpse" ) != 0 then self.fadeNum = 512 else self.fadeNum = 0 end
		if ConVarExists( "npcg_longvision" ) and GetConVarNumber( "npcg_longvision" ) != 0 then self.longNum = 256 else self.longNum = 0 end

		self.kvNum = 0

		self.SecretService1 = ents.Create( "npc_combine_s" )
		self.SecretService1:SetPos( self:GetPos( ) )
		self.SecretService1:SetModel( table.Random( ModelTbl ) )
		self.SecretService1:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService1:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_energyballcount" ) )
		self.SecretService1:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
		self.SecretService1:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService1:Spawn( )
		self.SecretService1:Activate( )
		self.SecretService1:SetSchedule( SCHED_IDLE_WANDER )

		if GetConVarNumber( "npcg_squad_Combine" ) != 0 then

			self.SecretService1:SetKeyValue( "SquadName" , "Combine" )

		end

		if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then

			self.SecretService1:SetKeyValue( "wakesquad" , 1 )

		end

		if GetConVarNumber( "npcg_accuracy_combine" ) >= 4 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 3 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 2 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 1 then

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
				if self.SecretService1:IsValid( ) then undo.AddEntity( self.SecretService1 ) end
				undo.SetCustomUndoText( "Undone " .. self.PrintName )
				undo.SetPlayer( self.Owner )
			undo.Finish( )
			self:Remove( )

		end )

	end

end
