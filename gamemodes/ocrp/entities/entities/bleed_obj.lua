
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Bleed"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Bleeding"
ENT.Instructions = "Bleed it out, dig in deeper just to throw it away"
ENT.Category = "OCRP"

if CLIENT then

	ENT.Spawnable = false
	ENT.AdminOnly = false
	ENT.RenderGroup 		= RENDERGROUP_OPAQUE

	ENT.Time = 1

	function ENT:Draw()

	end

	function ENT:Initialize()
		self:Emit()
	end

	function ENT:Emit()
		local effectdata = EffectData()
		effectdata:SetStart( self:GetPos() )
		effectdata:SetOrigin( self:GetPos() )
		effectdata:SetScale( .5 )
		util.Effect('BloodImpact', effectdata)
		

		local Pos1 = self:GetPos()
		local Pos2 = self:GetPos() - self:GetAngles():Up() * -30
		
		util.Decal("Blood", Pos1, Pos2)

		
		self.Time = self.Time + 1
		timer.Simple(self.Time,function() if self:IsValid() then self:Emit() end end )
	end

end
if SERVER then

	function ENT:Initialize()
		self:SetModel("")
		self:SetNoDraw(false)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_FLY)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(0)
		self:DrawShadow( false )	
	end

	function ENT:OnTakeDamage(dmg)
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

	function ENT:Think() 
	end

	function ENT:Touch(hitEnt) 
	end

	function ENT:UpdateTransmitState(Entity)
	end

	function ENT:Use(activator,caller)
	end

end
