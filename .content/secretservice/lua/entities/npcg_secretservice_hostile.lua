
AddCSLuaFile( )

if not ConVarExists( "npcg_grenadecount" ) then CreateConVar(	"npcg_grenadecount" , 				"5" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_cmbelite_ar2altdrop" ) then CreateConVar(	"npcg_cmbelite_ar2altdrop" , "0" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_wakeradius_cmb" ) then CreateConVar(	"npcg_wakeradius_cmb" , "200" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_combine_tacticalvar" ) then CreateConVar(	"npcg_combine_tacticalvar" , "1" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_wakeradius_cmb" ) then CreateConVar(	"npcg_wakeradius_cmb" , "200" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_squad_combine" ) then CreateConVar(	"npcg_squad_combine" , 				"1" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_accuracy_combine" ) then CreateConVar(	"npcg_accuracy_combine" , "4" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Hostile Secret Service Team"
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
		self.SecretService1:SetSkin( math.random( 0 , 14 ) )
		self.SecretService1:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService1:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService1:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService1:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService1:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService1:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_grenadecount" ) )
		self.SecretService1:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
		self.SecretService1:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService1:Spawn( )
		self.SecretService1:Activate( )

		self.SecretService2 = ents.Create( "npc_combine_s" )
		self.SecretService2:SetPos( self:GetPos( ) + self:GetRight( ) * 50 + self:GetForward( ) * 50 )
		self.SecretService2:SetModel( table.Random( ModelTbl ) )
		self.SecretService2:SetSkin( math.random( 0 , 14 ) )
		self.SecretService2:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService2:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService2:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService2:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService2:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService2:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_grenadecount" ) )
		self.SecretService2:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum ) )
		self.SecretService2:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService2:Spawn( )
		self.SecretService2:Activate( )

		self.SecretService3 = ents.Create( "npc_combine_s" )
		self.SecretService3:SetPos( self:GetPos( ) + self:GetRight( ) * -50 + self:GetForward( ) * -50 )
		self.SecretService3:SetModel( table.Random( ModelTbl ) )
		self.SecretService3:SetSkin( math.random( 0 , 14 ) )
		self.SecretService3:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService3:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService3:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService3:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService3:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService3:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_grenadecount" ) )
		self.SecretService3:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum ) )
		self.SecretService3:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService3:Spawn( )
		self.SecretService3:Activate( )

		self.SecretService4 = ents.Create( "npc_combine_s" )
		self.SecretService4:SetPos( self:GetPos( ) + self:GetForward( ) * -50 + self:GetRight( ) * 50 )
		self.SecretService4:SetModel( table.Random( ModelTbl ) )
		self.SecretService4:SetSkin( math.random( 0 , 14 ) )
		self.SecretService4:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService4:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService4:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService4:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService4:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService4:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_grenadecount" ) )
		self.SecretService4:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.ar2AltDrop ) )
		self.SecretService4:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService4:Spawn( )
		self.SecretService4:Activate( )

		self.SecretService5 = ents.Create( "npc_combine_s" )
		self.SecretService5:SetPos( self:GetPos( ) + self:GetForward( ) * 50 + self:GetRight( ) * -50 )
		self.SecretService5:SetModel( table.Random( ModelTbl ) )
		self.SecretService5:SetSkin( math.random( 0 , 14 ) )
		self.SecretService5:SetBodygroup( 2 , math.random( 0 , 1 ) )
		self.SecretService5:SetBodygroup( 3 , math.random( 1 , 3 ) )
		self.SecretService5:SetBodygroup( 5 , math.random( 0 , 5 ) )
		self.SecretService5:SetBodygroup( 6 , math.random( 0 , 1 ) )
		self.SecretService5:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.SecretService5:SetKeyValue( "NumGrenades" , GetConVarNumber( "npcg_grenadecount" ) )
		self.SecretService5:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum ) )
		self.SecretService5:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_cmb" ) )
		self.SecretService5:Spawn( )
		self.SecretService5:Activate( )

		if GetConVarNumber( "npcg_squad_combine" ) != 0 then

			self.SecretService1:SetKeyValue( "SquadName" , "Combine" )
			self.SecretService2:SetKeyValue( "SquadName" , "Combine" )
			self.SecretService3:SetKeyValue( "SquadName" , "Combine" )
			self.SecretService4:SetKeyValue( "SquadName" , "Combine" )
			self.SecretService5:SetKeyValue( "SquadName" , "Combine" )

		end

		if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then

			self.SecretService1:SetKeyValue( "wakesquad" , 1 )
			self.SecretService2:SetKeyValue( "wakesquad" , 1 ) 
			self.SecretService3:SetKeyValue( "wakesquad" , 1 ) 
			self.SecretService4:SetKeyValue( "wakesquad" , 1 ) 
			self.SecretService5:SetKeyValue( "wakesquad" , 1 )

		end

		if GetConVarNumber( "npcg_combine_tacticalvar" ) > 1 then

			self.SecretService1:SetKeyValue( "tacticalvariant" , 2 )
			self.SecretService2:SetKeyValue( "tacticalvariant" , 2 )
			self.SecretService3:SetKeyValue( "tacticalvariant" , 2 )
			self.SecretService4:SetKeyValue( "tacticalvariant" , 2 )
			self.SecretService5:SetKeyValue( "tacticalvariant" , 2 )

		elseif GetConVarNumber( "npcg_combine_tacticalvar" ) != 0 then

			self.SecretService1:SetKeyValue( "tacticalvariant" , 1 )
			self.SecretService2:SetKeyValue( "tacticalvariant" , 1 )
			self.SecretService3:SetKeyValue( "tacticalvariant" , 1 )
			self.SecretService4:SetKeyValue( "tacticalvariant" , 1 )
			self.SecretService5:SetKeyValue( "tacticalvariant" , 1 )

		else

			self.SecretService1:SetKeyValue( "tacticalvariant" , 0 )
			self.SecretService2:SetKeyValue( "tacticalvariant" , 0 )
			self.SecretService3:SetKeyValue( "tacticalvariant" , 0 )
			self.SecretService4:SetKeyValue( "tacticalvariant" , 0 )
			self.SecretService5:SetKeyValue( "tacticalvariant" , 0 )

		end

		if GetConVarNumber( "npcg_accuracy_combine" ) >= 4 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
			self.SecretService2:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
			self.SecretService3:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
			self.SecretService4:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
			self.SecretService5:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 3 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )
			self.SecretService2:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )
			self.SecretService3:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )
			self.SecretService4:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )
			self.SecretService5:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_VERY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 2 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )
			self.SecretService2:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )
			self.SecretService3:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )
			self.SecretService4:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )
			self.SecretService5:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_GOOD )

		elseif GetConVarNumber( "npcg_accuracy_combine" ) == 1 then

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )
			self.SecretService2:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )
			self.SecretService3:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )
			self.SecretService4:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )
			self.SecretService5:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_AVERAGE )

		else

			self.SecretService1:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )
			self.SecretService2:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )
			self.SecretService3:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )
			self.SecretService4:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR )
			self.SecretService5:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_POOR ) 	
		end

		if ConVarExists( "npcg_randomyaw" ) and GetConVarNumber( "npcg_randomyaw" ) == 0 then

			self.SecretService1:SetAngles( Angle( 0 , 0 , 0 ) )
			self.SecretService2:SetAngles( Angle( 0 , 0 , 0 ) )
			self.SecretService3:SetAngles( Angle( 0 , 0 , 0 ) ) 
			self.SecretService4:SetAngles( Angle( 0 , 0 , 0 ) ) 
			self.SecretService5:SetAngles( Angle( 0 , 0 , 0 ) )

		else

			self.SecretService1:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )
			self.SecretService2:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )
			self.SecretService3:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) ) 
			self.SecretService4:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) ) 
			self.SecretService5:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )

		end

		if GetConVarNumber( "npcg_patrol_toggle" ) != 0 then self.SecretService1:SetSchedule( SCHED_PATROL_WALK ) end
		if GetConVarNumber( "npcg_patrol_toggle" ) != 0 then self.SecretService2:SetSchedule( SCHED_PATROL_WALK ) end
		if GetConVarNumber( "npcg_patrol_toggle" ) != 0 then self.SecretService3:SetSchedule( SCHED_PATROL_WALK ) end
		if GetConVarNumber( "npcg_patrol_toggle" ) != 0 then self.SecretService4:SetSchedule( SCHED_PATROL_WALK ) end
		if GetConVarNumber( "npcg_patrol_toggle" ) != 0 then self.SecretService5:SetSchedule( SCHED_PATROL_WALK ) end
		
		timer.Simple( 0 , function( )
			undo.Create( self.PrintName )
				if self.SecretService1:IsValid( ) then undo.AddEntity( self.SecretService1 ) end
				if self.SecretService2:IsValid( ) then undo.AddEntity( self.SecretService2 ) end
				if self.SecretService3:IsValid( ) then undo.AddEntity( self.SecretService3 ) end
				if self.SecretService4:IsValid( ) then undo.AddEntity( self.SecretService4 ) end
				if self.SecretService5:IsValid( ) then undo.AddEntity( self.SecretService5 ) end
				undo.SetCustomUndoText( "Undone " .. self.PrintName )
				undo.SetPlayer( self.Owner)
			undo.Finish( )
			self:Remove( )

		end )

	end

end
