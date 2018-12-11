
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Money Spawn"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Grab it while ya' can lads!"
ENT.Instructions = "Place Me"
ENT.Category = "OCRP"

if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	ENT.RenderGroup = RENDERGROUP_OPAQUE

	function ENT:Draw()
		self:DrawModel()
	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel("models/props/cs_assault/moneypallet.mdl")
		self:SetColor(Color(255,255,255,55))
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		self:DropToFloor()
	end
	function ENT:StartTouch(ent) 
	end
	function ENT:EndTouch(ent)
	end
	function ENT:AcceptInput(name,activator,caller)
	end
	function ENT:KeyValue(key,value)
	end
	function ENT:OnRemove()
	end
	function ENT:OnRestore()
	end
	function ENT:PhysicsCollide(data,physobj)
	end
	function ENT:PhysicsSimulate(phys,deltatime) 
	end
	function ENT:PhysicsUpdate(phys) 
	end
	function ENT:Touch(hitEnt) 
	end
	function ENT:UpdateTransmitState(Entity)
	end
	function ENT:Use(activator,caller)
		if !activator:IsPlayer() then return end
		if activator.CantUse then return end
		activator.CantUse = true
		timer.Simple(0.3, function() activator.CantUse = false end)

		if activator:Team() == CLASS_MAYOR then
			self:Remove()
		end
	end

end
