
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Vending Machine"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Fuel Up"
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
		self:SetModel("models/props/cs_office/vending_machine.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self.OwnerType = "Mayor"
	end

	function ENT:KeyValue(key,value)
	end

	function ENT:SetType(strType)
	end

	function ENT:Use(ply, caller)
		if ply:IsPlayer() && !ply.CantUse then
			net.Start("OCRP_CreateChat")
			net.WriteString("30")
			net.WriteInt(1, 2)
			net.WriteString(tr.Entity:GetModel())
			net.Send(ply)				
			ply.CantUse = true
			timer.Simple(0.3, function() ply.CantUse = false end)
		end
	end

end
