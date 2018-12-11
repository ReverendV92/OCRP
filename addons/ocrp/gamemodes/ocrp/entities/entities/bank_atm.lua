
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "ATM"
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
		self:SetModel("models/props_unique/atm01.mdl")
		self:PhysicsInit(SOLID_BBOX)
		self:SetMoveType(MOVETYPE_NONE)
		self:SetSolid(SOLID_BBOX)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		self:DrawShadow( false )
		-- self:DropToFloor()
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
