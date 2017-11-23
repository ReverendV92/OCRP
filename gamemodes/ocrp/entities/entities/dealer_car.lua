
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Car Dealer"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Sell Cars"
ENT.Instructions = "Talk to the pot. Now Touch it. Now lick it. Shhhh. It's okay. You did good."
ENT.Category = "OCRP"


if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	function ENT:Initialize()
	end

	function ENT:Draw()
		return false
	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel("models/props_c17/pottery09a.mdl")
		self:PhysicsInit(SOLID_BBOX)
		self:SetMoveType(0)
		self:SetSolid(SOLID_BBOX)
		self:SetUseType(SIMPLE_USE)
	end

	function ENT:KeyValue(key,value)
	end

	function ENT:SetType(strType)
	end

	function ENT:Use(activator, caller)
		print(self.Car)
		umsg.Start("store_buycar", activator)
			umsg.String(self.Car)
		umsg.End()
	end

end