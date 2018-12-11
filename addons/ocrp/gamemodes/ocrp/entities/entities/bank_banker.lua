
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Bank Teller"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Cashing Checks"
ENT.Instructions = "Use Me"
ENT.Category = "OCRP"


if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false

	function ENT:Initialize()
	end

	function ENT:Draw()
		self:DrawModel()
	end

end

if SERVER then

	function ENT:Initialize()

		self:SetModel("models/player/gman_high.mdl")

		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_NONE)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:DrawShadow( true )
		self:DropToFloor()
		
		self:SetSequence( "menu_combine" )

	end

	function ENT:KeyValue(key,value)
	end

	function ENT:SetType(strType)
	end

	function ENT:Use(activator, caller)
		if activator:IsPlayer() &&  !activator.CantUse then
			net.Start("OCRP_Bank")
			net.Send(activator)
			activator.CantUse = true
			timer.Simple(0.3, function()  activator.CantUse = false end)
		end
	end

end
