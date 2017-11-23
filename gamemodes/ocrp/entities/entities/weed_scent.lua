
AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Weed Scent"
ENT.Author = "OCRP"
ENT.Contact = "V92"
ENT.Purpose = "Smell like ass"
ENT.Instructions = "Stay Away from K9 Units"
ENT.Category = "OCRP"

if CLIENT then

	ENT.Spawnable			= false
	ENT.AdminOnly		= false
	ENT.RenderGroup 		= RENDERGROUP_OPAQUE

	function ENT:Draw()

	end

	function ENT:Initialize()
		self:Emit()
		timer.Simple(math.random(10,30),function() if self:IsValid() then self:Emit() end end )
	end

	function ENT:Emit()
		local effectdata = EffectData() 
			effectdata:SetOrigin( self:LocalToWorld( Vector(0,0,self:OBBMins().z) ) ) 
			effectdata:SetAngles( self:GetForward() ) 
			effectdata:SetScale( .9 ) 

		self.SmokeTimer = self.SmokeTimer or 0

		if ( self.SmokeTimer > CurTime() ) then return end
		
		self.SmokeTimer = CurTime() + 0.0001

		local vOffset = self:LocalToWorld( Vector(0,0,self:OBBMins().z) )

		local vNormal = (vOffset - self:GetPos()):GetNormalized()

		local emitter = ParticleEmitter( vOffset )
		
			local particle = emitter:Add( "particles/smokey", vOffset )
			particle:SetVelocity(VectorRand()*12)
			particle:SetGravity(Vector(5,5,3))
			particle:SetDieTime(math.Rand(2,2.5))
			particle:SetStartAlpha(math.Rand(40,50))
			particle:SetEndAlpha(0)
			particle:SetStartSize(math.Rand(9,14))
			particle:SetEndSize(math.Rand(35,45))
			particle:SetRoll(math.Rand(200,300))
			particle:SetRollDelta(math.Rand(-1,1))
			particle:SetColor(200,255,200)
			particle:SetAirResistance(5)
					
		emitter:Finish()
		timer.Simple(math.random(10,30),function() if self:IsValid() then self:Emit() end end )
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
