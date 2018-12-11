
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Molotov Cocktease"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Poor man's flamethrower"
ENT.Instructions = "Throw me"
ENT.Category = "OCRP"

if CLIENT then

	function ENT:Draw()

		self:DrawModel()
		
	end

end

if SERVER then

	function ENT:Initialize()
		self:SetModel('models/props_junk/garbage_glassbottle003a.mdl')

		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		
		self:SetAngles(Angle(math.random(0, 360), math.random(0, 360), math.random(0, 360)))
		
		local Phys = self:GetPhysicsObject()
		
		if !Phys or !Phys:IsValid() then return end
		
		self:GetPhysicsObject():Wake()
		
		self.What = CurTime()
	end

	function ENT:Think()
		local Trace = {}
		Trace.start = self:GetPos()
		Trace.endpos = self:GetPos() + self:GetVelocity() * 5
		Trace.filter = self
		
		if self.What + 10 < CurTime() then return false end
		
		local TR = util.TraceLine(Trace)
		
		if TR.Hit and TR.HitPos:Distance(self:GetPos()) < 75 then
			EmitSound("physics/glass/glass_cup_break" .. math.random(1, 2) .. ".wav", self:GetPos(), self:EntIndex(), CHAN_ITEM, 1, 150, 0, 150)
			
			local Fire = ents.Create('prop_fire')
			Fire:SetPos(TR.HitPos)
			Fire:Spawn()
			
			self:Remove()
		end
	end

end
